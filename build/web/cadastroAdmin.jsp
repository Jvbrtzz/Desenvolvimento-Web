

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
    <style>
        
    </style>
    <body>
                 
        <div class='container pt-3'>
            <h1>Cadastro Administrador</h1>
            <form  name= "form1" method="POST" action="paginaDeCadastrosAdmin.jsp" >
                <div class="form-group" >
                Nome:<br>
                <input type='text' name='nome' class='form-control' ><br>
                Senha:<br>
                <input type="password" class='form-control' name="senha"><br>
                CPF:<br>
                <input type="text" name ='cpf' class="form-control" onkeypress="$(this).mask('000.000.000-00');" ><br>                
                <input id="btn" type='submit' class='btn btn-success' value='Cadastrar' >
                <a href="paginaDeCadastrosAdmin.jsp"><input   class='btn btn-success' value='Ver lista' ></a>
                <p id='p' style="font-size: 20px; margin-top: 15px;  "class="text-danger" ></p>
                <p id='p1' style="font-size: 20px; padding: ;  "class="text-danger" ></p>
                <p id='p2' style="font-size: 20px; padding: ;  "class="text-danger" ></p>
                <p id='p3' style="font-size: 20px; padding: ;  "class="text-danger" ></p>
                </div>
            </form>
        
        </div>
        <script>
           
          document.getElementById("btn").addEventListener("click", function(event){
            let empt = document.forms["form1"]["nome"].value;
            if (empt === ""){
              p.innerHTML = "Nome não identificado <br><br>";
              
            event.preventDefault()}
                    else{
                    p.innerHTML = "";
                };                      
                         
            let empt1 = document.forms["form1"]["senha"].value;
            if (empt1 === ""){              
                p1.innerHTML = "Senha não identificada <br><br>";
            event.preventDefault()}else{
                    p1.innerHTML ="";
                 };
         
           let empt2 = document.forms["form1"]["cpf"].value;
            if (empt2 === ""){              
                p2.innerHTML = "CPF não identificado <br><br>";
            event.preventDefault()}else{
                p2.innerHTML="";
            };
        
           
            
          });
          
         </script>

    </body>
</html>
