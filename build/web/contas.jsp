

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
        <body>
        <div class='container pt-3'>
            <h1>Contas</h1>
            <form  name= "form1" method="post" action="CadastroUsuario">
                <div class="form-group" >
                Id:<br>
                <input type='text' name='id' class='form-control' ><br>
                Id usuário:<br>
                <input type='text' name='id_usuario' class='form-control' ><br>
                Nome conta:<br>
                <input type='text' name='nome_conta' class='form-control' ><br>
                Banco:<br>
                <input type='number' name='banco' class='form-control' onkeypress="$(this).mask('000');" ><br>
                Agencia:<br>
                <input type='number' name='agencia' class='form-control' onkeypress="$(this).mask('000000');"><br>
                Conta corrente:<br>
                <input type="number" class='form-control' name="conta_corrente" onkeypress="$(this).mask('000000000');"><br>
                
                <input id="btn" type='submit' class='btn btn-success' value='Cadastrar' >
                <p id='p' style="font-size: 20px; margin-top: 15px;  "class="text-danger" ></p>
                <p id='p1' style="font-size: 20px; padding: ;  "class="text-danger" ></p>
                
                </div>
            </form>
        </div>        
    </body>
</html>