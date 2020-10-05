<%-- 
    Document   : sobre
    Created on : 5 de out de 2020, 00:16:29
    Author     : yvezu
--%>
<%@page import="br.edu.fatecpg.poo.p1.Disciplina" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Disciplina a = new Disciplina("Yve Jose Zulatto", 1290481912036L, 7, "Matéria", "ementa",4,10 );%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO P1</title>
    </head>
    <body>
        <%@include file="WEB-INF/menu.jspf"%>
        <h1>Sobre mim</h1>
        <h2>Nome:<%=a.getNameAluno()%></h2>
        <h2>RA:<%=a.getRa()%></h2>
        <h2>Link do GitHub: <a href="https://github.com/zulatto"</a></h2>
    </body>
</html>
