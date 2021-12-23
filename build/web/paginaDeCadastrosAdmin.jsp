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
                   out.println("<center>");
                   out.println("<h1>" + "Cadatro número: " + num + "</h1>");
                   out.println("<br>");
                   out.println("ID: " + lista.get(num).getId() +"<br>");
                   out.println("Nome: " + lista.get(num).getNome() +"<br>");
                   out.println("Senha: " + lista.get(num).getSenha() +"<br>");
                   out.println("CPF: " + lista.get(num).getCpf() +"<br>");
                   out.println("</center>");
                   out.println("<br>");
                   
                  out.println("<center>");
                   out.print("<a href='frmExcluirAdmin.jsp?id="
                           + lista.get(num).getId() + "&nome="
                           + lista.get(num).getNome()+ "&senha="
                           + lista.get(num).getSenha()+ "&cpf="
                           + lista.get(num).getCpf()  + "'> Excuir </a>");
                   out.println("</center>");

                   %><Br><Br><%
               
               }
            } catch (Exception e) {
            
            }
        
        %>
        <center><a style="margin-bottom: 30px;" href="index.html" class="btn btn-primary">Voltar Pagina inicial</a></center>
    </body>
</html>
