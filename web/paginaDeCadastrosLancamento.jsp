<%-- 
    Document   : paginaDeCadastrosCategoria
    Created on : 23/12/2021, 10:17:02
    Author     : jvbor
--%>

<%@page import="Aplicacao.Lancamento"%>
<%@page import="DAO.CadastrarLancamentoDAO"%>
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
            Lancamento objLan = new Lancamento();
            
            objLan.setId_conta(request.getParameter("id_conta"));
            objLan.setId_categoria(request.getParameter("id_categoria"));
            objLan.setValor(request.getParameter("valor"));
            objLan.setOperacao(request.getParameter("operacao"));
            objLan.setData(request.getParameter("data"));
            objLan.setDescricao(request.getParameter("descricao"));
            
            CadastrarLancamentoDAO lanDAO = new CadastrarLancamentoDAO();
            lanDAO.CadastrarLancamento(objLan);
       
            
        %>
        
        <%
            CadastrarLancamentoDAO lan = new CadastrarLancamentoDAO();
            ArrayList<Lancamento> lista = lan.Cadastrados();
            
            try {
            
                for(int num = 0; num < lista.size(); num++){
                   out.println("<center>");
                   out.println("<h1>" + "Cadatro número: " + num + "</h1>");
                   out.println("<br>");
                   out.println("<Strong>Conta: </Strong>" + lista.get(num).getId_conta()+"<br>");
                   out.println("<Strong>Categoria: </Strong>" + lista.get(num).getId_categoria()+"<br>");
                   out.println("<Strong>Valor: </Strong>" + lista.get(num).getValor() +"<br>");
                   out.println("<Strong>Operação: </Strong>" + lista.get(num).getOperacao() +"<br>");
                   out.println("<Strong>Data: </Strong>" + lista.get(num).getData()+"<br>");
                   out.println("<Strong>Descrição: </Strong>" + lista.get(num).getDescricao()+"<br>");
                   out.println("</center>");
                   out.println("<br>");
                   
                 
                   %><Br><Br><%
               
               }
            } catch (Exception e) {
            
            }
            
        %>
               <center><a style="margin-bottom: 30px;" href="index.html" class="btn btn-primary">Voltar Pagina inicial</a></center>

    </body>
</html>
