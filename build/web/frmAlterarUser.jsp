<%-- 
    Document   : frmAlterarUser
    Created on : 26/12/2021, 10:46:08
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
        <title>Administrador Alterar</title>
    <header class="container-fluid" style="background-color: blueviolet; padding: 10px" >
        <h1 class="text-center">Banco</h1>
    </header>
        
    </head>
    <body>
       <center><h1 style="padding-top: 20px">ALTERAR USUARIO</h1></center>
            <form  name= "form1" method="post" action="alterarUser.jsp">
                <div class="form-group" >
                
                <form  name= "form1" method="post" action="alterarUser.jsp">
                <div class="form-group" >
                
                ID:<br>
                <input type='text' name='id' class='form-control' value="<%=request.getParameter("id")%>" ><br>    
              
                <label for="suspenso">Suspenso:</label>
                    <select name="suspenso" id="valor" value="<%=request.getParameter("suspenso")%>">
                      <option value="S">Suspenso</option>
                      <option value="N">Não Suspenso</option>                      
                    </select><br><br>                 
               
                    <center><button class="btn btn-danger" type="submit">Alterar</button></center>
            </form>        
    </body>
</html>
