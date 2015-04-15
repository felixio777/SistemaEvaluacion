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
public class Grupo {
    private int idGrupo;
    private int grupo;
    private int activo;

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

    /**
     * @return the grupo
     */
    public int getGrupo() {
        return grupo;
    }

    /**
     * @param grupo the grupo to set
     */
    public void setGrupo(int grupo) {
        this.grupo = grupo;
    }

    /**
     * @return the activo
     */
    public int getActivo() {
        return activo;
    }

    /**
     * @param activo the activo to set
     */
    public void setActivo(int activo) {
        this.activo = activo;
    }
      public static Vector getAllGrupos()
    {
        Vector grupos_Vector=new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getAllGrupos()}";
            cs = con.prepareCall(query);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
               grupos_Vector.add(resultSet.getInt("idGrupo"));
               grupos_Vector.add(resultSet.getString("Grupo"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return grupos_Vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return grupos_Vector;

    }
      public Vector getGrupoById()
      {
          Vector grupo_Vector=new Vector();
          ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getGrupoById(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idGrupo);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
               grupo_Vector.add(resultSet.getInt("idGrupo"));
               grupo_Vector.add(resultSet.getString("Grupo"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return grupo_Vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return grupo_Vector;
      }
      public static Vector getDias()
      {
           Vector dias_Vector=new Vector();
          ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getDias()}";
            cs = con.prepareCall(query);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
               dias_Vector.add(resultSet.getInt("idDia"));
               dias_Vector.add(resultSet.getString("dia"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return dias_Vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return dias_Vector;
      }
          public static Vector getHoras()
      {
           Vector horas_Vector=new Vector();
          ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getHoras()}";
            cs = con.prepareCall(query);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
               horas_Vector.add(resultSet.getInt("idHora"));
               horas_Vector.add(resultSet.getString("hora"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return horas_Vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return horas_Vector;
      }
          
       public static Vector getDiasAsistencia(int idRelMatGru)
      {
           Vector dias_Vector=new Vector();
          ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getDiasAsistencia(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1,idRelMatGru);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
               dias_Vector.add(resultSet.getInt("idDia"));
               dias_Vector.add(resultSet.getString("dia"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return dias_Vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return dias_Vector;
      }   
       
       public static int getAsistenciaNeta(int idDia,int idRelMatGru)
       {
           int frecuencia=0;
          ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getAsistenciaNeta(?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1,idDia);
            cs.setInt(2,idRelMatGru);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
               frecuencia=resultSet.getInt("frecuencia");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return frecuencia;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
           return frecuencia;
       }
       
        public static int getAsistenciaNetaTotal(int idRelMatGru)
       {
           int total=0;
          ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getAsistenciaNetaTotal(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1,idRelMatGru);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
               total=resultSet.getInt("total");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return total;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
           return total;
       }
     public static Vector getAsistenciaAcumulada(int idRelMatGru)
     {
        Vector asistencia_Vector=new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getAsistenciaAcumulada(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1,idRelMatGru);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
                asistencia_Vector.add(resultSet.getFloat("acumulado"));
                asistencia_Vector.add(resultSet.getInt("matricula"));
                asistencia_Vector.add(resultSet.getString("nombre"));   
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return asistencia_Vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
           return asistencia_Vector;
     }
     
     public void addGrupo()
     {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addGrupo(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1,grupo);
            cs.executeQuery();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
     }
     public static Vector getExamenesByGrupo(int grupo,int idExamenMateria)
     {
         Vector examen_vector=new Vector();
         ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getExamenByGrupo(?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1,grupo);
            cs.setInt(2, idExamenMateria);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
                examen_vector.add(resultSet.getInt("idExamenEvaluacion"));
                examen_vector.add(resultSet.getString("nombre"));
                examen_vector.add(resultSet.getInt("matricula"));
                examen_vector.add(resultSet.getInt("calificacion"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return examen_vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return examen_vector;
     }
     
     public static Vector getPiaByGrupo(int grupo,int idMateria)
     {
        Vector vector=new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getPiaByGrupo(?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1,grupo);
            cs.setInt(2, idMateria);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
                vector.add(resultSet.getInt("idEvaluacionPia"));
                vector.add(resultSet.getString("nombre"));
                vector.add(resultSet.getInt("matricula"));
                vector.add(resultSet.getInt("califiacacion"));

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
}
