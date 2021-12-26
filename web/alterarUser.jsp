<%-- 
    Document   : alterarUser
    Created on : 26/12/2021, 10:48:41
    Author     : jvbor
--%>

<%@page import="DAO.CadastrarUsuarioDAO"%>
<%@page import="Aplicacao.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterado!</title>
    </head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
         
         <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

         <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-3.6.0.min.js.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        <title>Usuário</title>
    <header class="container-fluid" style="background-color: blueviolet; padding: 10px" >
        <h1 class="text-center">Banco</h1>
    <body>
        
       
         <%
           try {
                   
              
           Pessoa pessoa = new Pessoa();
           pessoa.setId(request.getParameter("id"));         
           pessoa.setSuspenso(request.getParameter("suspenso"));
           
           
           CadastrarUsuarioDAO cdao = new CadastrarUsuarioDAO();
           cdao.Alterar(pessoa);
            } catch (Exception e) {
               }
        %>
    </body>
    <div class="card text-center" style="margin-top: 10%;">
  <div class="card-header">
    Sucesso!
  </div>
        <div class="card-body">
    <h5 class="card-title">Usuário alterado do Banco de Dados com sucesso.</h5>
    <a href="paginaDeCadastrosUsuarios.jsp" class="btn btn-primary">Voltar para lista</a>
    
  </div>
  <div class="card-footer text-muted">
  
  </div>
</div>
</html>