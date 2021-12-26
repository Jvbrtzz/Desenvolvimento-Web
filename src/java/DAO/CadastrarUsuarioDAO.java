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
public class CadastrarUsuarioDAO {
    
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<Pessoa> lista = new ArrayList<>();
            
    public void CadastrarCliente(Pessoa objPessoa) throws ClassNotFoundException{
        
        String sql = "insert into usuarios (nome, cpf, senha, suspenso) values (?,?,?,?)";
        con = new ConexaoDAO().conexaoDAO();
        
        try{
            pstm = (PreparedStatement) con.prepareStatement(sql);
            pstm.setString(1, objPessoa.getNome());
            pstm.setString(2, objPessoa.getCpf());
            pstm.setString(3, objPessoa.getSenha());
            pstm.setString(4, objPessoa.getSuspenso());
            
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){
            
        }
    }
    public ArrayList<Pessoa> Cadastrados() throws ClassNotFoundException{
        String sql = "select * from usuarios";
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
                objPessoa.setSuspenso(rs.getString("suspenso"));
                
                lista.add(objPessoa);
            }
            
        } catch (Exception e) {
        
        }
        return lista;
    }
    public void Excluir(Pessoa objPessoa) throws ClassNotFoundException{
        
        String sql = "delete from usuarios where id = ?";
        con = new ConexaoDAO().conexaoDAO();
        
        try{
            pstm = (PreparedStatement) con.prepareStatement(sql);
            pstm.setString(1, objPessoa.getId());
            
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){
            
        }
    }
   public ResultSet autenticar(Pessoa objPessoa) throws ClassNotFoundException{
        
        String sql = "select * usuarios where nome = ? and senha = ?";
        con = new ConexaoDAO().conexaoDAO();
        
        try{
            pstm = (PreparedStatement) con.prepareStatement(sql);
            pstm.setString(1, objPessoa.getNome());
            pstm.setString(2, objPessoa.getSenha());
            
            ResultSet rs = pstm.executeQuery();
            return rs;
        }catch(SQLException e){
            
     }
        return rs;
    
    }
   public void Alterar(Pessoa objPessoa) throws ClassNotFoundException{
        
        String sql = "update usuarios set suspenso = ? where id = ?";
        con = new ConexaoDAO().conexaoDAO();
        
        try{
            pstm = (PreparedStatement) con.prepareStatement(sql);
            pstm.setString(1, objPessoa.getSuspenso());
            pstm.setString(2, objPessoa.getId());
            
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){
            
        }
    }
}
