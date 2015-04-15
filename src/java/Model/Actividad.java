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
import javax.servlet.jsp.tagext.TagAttributeInfo;
/**
 *
 * @author felix
 */
public class Actividad {
    private int idActividad;
    private int noActividad;
    private int idEtapa;
    private String titulo;
    private int valor;
    private String Comentarios;
    
   

    /**
     * @return the idActividad
     */
    public int getIdActividad() {
        return idActividad;
    }

    /**
     * @param idActividad the idActividad to set
     */
    public void setIdActividad(int idActividad) {
        this.idActividad = idActividad;
    }

    /**
     * @return the noActividad
     */
    public int getNoActividad() {
        return noActividad;
    }

    /**
     * @param noActividad the noActividad to set
     */
    public void setNoActividad(int noActividad) {
        this.noActividad = noActividad;
    }

    /**
     * @return the idEtapa
     */
    public int getIdEtapa() {
        return idEtapa;
    }

    /**
     * @param idEtapa the idEtapa to set
     */
    public void setIdEtapa(int idEtapa) {
        this.idEtapa = idEtapa;
    }

    /**
     * @return the titulo
     */
    public String getTitulo() {
        return titulo;
    }

    /**
     * @param titulo the titulo to set
     */
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    /**
     * @return the valor
     */
    public int getValor() {
        return valor;
    }

    /**
     * @param valor the valor to set
     */
    public void setValor(int valor) {
        this.valor = valor;
    }

    /**
     * @return the Comentarios
     */
    public String getComentarios() {
        return Comentarios;
    }

    /**
     * @param Comentarios the Comentarios to set
     */
    public void setComentarios(String Comentarios) {
        this.Comentarios = Comentarios;
    }
     public static Vector getDimensiones() {
        Vector vector = new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getDimensiones()}";
            cs = con.prepareCall(query);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) {
                vector.add(resultSet.getInt("idDimension"));
                vector.add(resultSet.getString("Dimension"));
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
     
     public static Vector getDimensionesByActividad(int idActividad) {
        Vector vector = new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getDimensionByActividad(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1,idActividad);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
                vector.add(resultSet.getString("Dimension"));
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
     
    public static Vector getCriterioByActividad(int idActividad) {
        Vector vector = new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getCriterioByActividad(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1,idActividad);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
                vector.add(resultSet.getInt("idCriterio"));
                vector.add(resultSet.getInt("idActividad"));
                vector.add(resultSet.getInt("valor"));
                vector.add(resultSet.getString("texto"));
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
        public static Vector getSubcriterioByCriterio(int idCriterio) 
        {
        Vector vector = new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getsubcriterioByCriterio(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1,idCriterio);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
                vector.add(resultSet.getInt("idSubcriterio"));
                vector.add(resultSet.getInt("idCriterio"));
                vector.add(resultSet.getInt("valor"));
                vector.add(resultSet.getString("texto"));
                vector.add(resultSet.getString("retroalimentacion"));
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
     
     public void updateActividad()
     {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call updateActividad(?,?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1,getIdActividad());
            cs.setString(2,getTitulo());
            cs.setString(3,getComentarios());
            cs.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
     }
     public void addCriterio(int valor,String texto)
     {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addCriterio(?,?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1,getIdActividad());
            cs.setInt(2,valor);
            cs.setString(3,texto);
            cs.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
     }
     
     public static int getLastCriterio()
     {
         int lastCriterio = 0;
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getLastCriterio()}";
            cs = con.prepareCall(query);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) {
                lastCriterio = resultSet.getInt("idCriterio");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return 0;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return lastCriterio;
     }
     
     public void addSubcriterio(String texto,String retroalimentacion, float valor)
     {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addSubCriterio(?,?,?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1,getLastCriterio());
            cs.setString(2,texto);
            cs.setString(3,retroalimentacion);
            cs.setFloat(4, valor);
            cs.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
     }
     
     public static void addEvaluacionCriterio(int idSubcriterio, int matricula)
     {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addEvaluacionCriterio(?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1,idSubcriterio);
            cs.setInt(2,matricula);
            cs.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
     }
     
     public static void addEvaluacionActividad(int idActividad,int matricula)
     {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addEvaluacionActividad(?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1,idActividad);
            cs.setInt(2,matricula);
            cs.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
     }
     public static void addExamenEvaluacion(int idExamenMateria,int matricula)
     {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addExamenEvaluacion(?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1,idExamenMateria);
            cs.setInt(2,matricula);
            cs.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
     }
}
