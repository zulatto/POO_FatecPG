<%-- 
    Document   : index
    Created on : 21 de set de 2020, 21:05:37
    Author     : zulatto
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.fatecpg.poo.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/styles.css">
        <title>Contatos</title>
    </head>
    <body>
        <%
            ArrayList<Contato> listaContato = (ArrayList) application.getAttribute("listaContato");
            if (listaContato == null) {
                listaContato = new ArrayList<>();
                listaContato.add(new Contato("Teste", 123456789, "teste@teste.com"));
                listaContato.add(new Contato("Teste2", 987654321, "teste2@teste2.com"));
                application.setAttribute("listaContato", listaContato);
            }
            if (request.getParameter("adicionar") != null) {
                String name = request.getParameter("name");
                int telefone = Integer.parseInt(request.getParameter("telefone"));
                String email = request.getParameter("email");
                listaContato.add(new Contato(name, telefone, email));
                response.sendRedirect(request.getRequestURI());
            }
            if (request.getParameter("remove") != null) {
                int i = Integer.parseInt(request.getParameter("i"));
                listaContato.remove(i);
                response.sendRedirect(request.getRequestURI());
            }
        %>
        <form>
            <label for="name">Nome</label>
            <input type="text" name="name" id="name" />
            <label for="telefone">Telefone</label>
            <input type="number" maxlength="11" name="telefone" id="telefone" />
            <label for="email">E-mail</label>
            <input type="email" name="email" id="email" />
            <input type="submit" name="adicionar" value="Adicionar" />
        </form>
        <table>
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nome</th>
                    <th>Telefone</th>
                    <th>E-mail</th>
                </tr>
            </thead>
            <tbody>
                <% for (int i = 0; i < listaContato.size(); i++) {%>
                <tr>
                    <td><%=i + 1%></td>
                    <% Contato c = listaContato.get(i);%>
                    <td><%=c.getName()%></td>
                    <td><%=c.getTelefone()%></td>
                    <td><%=c.getEmail()%></td>
                    <td>
                        <form>
                            <input type="hidden" name="i" value="<%= i%>"/>
                            <input type="submit" name="remove" value="Remover"/>
                        </form>
                    </td>
                </tr>
                <% }%>
            </tbody>
        </table>
    </body>
</html>
