<%-- 
    Document   : index
    Created on : 4 de out de 2020, 23:44:11
    Author     : yvezu
--%>

<%@page import="br.edu.fatecpg.poo.p1.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% Disciplina a = new Disciplina("Yve Jose Zulatto", 1290481912036L, 7, "Matéria", "ementa",4,10 );%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO P1</title>
    </head>
    <body>
        <%@include file="WEB-INF/menu.jspf" %>
        <h1>Nome: <%= a.getNameAluno()%></h1>
        <h1>RA: <%= a.getRa()%> </h1>
        <h1>Quantidade de disciplinas: <%= a.getQtdm()%></h1>
    </body>
</html>
