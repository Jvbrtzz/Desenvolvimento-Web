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
import Aplicacao.ContaCorrente;


/**
 *
 * @author jvbor
 */
public class CadastrarContaDAO {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<ContaCorrente> lista = new ArrayList<>();
    
     public void CadastrarConta(ContaCorrente conta) throws ClassNotFoundException{
        
        String sql = "insert into contas (id_usuario, nome_conta, banco, agencia, conta_corrente) values (?,?,?,?,?)";
        con = new ConexaoDAO().conexaoDAO();
        
        try{
            pstm = (PreparedStatement) con.prepareStatement(sql);
            pstm.setString(1, conta.getId_usuario());
            pstm.setString(2, conta.getNome_conta());
            pstm.setString(3, conta.getBanco());
            pstm.setString(4, conta.getAgencia());
            pstm.setString(5, conta.getConta_corrente());
           
            
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){
            
        }
    }
     public ArrayList<ContaCorrente> Cadastrados() throws ClassNotFoundException{
        String sql = "select * from contas";
        con = new ConexaoDAO().conexaoDAO();
        
        try {
            pstm = (PreparedStatement) con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            
            while(rs.next()){
                ContaCorrente conta = new ContaCorrente();
                conta.setId_usuario(rs.getString("id_usuario"));
                conta.setNome_conta(rs.getString("nome_conta"));
                conta.setBanco(rs.getString("banco"));
                conta.setAgencia(rs.getString("agencia"));
                conta.setConta_corrente(rs.getString("conta_corrente"));
                
                
                lista.add(conta);
            }
            
        } catch (Exception e) {
        
        }
        return lista;
    }
}
