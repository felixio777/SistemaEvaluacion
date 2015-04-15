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
import java.util.Vector;

/**
 *
 * @author felix
 */
public class Alumno {

    private String nombre;
    private String paterno;
    private String materno;
    private int matricula;
    private int idGrupo;

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the paterno
     */
    public String getPaterno() {
        return paterno;
    }

    /**
     * @param paterno the paterno to set
     */
    public void setPaterno(String paterno) {
        this.paterno = paterno;
    }

    /**
     * @return the materno
     */
    public String getMaterno() {
        return materno;
    }

    /**
     * @param materno the materno to set
     */
    public void setMaterno(String materno) {
        this.materno = materno;
    }

    /**
     * @return the matricula
     */
    public int getMatricula() {
        return matricula;
    }

    /**
     * @param matricula the matricula to set
     */
    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    /**
     * @return the idGrupo
     */
    public int getIdGrupo() {
        return idGrupo;
    }

    /**
     * @param idGrupo the idGrupo to set
     */
    public void setIdGrupo(int idGrupo) {
        this.idGrupo = idGrupo;
    }

    public static Vector getAlumnosGrupo(int grupo) {
        Vector vector = new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getAlumnoGrupo(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, grupo);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) {
                vector.add(resultSet.getInt("Matricula"));
                vector.add(resultSet.getString("Nombre"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return vector;

    }
     public static void addAsistencia(int idRelMatGru,int matricula,float valor) 
     {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addAsistencia(?,?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idRelMatGru);
            cs.setInt(2, matricula);
            cs.setFloat(3, valor);
            cs.executeQuery();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }

    }
     public static void addAsistenciaNeta(int valor,int idRelMatGru)
     {
         ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addAsistenciaNeta(?,?)}";
            cs = con.prepareCall(query);
            cs.setFloat(1, valor);
            cs.setFloat(2, idRelMatGru);
            cs.executeQuery();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
     }
     public void updateAsistenciaAlumno(int idAsistencia,float valor)
     {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call updateAsistenciaAlumno(?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idAsistencia);
            cs.setFloat(2, valor);
            cs.executeQuery();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
     }
     public void addAlumno(int matricula,String nombre, String paterno,String materno,int grupo)
     {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addAlumno(?,?,?,?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, matricula);
            cs.setString(2, nombre);
            cs.setString(3,paterno);
            cs.setString(4,materno);
            cs.setInt(5, grupo);
            cs.executeQuery();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
     }
     
     public Vector getAsistenciaByAlumno(int idRelMatGru)
     {
         Vector vector = new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getAsistenciaByAlumno(?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idRelMatGru);
            cs.setInt(2, matricula);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) {
                vector.add(resultSet.getInt("idAsistencia"));
                vector.add(resultSet.getString("fecha"));
                vector.add(resultSet.getFloat("valor"));
                vector.add(resultSet.getInt("valorNeto"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return vector;
     }
     
     public void addEvaluacionPia(int idPia)
     {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addEvaluacionPia(?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, matricula);
            cs.setInt(2, idPia);
            cs.executeQuery();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
     }
     
     public static void updateEvaluacionExamen(int idExamenEvaluacion,float calificacion)
     {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call updateEvaluacionExamen(?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idExamenEvaluacion);
            cs.setFloat(2, calificacion);
            cs.executeQuery();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
     }
}
