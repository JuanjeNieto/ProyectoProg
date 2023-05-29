<%--
  Created by IntelliJ IDEA.
  User: juanj
  Date: 27/05/2023
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.example.proyectofinal.DatabaseHelper" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    Class.forName("org.sqlite.JDBC");

    String nombre = request.getParameter("nombre");
    String contraseña = request.getParameter("contraseña");

    if ((nombre.equals("admin")) && (contraseña.equals("admin"))) {
        session.setAttribute("nombre", nombre);
        response.sendRedirect("adminIndex.jsp");
    } else if (DatabaseHelper.verificarCredenciales(nombre, contraseña)) {
        if (DatabaseHelper.existeEnTablaContribuyente(nombre)) {
            session.setAttribute("nombre", nombre);
            response.sendRedirect("panel_contribuyente.jsp");
        } else if (DatabaseHelper.existeEnTablaSolicitante(nombre)) {
            session.setAttribute("nombre", nombre);
            response.sendRedirect("panel_solicitante.jsp");
        }
    } else {
        // Mostrar un mensaje de error de inicio de sesión
        response.sendRedirect("login.jsp?error=1");
    }
%>

</body>
</html>
