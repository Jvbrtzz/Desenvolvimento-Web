<%-- 
    Document   : login
    Created on : 11/11/2021, 15:53:42
    Author     : jvbor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset="utf-8">
         
         <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

         <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-3.6.0.min.js.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        <title>JSP Page</title>
    <header class="container-fluid" style="background-color: blueviolet; padding: 10px" >
        <h1 class="text-center">Banco</h1>
    </header>
    </head>
    <body>
        <div class='container pt-3'>
            <h1>Login</h1>
            <form  name= "form1" method="post" action="usuario.jsp" onsubmit="required()">
                <div class="form-group" >
                Nome:<br>
                <input type='text' name='nome' class='form-control' ><br>
                Senha:<br>
                <input type="password" class='form-control' name="senha"><br>
                
                <input id="btn" type='submit' class='btn btn-success' value='Cadastrar' >
                <p id='p' style="font-size: 20px; margin-top: 15px;  "class="text-danger" ></p>
                <p id='p1' style="font-size: 20px; padding: ;  "class="text-danger" ></p>
                
                </div>
            </form>
    </body>
</html>
