

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lançamentos</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-3.6.0.min.js.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        
        <header class="container-fluid" style="background-color: blueviolet; padding: 10px; width: 100%" >
        <h1 class="text-center" style>Banco</h1>
        </header>
    </head>
    <body>        
        <div class='container pt-3'>
            <h1>Lançamentos</h1>
            <form  name= "form1" method="POST" action="paginaDeCadastrosLancamento.jsp">
                <div class="form-group" >              
                Id Conta:<br>
                <input type='text' name='id_conta' class='form-control' ><br>
                Id Categoria:<br>
                <input type='text' name='id_categoria' class='form-control' ><br>
                Valor:<br>
                <input type='number' name='valor' class='form-control' ><br>    
                <label for="operacao">Operação:</label>
                    <select name="operacao" id="operacao">
                      <option value="C">C</option>
                      <option value="D">D</option>                      
                    </select><br><br>                              
               
                Data:(AAAA-MM-DD)<br>
                <input type="text" class='form-control' name="data"onkeypress="$(this).mask('0000-00-00')" ><br>
                
                Descrição:<br>
                <input type="text" class='form-control' name="descricao"><br>
                
                <input id="btn" type='submit' class='btn btn-success' value='Cadastrar' >
                <a href="paginaDeCadastrosLancamento.jsp"><input   class='btn btn-success' value='Ver lista' ></a>
                <p id='p' style="font-size: 20px; margin-top: 15px;  "class="text-danger" ></p>
                <p id='p1' style="font-size: 20px; padding: ;  "class="text-danger" ></p>
                <p id='p2' style="font-size: 20px; padding: ;  "class="text-danger" ></p>
                <p id='p3' style="font-size: 20px; padding: ;  "class="text-danger" ></p>
                <p id='p4' style="font-size: 20px; padding: ;  "class="text-danger" ></p>
                
                </div>
                <script>
                     document.getElementById("btn").addEventListener("click", function(event){
            let empt = document.forms["form1"]["id_conta"].value;
            if (empt === ""){
              p.innerHTML = "conta não identificado <br><br>";
              
            event.preventDefault()}
                    else{
                    p.innerHTML = "";
                };                      
                         
            let empt1 = document.forms["form1"]["id_categoria"].value;
            if (empt1 === ""){              
                p1.innerHTML = "categoria não identificada <br><br>";
            event.preventDefault()}else{
                    p1.innerHTML ="";
                 };
         
           let empt2 = document.forms["form1"]["valor"].value;
            if (empt2 === ""){              
                p2.innerHTML = "valor não identificado <br><br>";
            event.preventDefault()}else{
                p2.innerHTML="";
            };
             let empt3 = document.forms["form1"]["operacao"].value;
            if (empt3 === ""){              
                p3.innerHTML = "operacao não identificada <br><br>";
            event.preventDefault()}else{
                p3.innerHTML="";
            };
            
            let empt4 = document.forms["form1"]["data"].value;
            if (empt4 === ""){              
                p4.innerHTML = "data não identificada <br><br>";
            event.preventDefault()}else{
                p4.innerHTML="";
            };
          });
                </script>
            </form>
        </div>          
    </body>
</html>
