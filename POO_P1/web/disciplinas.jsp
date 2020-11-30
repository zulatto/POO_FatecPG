<%-- 
    Document   : disciplinas
    Created on : 4 de out de 2020, 23:51:33
    Author     : yvezu
--%>
<%@page import="java.util.ArrayList" %>
<%@page import="br.edu.fatecpg.poo.p1.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO P1</title>
    </head>
    <body>
        <%
            ArrayList<Disciplina> disciplinas = (ArrayList)application.getAttribute("disciplinas");
            
            if (disciplinas == null) {
                disciplinas = Disciplina.getList();
            }
            
            String[] notas = request.getParameterValues("notas");
            
            if(notas != null) {
                for (int i = 0; i < disciplinas.size(); i++ ) {
                    disciplinas.get(i).setNota(Double.parseDouble(notas[i]));
                }
                
            application.setAttribute("disciplinas", disciplinas);
            }
            
            
        %>
        
        <%@include file="WEB-INF/menu.jspf" %>
        
        <h1>POO P1</h1>
        <h1>Disciplinas</h1>
         <form>
        <table>
            <tr>
                <th>Disciplinas</th>
                <th>Ementa</th>
                <th>Ciclo</th>
                <th>Nota</th>
                <th>Alterar</th>
            </tr>
            <% for ( Disciplina disciplina : disciplinas) { %>
            <tr>
                <td><%= disciplina.getNome() %></td>
                <td><%= disciplina.getEmenta()%></td>
                <td><%= disciplina.getCiclo()%></td>
                <td><%= disciplina.getNota()%></td>
                <td><input type="text" name="notas" value="<%= disciplina.getNota()%>"></td>
            </tr>
            
            <%}%>
        </table>
        <input type="submit" value="Enviar">
        </form>
    </body>
</html>
