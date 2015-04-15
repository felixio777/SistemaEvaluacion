/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Model;

import Connection.ConnectionPool;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

/**
 *
 * @author felix
 */
public class Empleado {
    private String noEmpleado;
    private String contraseña;
    private int idEmpleado;

    /**
     * @return the noEmpleado
     */
    public String getNoEmpleado() {
        return noEmpleado;
    }

    /**
     * @param noEmpleado the noEmpleado to set
     */
    public void setNoEmpleado(String noEmpleado) {
        this.noEmpleado = noEmpleado;
    }

    /**
     * @return the contraseña
     */
    public String getContraseña() {
        return contraseña;
    }

    /**
     * @param contraseña the contraseña to set
     */
    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
    public boolean isEmpleado(String empleado, String contraseña)
    {
        boolean isEmpleado=false;
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call isUser(?,?)}";
            cs = con.prepareCall(query);
            cs.setString(1,empleado);
            cs.setString(2,contraseña);
            ResultSet resultSet = cs.executeQuery();
            Vector vector=new Vector();
            while(resultSet.next()) 
            {
                isEmpleado=true;
                
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return isEmpleado;
    }
    public Vector getGrupos()
    {
        Vector vector=new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getGrupos(?)}";
            cs = con.prepareCall(query);
            cs.setString(1,noEmpleado);
            ResultSet resultSet = cs.executeQuery();
            while(resultSet.next()) 
            {
                vector.add(resultSet.getInt("id"));
                vector.add(resultSet.getInt("idGrupo"));
                vector.add(resultSet.getInt("grupo"));
                vector.add(resultSet.getString("materia"));
                vector.add(resultSet.getInt("idMateria"));
            }
        } catch (Exception ex)
        {
            ex.printStackTrace();
            return vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return vector;
        
    }
    public static int getEmpleadoByNoEmpleado(String noEmpleado)
    {
        int idEmpleado=0;
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            
            String query = "{call getEmpleadoByNoEmpleado(?)}";
            cs = con.prepareCall(query);
            cs.setString(1,noEmpleado);
            ResultSet resultSet = cs.executeQuery();
            while(resultSet.next()) 
            {
                idEmpleado=resultSet.getInt("idEmpleado");
                
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return 0;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return idEmpleado;
    }

    public  void addRel_Mat_Grupo(int idGrupo,int idMateria) 
    {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addRel_Mat_Grupo(?,?,?)}";
            cs = con.prepareCall(query);
            //Grupo materia empleado
            cs.setInt(1, idGrupo);
            cs.setInt(2,idMateria);
            cs.setInt(3, getIdEmpleado());
            cs.execute();
        } catch (SQLException ex) 
        {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
    }
    
    public void addRel_Mat_Gru_Emp_Hora(int idDia,int idHora)
    {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addRel_Mat_Gru_Emp_Hora(?,?,?)}";
            cs = con.prepareCall(query);
            //Grupo materia empleado
            cs.setInt(1, getLastRel_Mat_Gru());
            cs.setInt(2,idDia);
            cs.setInt(3, idHora);
            cs.execute();
        } catch (SQLException ex) 
        {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
    }
        
    public static int getLastRel_Mat_Gru() {
        int lastRelacion = 0;
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getLastRel_Mat_Gru()}";
            cs = con.prepareCall(query);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) {
                lastRelacion = resultSet.getInt("idRel_Mat_Gru");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return 0;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return lastRelacion;

    }
    /**
     * @return the idEmpleado
     */
    public int getIdEmpleado() {
        return idEmpleado;
    }

    /**
     * @param idEmpleado the idEmpleado to set
     */
    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }
}
