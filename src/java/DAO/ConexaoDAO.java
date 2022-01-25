/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author jvbor
 */
public class ConexaoDAO {
    
    public Connection conexaoDAO() throws ClassNotFoundException{
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/financeiro?user=root&password=";
            con = (Connection) DriverManager.getConnection(url);
        }catch(SQLException e){
        
        }
        return con;
    }
    
}
