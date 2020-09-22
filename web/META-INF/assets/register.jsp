<%-- 
    Document   : index
    Created on : 21 de set de 2020, 22:51:09
    Author     : WINDOWS 10
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.fatecpg.poo.Register"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/styles.css">
        <title>Cadastros</title>
    </head>
    <body>
        <%
            ArrayList<Register> registerList = (ArrayList) application.getAttribute("registerList");
            if (registerList == null) {
                registerList = new ArrayList<>();
                registerList.add(new Register("Nayara", 93456-4578, "nayara@fatec.com"));
                registerList.add(new Register("Eduardo", 93456-4578, "eduardo@fatec.com"));
                application.setAttribute("listaContato", registerList);
            }
            if (request.getParameter("adicionar") != null) {
                String name = request.getParameter("name");
                int telefone = Integer.parseInt(request.getParameter("telefone"));
                String email = request.getParameter("email");
                registerList.add(new Register(name, telefone, email));
                response.sendRedirect(request.getRequestURI());
            }
            if (request.getParameter("remove") != null) {
                int i = Integer.parseInt(request.getParameter("i"));
                registerList.remove(i);
                response.sendRedirect(request.getRequestURI());
            }
        %>
        <form>
            <label for="name">Nome</label>
            <input type="text" name="name" id="name" />
            <label for="telephone">Telefone</label>
            <input type="number" maxlength="11" name="telephone" id="telephone" />
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
                <% for (int i = 0; i < registerList.size(); i++) {%>
                <tr>
                    <td><%=i + 1%></td>
                    <% Register r = registerList.get(i);%>
                    <td><%=r.getName()%></td>
                    <td><%=r.getTelephone()%></td>
                    <td><%=r.getEmail()%></td>
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


