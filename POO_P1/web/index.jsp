<%-- 
    Document   : index
    Created on : 4 de out de 2020, 23:44:11
    Author     : yvezu
--%>

<%@page import="br.edu.fatecpg.poo.p1.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO P1</title>
    </head>
    <body>
        <%@include file="WEB-INF/menu.jspf" %>
        
         <% ArrayList<Disciplina> disciplinas = Disciplina.getList(); %>
        
        <h2>Yve Jose Zulatto</h2>
        <h3>1290481912036<h3>
                
        <h2>Quantidade de Disciplinas: <%= disciplinas.size() %></h2>
                
        <% for ( Disciplina disciplina : disciplinas) { %>
            <h3><%= disciplina.getNome()%></h3>
        <%}%>
    </body>
</html>
