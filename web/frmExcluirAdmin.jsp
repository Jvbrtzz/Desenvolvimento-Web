<%-- 
    Document   : frmExcluirUser
    Created on : 23/12/2021, 11:30:41
    Author     : jvbor
--%>

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
        <title>Administrador excluir</title>
    <header class="container-fluid" style="background-color: blueviolet; padding: 10px" >
        <h1 class="text-center">Banco</h1>
    </header>
        
    </head>
    <body>
       <center><h1 style="padding-top: 20px">EXCLUIR USUARIO</h1></center>
            <form  name= "form1" method="post" action="ExcluirAdmin.jsp" onsubmit="required()">
                <div class="form-group" >
                
                ID:<br>
                <input type='text' name='id' class='form-control' value="<%=request.getParameter("id")%>" ><br>    
                Nome:<br>
                <input type='text' name='nome' class='form-control'value="<%=request.getParameter("nome")%>" ><br>
                Senha:<br>
                <input type='password' name='senha' class='form-control'value="<%=request.getParameter("senha")%>" ><br>
                CPF:<br>
                <input type="text" name ='cpf' class="form-control" onkeypress="$(this).mask('000.000.000-00');" value="<%=request.getParameter("cpf")%>" ><br>
              
               
                    <center><button class="btn btn-danger" type="submit">Excluir</button></center>
            </form>        
    </body>
</html>
