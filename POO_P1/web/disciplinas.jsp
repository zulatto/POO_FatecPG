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
            if(request.getParameter("nome")!=null){
                String nome = (String)request.getParameter("nome");
                String ementa = (String)request.getParameter("ementa");
                int ciclo = Integer.parseInt(request.getParameter("ciclo"));
                Double nota = Double.parseDouble(request.getParameter("nota"));
                
                Disciplina.insert(nome,ementa,ciclo,nota);
            }
           if(request.getParameter("id")!=null){
                Disciplina.delete(Long.parseLong(request.getParameter("id")));
            }
        %>
        
        
        <%@include file="WEB-INF/menu.jspf" %>
        
        <h1>POO P1</h1>
        <h1>Disciplinas</h1>
        <table>
            <tr>
                <th>Disciplina</th>
                <th>Ementa</th>
                <th>Ciclo</th>
                <th>Nota</th>
                <th>Alterar</th>
            </tr>
            <% for ( Disciplina x: Disciplina.getList()) { %>
            <tr>
                <td><%= x.getNome() %></td>
                <td><%= x.getEmenta()%></td>
                <td><%= x.getCiclo()%></td>
                <td><%= x.getNota()%></td>
            </tr>
            <form>
                <input type="hidden" name="id" value="<%=x.getRowId()%>">
                <input type="submit" value="Deletar">
            </form>
        </td>
        </tr>
            <%}%>
        </table>
        <h2>Add Disciplinas</h2>
        <form>
            <input type="text" name="nome" placeholder="nome">
            <input type="text" name="ementa" placeholder="ementa">
            <input type="number" name="ciclo" placeholder="ciclo">
            <input type="double" name="nota" placeholder="nota">
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
