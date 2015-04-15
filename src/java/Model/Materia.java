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
public class Materia {

    private int idMateria;
    private String materia;
    private int activo;
    private int frecuencia;

    /**
     * @return the idMateria
     */
    public int getIdMateria() {
        return idMateria;
    }

    /**
     * @param idMateria the idMateria to set
     */
    public void setIdMateria(int idMateria) {
        this.idMateria = idMateria;
    }

    /**
     * @return the materia
     */
    public String getMateria() {
        return materia;
    }

    /**
     * @param materia the materia to set
     */
    public void setMateria(String materia) {
        this.materia = materia;
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

    public static Vector getExamenTipo() {
        Vector vector = new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getExamenTipo()}";
            cs = con.prepareCall(query);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) {
                vector.add(resultSet.getInt("idExamenTipo"));
                vector.add(resultSet.getString("examenTipo"));
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

    public void addMateria() {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addMateria(?,?)}";
            cs = con.prepareCall(query);
            cs.setString(1, materia);
            cs.setInt(2, frecuencia);
            cs.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
    }

    public static int getLastMateria() {
        int lastMateria = 0;
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getLastMateria()}";
            cs = con.prepareCall(query);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) {
                lastMateria = resultSet.getInt("idMateria");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return 0;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return lastMateria;

    }

    public static int getLastEtapa() {
        int lastEtapa = 0;
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getLastEtapa()}";
            cs = con.prepareCall(query);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) {
                lastEtapa = resultSet.getInt("idEtapa");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return 0;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return lastEtapa;

    }

    public static int getLastActividad() {
        int lastActividad = 0;
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getLastActividad()}";
            cs = con.prepareCall(query);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) {
                lastActividad = resultSet.getInt("idActividad");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return 0;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return lastActividad;

    }
    
    public static Vector getEtapasByMateria(int idMateria)
    {
         Vector etapas_Vector=new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getEtapaByMateria(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idMateria);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
               etapas_Vector.add(resultSet.getInt("idEtapa"));
               etapas_Vector.add(resultSet.getString("NoEtapa"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return etapas_Vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return etapas_Vector;
    }
    
    public static Vector getExamenByMateria(int idMateria)
    {
         Vector examenes_Vector=new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getExamenByMateria(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idMateria);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
               examenes_Vector.add(resultSet.getInt("idExamenMateria"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return examenes_Vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return examenes_Vector;
    }
    public static Vector getActivadesByEtapa(int idEtapa)
    {
        Vector actividades_Vector=new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getActividadByEtapa(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idEtapa);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
               actividades_Vector.add(resultSet.getInt("idActividad"));
               actividades_Vector.add(resultSet.getString("NoActividad"));
               actividades_Vector.add(resultSet.getInt("valor"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return actividades_Vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return actividades_Vector;
    }
    
    public static Vector getActividadesToEvaluar(int noGrupo,int idEtapa)
    {
        Vector actividades_Vector=new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getActividadToEvaluar(?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, noGrupo);
            cs.setInt(2, idEtapa);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
               actividades_Vector.add(resultSet.getInt("idEvaluacionActividad"));
               actividades_Vector.add(resultSet.getString("nombre"));
               actividades_Vector.add(resultSet.getInt("matricula"));
               actividades_Vector.add(resultSet.getInt("calificacion"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return actividades_Vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return actividades_Vector;
    }
      public static String getMateriaNombre(int idMateria)
    {
        String materiaNombre=" ";
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getMateria(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idMateria);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
               materiaNombre=resultSet.getString("Materia");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return materiaNombre;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return materiaNombre;
    }
      
        public static int getEtapa(int idEtapa)
    {
        int etapa=0;
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getEtapa(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idEtapa);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
              etapa=resultSet.getInt("NoEtapa");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return etapa;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return etapa;
    }
     
    public static int getActividadCountByEtapa(int idEtapa)
    {
        int actividades=0;
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getActividadCountByEtapa(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idEtapa);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
              actividades=resultSet.getInt("actividades");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return actividades;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return actividades;
    }
    public void addExamenMateria(int idExamenTipo, float valor) {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addExamenMateria(?,?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, getLastMateria());
            cs.setInt(2, idExamenTipo);
            cs.setFloat(3, valor);
            cs.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
    }
        public void addPIA(int valor,String descripcion,String titulo) {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addPIA(?,?,?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, getLastMateria());
            cs.setInt(2, valor);
            cs.setString(3, descripcion);
            cs.setString(4,titulo);
            cs.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
    }
    public void addEtapa(int noEtapa, int valor,int nivelDominio) {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addEtapa(?,?,?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, noEtapa);
            cs.setInt(2, getLastMateria());
            cs.setInt(3,valor);
            cs.setInt(4,nivelDominio);
            cs.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
    }
    
    public void addActividad(int noActividad, int valor) {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addActividad(?,?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, noActividad);
            cs.setInt(2, getLastEtapa());
            cs.setInt(3, valor);
            cs.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
    }
    
    public void addRel_Act_Dim(int idDimension) {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addRel_Act_Dim(?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idDimension);
            cs.setInt(2, getLastActividad());
            cs.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
    }
    public static void updateEvaluacionActividad(int idEvaluacion,int calificacion) {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call updateEvaluacionActividad(?,?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idEvaluacion);
            cs.setInt(2, calificacion);
            cs.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
    }  
    public static Vector getMaterias()
    {
        Vector materias_Vector=new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getMaterias()}";
            cs = con.prepareCall(query);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
               materias_Vector.add(resultSet.getInt("idMateria"));
               materias_Vector.add(resultSet.getString("Materia"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return materias_Vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return materias_Vector;

    }
    public  Vector getMateriaById()
    {
        Vector materias_Vector=new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getMateriaById(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idMateria);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
               materias_Vector.add(resultSet.getInt("idMateria"));
               materias_Vector.add(resultSet.getString("Materia"));
               materias_Vector.add(resultSet.getInt("frecuencia"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return materias_Vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return materias_Vector;
    }
    public Vector getPia()
    {
        Vector pia_Vector=new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getPiaByMateria(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idMateria);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
                pia_Vector.add(resultSet.getInt("idPIA"));
                pia_Vector.add(resultSet.getInt("idMateria"));
                pia_Vector.add(resultSet.getInt("valor"));
                pia_Vector.add(resultSet.getString("descripcion"));
                pia_Vector.add(resultSet.getString("titulo"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return pia_Vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return pia_Vector;
    }
    

    public static Vector getExamenByIdExamen(int idExamen)
    {
        Vector examen_Vector=new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getExamenByIdExamen(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idExamen);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
               examen_Vector.add(resultSet.getInt("valor"));
               examen_Vector.add(resultSet.getString("examenTipo"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return examen_Vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return examen_Vector;
    }
    /**
     * @return the frecuencia
     */
    public int getFrecuencia() {
        return frecuencia;
    }

    /**
     * @param frecuencia the frecuencia to set
     */
    public void setFrecuencia(int frecuencia) {
        this.frecuencia = frecuencia;
    }
}
