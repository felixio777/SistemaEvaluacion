/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Model;

import Connection.ConnectionPool;
import static Model.Materia.getLastMateria;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

/**
 *
 * @author felix
 */
public class Etapa 
{
    private int idEtapa;
    private int noEtapa;
    private int idMateria;
    private int valor;
    private int nivelDominio;

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
     * @return the noEtapa
     */
    public int getNoEtapa() {
        return noEtapa;
    }

    /**
     * @param noEtapa the noEtapa to set
     */
    public void setNoEtapa(int noEtapa) {
        this.noEtapa = noEtapa;
    }

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
     * @return the nivelDominio
     */
    public int getNivelDominio() {
        return nivelDominio;
    }

    /**
     * @param nivelDominio the nivelDominio to set
     */
    public void setNivelDominio(int nivelDominio) {
        this.nivelDominio = nivelDominio;
    }
    
    public Vector getActividadDimensionByEtapa()
    {
        Vector dimension_Vector=new Vector();
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call getActividadDimensionByEtapa(?)}";
            cs = con.prepareCall(query);
            cs.setInt(1, idEtapa);
            ResultSet resultSet = cs.executeQuery();
            while (resultSet.next()) 
            {
                dimension_Vector.add(resultSet.getString("dimension"));
                dimension_Vector.add(resultSet.getInt("idDimension"));
                dimension_Vector.add(resultSet.getInt("noActividad"));
                dimension_Vector.add(resultSet.getString("titulo"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            return dimension_Vector;
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
        return dimension_Vector;
    }
    
    public void addSaberEtapa(String conocer, String hacer, String ser,int idDimension)
    {
        ConnectionPool pool = ConnectionPool.getInstancia();
        Connection con = pool.getConexion();
        CallableStatement cs = null;
        try {
            String query = "{call addSaberEtapa(?,?,?,?,?)}";
            //Conocer/Hacer/Ser/idEtapa/Dimension
            cs = con.prepareCall(query);
            cs.setString(1, conocer);
            cs.setString(2, hacer);
            cs.setString(3, ser);
            cs.setInt(4, idEtapa);
            cs.setInt(5, idDimension);
            cs.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            ConnectionPool.cerrarStatement(cs);
            pool.liberarConexion(con);
        }
    }
    
}
