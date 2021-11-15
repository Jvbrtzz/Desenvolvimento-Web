

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categorias</title>
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
            <form  name= "form1" method="post">
                <div class="form-group" >
                Id:<br>
                <input type='text' name='id' class='form-control' ><br>
                Id Conta:<br>
                <input type='text' name='id_conta' class='form-control' ><br>
                Id Categoria:<br>
                <input type='text' name='id_categoria' class='form-control' ><br>
                <label for="valor">Valor:</label>
                    <select name="valor" id="valor">
                      <option value="credito">Crédito</option>
                      <option value="debito">Débito</option>                      
                    </select><br><br>                
                
                <label for="operacao">Operação:</label>
                    <select name="operacao" id="operacao">
                      <option value="credito">C</option>
                      <option value="debito">D</option>                      
                    </select><br><br>  
                    
                Data:(DD/MM/AAAA)<br>
                <input type="text" class='form-control' name="data"  onkeypress="$(this).mask('00/00/0000');"><br>
                
                 Descrição:<br>
                <input type="text" class='form-control' name="descricao"><br>
                
                <input id="btn" type='submit' class='btn btn-success' value='Cadastrar' >
                <p id='p' style="font-size: 20px; margin-top: 15px;  "class="text-danger" ></p>
                <p id='p1' style="font-size: 20px; padding: ;  "class="text-danger" ></p>
                
                </div>
            </form>
        </div>          
    </body>
</html>
