<%-- 
    Document   : paginaDeCadastros
    Created on : 22/12/2021, 10:13:27
    Author     : jvbor
--%>

<%@page import="java.util.ArrayList"%>
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
        <title>cadastros usuários</title>
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
           
           CadastrarUsuarioDAO cdao = new CadastrarUsuarioDAO();
           cdao.CadastrarCliente(pessoa);

        %>
        
        <%
        
               CadastrarUsuarioDAO objCdao =  new CadastrarUsuarioDAO();
               ArrayList<Pessoa> lista = objCdao.Cadastrados();
               
            try {   
               for(int num = 0; num < lista.size(); num++){
                   out.println("<center>");
                   out.println("<h1>" + "Cadatro número: " + num + "</h1>");
                   out.println("<br>");
                   out.println("<Strong>ID:</Strong> " + lista.get(num).getId() +"<br>");
                   out.println("<Strong>Nome:</Strong> " + lista.get(num).getNome() +"<br>");
                   out.println("<Strong>Senha:</Strong> " + lista.get(num).getSenha() +"<br>");
                   out.println("<Strong>CPF:</Strong> " + lista.get(num).getCpf() +"<br>");
                   out.println("<Strong>Suspenso:</Strong> " + lista.get(num).getSuspenso() +"<br>");
                   out.println("</center>");
                   out.println("<br>");
                   
                   out.println("<center>");
                   out.print("<a href='frmExcluirUser.jsp?id="
                           + lista.get(num).getId() + "&nome="
                           + lista.get(num).getNome()+ "&senha="
                           + lista.get(num).getSenha()+ "&cpf="
                           + lista.get(num).getCpf() + "&suspenso=" 
                           + lista.get(num).getSuspenso() + "'> Excuir </a>");
                   out.println("</center>");

                   %><Br><Br><%
               }
                } catch (Exception e) {
            
            }
        
        %>
          <center><a style="margin-bottom: 30px;" href="index.html" class="btn btn-primary">Voltar Pagina inicial</a></center>
     
    </body>
</html>
