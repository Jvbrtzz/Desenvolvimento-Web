<%-- 
    Document   : ExcluirUser
    Created on : 23/12/2021, 11:59:25
    Author     : jvbor
--%>

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
         <%
           try {
                   
              
           Pessoa pessoa = new Pessoa(); 
           pessoa.setId(request.getParameter("id"));
           pessoa.setNome(request.getParameter("nome"));
           pessoa.setSenha(request.getParameter("senha"));
           pessoa.setCpf(request.getParameter("cpf"));
           pessoa.setSuspenso(request.getParameter("suspenso"));
           
           CadastrarUsuarioDAO cdao = new CadastrarUsuarioDAO();
           cdao.Excluir(pessoa);
            } catch (Exception e) {
               }
        %>
    </body>
</html>
