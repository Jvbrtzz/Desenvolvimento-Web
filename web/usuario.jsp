<%-- 
    Document   : usuario
    Created on : 08/11/2021, 10:04:09
    Author     : jvbor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-3.6.0.min.js.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        <header class="container-fluid" style="background-color: blueviolet; padding: 10px" >
        <h1 class="text-center">Banco</h1>
        </header>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset= "utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Usuario</title>
    </head>
    <body>
        <div class='container pt-3'>
        <h1>pagina do usuario</h1>
        <%
            String nome = request.getParameter("nome");
            String senha = request.getParameter("senha");
            String cpf = request.getParameter("cpf");
            String Email = request.getParameter("email");
                
            out.print("Nome: " +nome+ "<br>");
            out.print("Senha: " +senha+ "<br>");
            out.print("CPF: " + cpf +"<br>");
            out.print("E-mail: " + cpf +"<br>");
        
%> 
       </div> 
    </body>
</html>
