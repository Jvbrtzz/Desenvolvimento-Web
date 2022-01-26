/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;


import Aplicacao.Lancamento;
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
public class CadastrarLancamentoDAO {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<Lancamento> lista = new ArrayList<>();
    
     public void CadastrarLancamento(Lancamento obj) throws ClassNotFoundException{
        
        String sql = "insert into lancamentos (id_conta, id_categoria, valor, operacao, data, descricao) values (?,?,?,?,?,?)";
        con = new ConexaoDAO().conexaoDAO();
        
        try{
            pstm = (PreparedStatement) con.prepareStatement(sql);
            pstm.setString(1, obj.getId_conta());
            pstm.setString(2, obj.getId_categoria());
            pstm.setString(3, obj.getValor());
            pstm.setString(4, obj.getOperacao());
            pstm.setString(5, obj.getData());
            pstm.setString(6, obj.getDescricao());
           
            
            pstm.execute();
            pstm.close();
            
        }catch(SQLException e){
            
        }
    }
     public ArrayList<Lancamento> Cadastrados() throws ClassNotFoundException{
        String sql = "select * from lancamentos";
        con = new ConexaoDAO().conexaoDAO();
        
        try {
            pstm = (PreparedStatement) con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            
            while(rs.next()){
                Lancamento obj = new Lancamento();
                obj.setId(rs.getString("id"));
                obj.setId_conta(rs.getString("id_conta"));
                obj.setId_categoria(rs.getString("id_categoria"));
                obj.setValor(rs.getString("valor"));
                obj.setOperacao(rs.getString("operacao"));
                obj.setData(rs.getString("data"));
                obj.setDescricao(rs.getString("descricao"));
                
                lista.add(obj);
            }
            
        } catch (Exception e) {
        
        }
        return lista;
     }
}
