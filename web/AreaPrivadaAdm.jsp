<%@page import="Aplicacao.Pessoa"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DAO.CadastrarAdmDAO"%>
<%@page import="DAO.CadastrarUsuarioDAO"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <!-- Meta tags Obrigatórias -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <title>Home</title>
     <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-3.6.0.min.js.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        
        <header class="container-fluid" style="background-color: blueviolet; padding: 10px; width: 100%" >
        <h1 class="text-center" style>Banco</h1>
        </header>
         </div>      
    </head>
  <style>
      body{
         background-color: black;
         background-repeat: no-repeat;
         background-attachment: fixed;
         background-size: 1920px 1080px;
      }
      p{
          font-size: 20px;
      }
      h1{
          text-align: center;
      }
      h5{
          font-size: 40px;
          
      }
      a{
          margin-top: 30px;
          size: 10px;
          
          color: white;
      }
      #menu{
        margin-top: -75px;
        margin-left: 5%;
        text-align: left;
        color: white;
        transition: all ease 0.3s;    
        width: 8%;
        cursor: pointer;
        }
    

 

  </style>
  <body>
        <%
          try {
                Pessoa pessoa = new Pessoa();
                String nome = request.getParameter("nome");
                String senha = request.getParameter("senha");
                pessoa.setNome(nome);
                pessoa.setSenha(senha);
                
                CadastrarAdmDAO objPessoa = new CadastrarAdmDAO();
                ResultSet rsAdm = objPessoa.autenticar(pessoa) ;
                
                if(rsAdm.next()){
                    RequestDispatcher rd = request.getRequestDispatcher("AreaPrivadaAdm.jsp");
                    rd.forward(request, response);
                }else{
                    RequestDispatcher rd = request.getRequestDispatcher("erro.jsp");
                    rd.forward(request, response);
                };
                
              } catch (Exception e) {
              }
          
      
      %>
  <center><div class="card text-center" style="width: 30rem; height: 35rem; margin-top: 5%;  border: 10px solid black; border-radius: 20px;">
  <div class="card-body" style="padding: 25%;">
      <h5 class="card-title" style="font-size: 30px; margin-top: -30px; margin-bottom: 40px; padding-bottom: 10%">Área do Administrador</h5>
    <p class="card-text">Lista de Ações</p>
   
    <a href="usuario.jsp" class="btn btn-primary" style="margin-left: 10px" >Cadastro Usuário</a>
    <a href="cadastroAdmin.jsp" class="btn btn-primary" style="margin-left: 10px" >Cadastro Administradores</a>
    <a href="categorias.jsp" class="btn btn-primary" style="margin-left: 10px" >Cadastrar Categoria</a>
  </div></center>

    <!-- JavaScript (Opcional) -->
    <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
    <script src="jquery-3.6.0.min.js.js"></script>
    
    <script>
        function desaparecer(){
        var menu = document.getElementById('menu')
        var drop = document.getElementById('drop')
        drop.classList.add('drophide')
      
}
    function aparecer(){
        var menu = document.getElementById('menu')
        var drop = document.getElementById('drop')

        drop.classList.remove('drophide')
    }   
       
    </script>
    
  </body>
</html>