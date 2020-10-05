<%-- 
    Document   : disciplinas
    Created on : 4 de out de 2020, 23:51:33
    Author     : yvezu
--%>
<%@page import="java.util.ArrayList" %>
<%@page import="br.edu.fatecpg.poo.p1.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% ArrayList<Disciplina>disciplinaList = (ArrayList)application.getAttribute("disciplinaList");
if(disciplinaList == null){
    disciplinaList = new ArrayList<>();
    disciplinaList.add(new Disciplina("Yve Jose Zulatto", 1290481912036L, 7, "Programação Orientada a Objetos", "ementa", 4, 10));
    disciplinaList.add(new Disciplina("Yve Jose Zulatto", 1290481912036L, 7, "Banco de Dados", "ementa", 4, 10));
    disciplinaList.add(new Disciplina("Yve Jose Zulatto", 1290481912036L, 7, "Engenharia de Software III", "ementa", 4, 10));
    disciplinaList.add(new Disciplina("Yve Jose Zulatto", 1290481912036L, 7, "Metodologia de Pesquisa Cientifica Tecnologica", "ementa", 4, 10));
    disciplinaList.add(new Disciplina("Yve Jose Zulatto", 1290481912036L, 7, "Ingles IV", "ementa", 4, 10));
    disciplinaList.add(new Disciplina("Yve Jose Zulatto", 1290481912036L, 7, "Sistemas Operacionais", "ementa", 4, 10));
    disciplinaList.add(new Disciplina("Yve Jose Zulatto", 1290481912036L, 7, "Linguagem de Programção IV", "ementa", 4, 10));
    application.setAttribute("disciplinaList", disciplinaList);
    }
    if(request.getParameter("change")!= null){
    int i = Integer.parseInt(request.getParameter("i"));
    Disciplina alter = disciplinaList.get(i);
    try{
        alter.setNota(Double.parseDouble(request.getParameter("newnota")));
    }catch(Exception e){
    alter.setNota(0.0);
    }
    response.sendRedirect(request.getRequestURI());
    }
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO P1</title>
    </head>
    <body>
        <%@include file="WEB-INF/menu.jspf" %>
        <h1>POO P1</h1>
        <h1>Disciplinas</h1>
        <hr>
        <table border=".3"
               <hr/>
        <tr>
            <th>Nome</th>
            <th>Ementa</th>
            <th>Ciclo</th>
            <th>Nota</th>
            <th>Editar</th>
        </tr>
        <%for(int i = 0; i < disciplinaList.size(); i++){%>
        </tr>
        <tr>
            <% Disciplina a = disciplinaList.get(i);%>
            <td><%=a.getName()%></td>
            <td><%=a.getEmenta()%></td>
            <td><%=a.getCiclo()%></td>
            <td><%=a.getNota()%></td>
            <td>
                <form>
                    <input type="text" name="newnota"/>
                    <input type="hidden" name="i" value="<%=i%>"/>
                    <input type="submit" name="Change" value="Salvar"/>
                </form>
            </td>
        </tr>
            <%}%>
</table>
    </body>
</html>
