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
        <title>JSP Page</title>
    </head>
    <body>
       <h1>Usuário</h1>
            <form  name= "form1" method="post" action="frmExcluirUser.jsp" onsubmit="required()">
                <div class="form-group" >
                
                ID:<br>
                <input type='text' name='id' class='form-control' value="<%=request.getParameter("id")%>" ><br>    
                Nome:<br>
                <input type='text' name='nome' class='form-control'value="<%=request.getParameter("nome")%>" ><br>
                Senha:<br>
                <input type='password' name='senha' class='form-control'value="<%=request.getParameter("senha")%>" ><br>
                CPF:<br>
                <input type="text" name ='cpf' class="form-control" onkeypress="$(this).mask('000.000.000-00');" value="<%=request.getParameter("cpf")%>" ><br>
              
                <label for="suspenso">Suspenso:</label>
                    <select name="suspenso" id="valor" value="<%=request.getParameter("suspenso")%>">
                      <option value="S">Suspenso</option>
                      <option value="N">Não Suspenso</option>                      
                    </select><br><br>
                    <button type="submit">Excluir</button>
            </form>        
    </body>
</html>
