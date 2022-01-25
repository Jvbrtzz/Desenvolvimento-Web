

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contas</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-3.6.0.min.js.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        
        <header class="container-fluid" style="background-color: blueviolet; padding: 10px; width: 100%" >
        <h1 class="text-center" style>Banco</h1>
        </header>
    </head>
    <body>
        <body>
        <div class='container pt-3'>
            <h1>Contas</h1>
            <form  name= "form1" method="POST" action="paginaDeCadastrosConta.jsp" >
                <div class="form-group" >                
                Id usuário:<br>
                <input type='text' name='id_usuario' class='form-control' ><br>
                Nome conta:<br>
                <input type='text' name='nome_conta' class='form-control' ><br>
                Banco:<br>
                <input type='number' name='banco' class='form-control' onkeypress="$(this).mask('000');" ><br>
                Agencia:<br>
                <input type='number' name='agencia' class='form-control' onkeypress="$(this).mask('000000');"><br>
                Conta corrente:<br>
                <input type="number" class='form-control' name="conta_corrente" onkeypress="$(this).mask('00000');"><br>
                
                <input id="btn" type='submit' class='btn btn-success' value='Cadastrar' >
                <a href="paginaDeCadastrosConta.jsp"><input   class='btn btn-success' value='Ver lista' ></a>
                <p id='p' style="font-size: 20px; margin-top: 15px;  "class="text-danger" ></p>
                <p id='p1' style="font-size: 20px; padding: ;  "class="text-danger" ></p>
                <p id='p2' style="font-size: 20px; padding: ;  "class="text-danger" ></p>
                <p id='p3' style="font-size: 20px; padding: ;  "class="text-danger" ></p>
                <p id='p4' style="font-size: 20px; padding: ;  "class="text-danger" ></p>

                </div>
                <script>
                     document.getElementById("btn").addEventListener("click", function(event){
            let empt = document.forms["form1"]["id_usuario"].value;
            if (empt === ""){
              p.innerHTML = "id_usuario não identificado <br><br>";
              
            event.preventDefault()}
                    else{
                    p.innerHTML = "";
                };                      
                         
            let empt1 = document.forms["form1"]["nome_conta"].value;
            if (empt1 === ""){              
                p1.innerHTML = "nome_conta não identificada <br><br>";
            event.preventDefault()}else{
                    p1.innerHTML ="";
                 };
         
           let empt2 = document.forms["form1"]["banco"].value;
            if (empt2 === ""){              
                p2.innerHTML = "Banco não identificado <br><br>";
            event.preventDefault()}else{
                p2.innerHTML="";
            };
             let empt3 = document.forms["form1"]["agencia"].value;
            if (empt3 === ""){              
                p3.innerHTML = "Agencia não identificada <br><br>";
            event.preventDefault()}else{
                p3.innerHTML="";
            };
            
            let empt4 = document.forms["form1"]["conta_corrente"].value;
            if (empt4 === ""){              
                p4.innerHTML = "conta corrente não identificada <br><br>";
            event.preventDefault()}else{
                p4.innerHTML="";
            };
          });
                </script>
            </form>
        </div>        
    </body>
</html>