<%-- 
    Document   : paginaDeCadastrosCategoria
    Created on : 23/12/2021, 10:17:02
    Author     : jvbor
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Aplicacao.categoriaLancamento"%>
<%@page import="DAO.CadastrarCategoriaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <title>Categorias</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-3.6.0.min.js.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastros categorias</title>
        <header class="container-fluid" style="background-color: blueviolet; padding: 10px" >
        <h1 class="text-center">Banco</h1>
        </header>
    </head>
    <body>
        <center style=" padding: 15px;"><h1>Cadastrados</h1></center>
        <%
            categoriaLancamento objCat = new categoriaLancamento();
            objCat.setDescricao(request.getParameter("descricao"));
            
            CadastrarCategoriaDAO catDAO = new CadastrarCategoriaDAO();
            catDAO.CadastrarCategoria(objCat);
       
            
        %>
        
        <%
            CadastrarCategoriaDAO cat = new CadastrarCategoriaDAO();
            ArrayList<categoriaLancamento> lista = cat.Cadastrados();
            
            try {
            
                for(int num = 0; num < lista.size(); num++){
                       out.println("<center>");
                       out.println("<h1>" + "Cadatro número: " + num + "</h1>");
                       out.println("<br>");
                       out.println("Descrição: " + lista.get(num).getDescricao() +"<br>");
                       out.println("</center>");
            }
                } catch (Exception e) {
            
            }
            
        %>
               <center><a style="margin-bottom: 30px;" href="index.html" class="btn btn-primary">Voltar Pagina inicial</a></center>

    </body>
</html>
