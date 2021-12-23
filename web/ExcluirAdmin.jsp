<%-- 
    Document   : ExcluirUser
    Created on : 23/12/2021, 11:59:25
    Author     : jvbor
--%>

<%@page import="DAO.CadastrarAdmDAO"%>
<%@page import="Aplicacao.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluido!</title>
    </head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
         
         <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

         <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-3.6.0.min.js.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        <title>Administrador</title>
    <header class="container-fluid" style="background-color: blueviolet; padding: 10px" >
        <h1 class="text-center">Banco</h1>
    <body>
        
       
         <%
           try {
                   
              
           Pessoa pessoa = new Pessoa(); 
           pessoa.setId(request.getParameter("id"));
           pessoa.setNome(request.getParameter("nome"));
           pessoa.setSenha(request.getParameter("senha"));
           pessoa.setCpf(request.getParameter("cpf"));
           
           
           CadastrarAdmDAO cdao = new CadastrarAdmDAO();
           cdao.Excluir(pessoa);
            } catch (Exception e) {
               }
        %>
    </body>
    <div class="card text-center" style="margin-top: 10%;">
  <div class="card-header">
    Excluído!
  </div>
        <div class="card-body">
    <h5 class="card-title">Administrador excluído do Banco de Dados com sucesso.</h5>
     <a href="paginaDeCadastrosAdmin.jsp" class="btn btn-primary">Voltar para lista</a>
    
  </div>
  <div class="card-footer text-muted">
  
  </div>
</div>
</html>
