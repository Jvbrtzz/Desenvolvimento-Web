/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Aplicacao.Pessoa;
import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author jvbor
 */
public class CadastrarAdmDAO {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<Pessoa> lista = new ArrayList<>();
    
    public void CadastrarAdm(Pessoa objPessoa) throws ClassNotFoundException{
        
        String sql = "insert into administradores (nome, cpf, senha) values (?,?,?)";
        con = new ConexaoDAO().conexaoDAO();
        
        try{
            pstm = (PreparedStatement) con.prepareStatement(sql);
            pstm.setString(1, objPessoa.getNome());
            pstm.setString(2, objPessoa.getCpf());
            pstm.setString(3, objPessoa.getSenha());
           
            
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){
            
        }
    }
    public ArrayList<Pessoa> Cadastrados() throws ClassNotFoundException{
        String sql = "select * from administradores";
        con = new ConexaoDAO().conexaoDAO();
        
        try {
            pstm = (PreparedStatement) con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            
            while(rs.next()){
                Pessoa objPessoa = new Pessoa();
                objPessoa.setId(rs.getString("id"));
                objPessoa.setNome(rs.getString("nome"));
                objPessoa.setSenha(rs.getString("senha"));
                objPessoa.setCpf(rs.getString("cpf"));
                
                
                lista.add(objPessoa);
            }
            
        } catch (Exception e) {
        
        }
        return lista;
    }
}
