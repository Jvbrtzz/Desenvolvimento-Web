<%-- 
    Document   : paginaDeCadastradosAdmin
    Created on : 22/12/2021, 11:32:49
    Author     : jvbor
--%>

<%@page import="DAO.CadastrarContaDAO"%>
<%@page import="Aplicacao.ContaCorrente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.CadastrarAdmDAO"%>
<%@page import="DAO.CadastrarUsuarioDAO"%>
<%@page import="Aplicacao.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
         <meta charset="utf-8">
         
         <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

         <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-3.6.0.min.js.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        <title>cadastros administradores</title>
        <header class="container-fluid" style="background-color: blueviolet; padding: 10px" >
        <h1 class="text-center">Banco</h1>
        </header>
    </head>
    <body>
    <center style=" padding: 15px;"><h1>Cadastrados</h1></center>
        <%
           ContaCorrente conta = new ContaCorrente();
           conta.setId_usuario(request.getParameter("id_usuario"));
           conta.setNome_conta(request.getParameter("nome_conta"));
           conta.setBanco(request.getParameter("banco"));
           conta.setAgencia(request.getParameter("agencia"));
           conta.setConta_corrente(request.getParameter("conta_corrente"));
          
           CadastrarContaDAO contasDAO = new CadastrarContaDAO();
           contasDAO.CadastrarConta(conta);
           
        %>
        
        <%
        try {
               CadastrarContaDAO contDAO = new CadastrarContaDAO();
               ArrayList<ContaCorrente> lista = contDAO.Cadastrados();
               
               for(int num = 0; num < lista.size(); num++){
                   out.println("<center>");
                   out.println("<h1>" + "Cadatro número: " + num + "</h1>");
                   out.println("<br>");
                   out.println("<Strong>ID_usuário: </Strong>" + lista.get(num).getId_usuario() +"<br>");
                   out.println("<Strong>Nome conta: </Strong>" + lista.get(num).getNome_conta() +"<br>");
                   out.println("<Strong>Banco: </Strong>" + lista.get(num).getBanco() +"<br>");
                   out.println("<Strong>Agência: </Strong>" + lista.get(num).getAgencia() +"<br>");
                   out.println("<Strong>Conta corrente: </Strong>" + lista.get(num).getConta_corrente()+"<br>");
                   out.println("</center>");
                   out.println("<br>");
                   
                 
                   %><Br><Br><%
               
               }
            } catch (Exception e) {
            
            }
        
        %>
        <center><a style="margin-bottom: 30px;" href="index.html" class="btn btn-primary">Voltar Pagina inicial</a></center>
    </body>
</html>
