<%-- 
    Document   : paginaDeCadastradosAdmin
    Created on : 22/12/2021, 11:32:49
    Author     : jvbor
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DAO.CadastrarAdmDAO"%>
<%@page import="DAO.CadastrarUsuarioDAO"%>
<%@page import="Aplicacao.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Cadastrados</h1>
        <%
           Pessoa pessoa = new Pessoa(); 
           pessoa.setNome(request.getParameter("nome"));
           pessoa.setSenha(request.getParameter("senha"));
           pessoa.setCpf(request.getParameter("cpf"));
           pessoa.setSuspenso(request.getParameter("suspenso"));
           
           CadastrarAdmDAO cdao = new CadastrarAdmDAO();
           cdao.CadastrarAdm(pessoa);

        %>
        
        <%
        try {
               CadastrarAdmDAO objCdao =  new CadastrarAdmDAO();
               ArrayList<Pessoa> lista = objCdao.Cadastrados();
               
               for(int num = 0; num < lista.size(); num++){
                   out.println("ID: " + lista.get(num).getId() +"<br>");
                   out.println("Nome: " + lista.get(num).getNome() +"<br>");
                   out.println("Senha: " + lista.get(num).getSenha() +"<br>");
                   out.println("CPF: " + lista.get(num).getCpf() +"<br>");
                  
               }
            } catch (Exception e) {
            
            }
        
        %>

    </body>
</html>
