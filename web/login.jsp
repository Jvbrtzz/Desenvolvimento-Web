<%-- 
    Document   : login
    Created on : 11/11/2021, 15:53:42
    Author     : jvbor
--%>


<%@page import="Aplicacao.Pessoa"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DAO.CadastrarAdmDAO"%>
<%@page import="DAO.CadastrarAdmDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset="utf-8">
         
         <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

         <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-3.6.0.min.js.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        <title>Login Usuário</title>
    <header class="container-fluid" style="background-color: blueviolet; padding: 10px" >
        <h1 class="text-center">Banco</h1>
    </header>
    </head>
    <body>
        <div class='container pt-3'>
            <h1>Login</h1>
            <form  name= "form1" method="post" action="AreaPrivadaUser.jsp" onsubmit="">
                <div class="form-group">
                Nome:<br>
                <input type='text' name='nome' id="nome" class='form-control' ><br>
                Senha:<br>
                <input type="password" class='form-control' id="senha" name="senha"><br>
                
                <input id="btn" type='submit' class='btn btn-success' value='Entrar' >
                 <a href="index.html" class="btn btn-primary">Voltar Pagina inicial</a>

                <p id='p' style="font-size: 20px; margin-top: 15px;  "class="text-danger" ></p>
                <p id='p1' style="font-size: 20px; padding: ;  "class="text-danger" ></p>
                
                </div>
            </form>
         
            
    </body>
</html>
