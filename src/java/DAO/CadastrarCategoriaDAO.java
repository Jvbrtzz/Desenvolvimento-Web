/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;


import Aplicacao.categoriaLancamento;
import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author jvbor
 */
public class CadastrarCategoriaDAO {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<categoriaLancamento> lista = new ArrayList<>();
    
     public void CadastrarCategoria(categoriaLancamento objCat) throws ClassNotFoundException{
        
        String sql = "insert into categorias (descricao) values (?)";
        con = new ConexaoDAO().conexaoDAO();
        
        try{
            pstm = (PreparedStatement) con.prepareStatement(sql);
            pstm.setString(1, objCat.getDescricao());
            
            
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){
            
        }
    }
     public ArrayList<categoriaLancamento> Cadastrados() throws ClassNotFoundException{
        try {
        String sql = "select * from categorias";
        con = new ConexaoDAO().conexaoDAO();
        
        
            pstm = (PreparedStatement) con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            
            while(rs.next()){
                categoriaLancamento obj = new categoriaLancamento();
                obj.setId(rs.getString("id"));                
                obj.setDescricao(rs.getString("descricao"));
                
                lista.add(obj);
            }
            
        } catch (Exception e) {
        
        }
        return lista;
    }

}