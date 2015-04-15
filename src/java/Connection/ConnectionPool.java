/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Connection;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import javax.naming.InitialContext;
import javax.sql.DataSource;
/**
 *
 * @author felix
 */
public class ConnectionPool {
        private static ConnectionPool pool=null;
    private static DataSource dataSource=null;
    
    public synchronized static  ConnectionPool getInstancia()
    {
       
        if(pool==null)
        {
            pool=new ConnectionPool();
        }
        return pool;
    }
    private ConnectionPool()
    {
        try
        {
            InitialContext ic=new InitialContext();
            dataSource = (DataSource) ic.lookup("java:/comp/env/jdbc/sistemaevaluacion");
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
    public Connection getConexion()
    {
        try
        {
            return dataSource.getConnection();
        }
        catch(SQLException ex)
        {
            ex.printStackTrace();
            return null;
        }
    }
    public void liberarConexion(Connection c)
    {
        try
        {
            if(c != null)
                c.close();
        }
        catch (SQLException ex)
        {
           ex.printStackTrace();
        }
    }
    public static void cerrarStatement(Statement s)
    {
        try
        {
            if(s != null)
                s.close();
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
    }
}
