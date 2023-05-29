<%--
  Created by IntelliJ IDEA.
  User: juanj
  Date: 27/05/2023
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PANEL CONTRIBUYENTE</title>
</head>
<body>
<h1>Bienvenido, <%= session.getAttribute("nombre") %></h1>
<%
    Class.forName("org.sqlite.JDBC");

    String db_url = "jdbc:sqlite://C:/Users/juanj/Desktop/Programacion-main/proyectofinal/base de datos/proyecto_programacion_bueno";

    Connection conexion = DriverManager.getConnection(db_url);

    String muestraAyudas = "SELECT id, solicitud, descripcion, tipo_ayuda, solicitante_id, solicitante_nombre, estado FROM ayuda";

    Statement stmt = conexion.createStatement();

    ResultSet resultSet = stmt.executeQuery(muestraAyudas);
%>
<table class="ayudas" border = "1">
    <thead>
    <tr>
        <th>Nombre del solicitante</th>
        <th>Solicitud</th>
        <th>descripcion</th>
        <th>necesidad</th>
    </tr>
    </thead>
    <tbody>
    <% while (resultSet.next()) { %>
    <tr>
        <td><%= resultSet.getString("solicitante_nombre") %></td>
        <td><%= resultSet.getString("solicitud") %></td>
        <td><%= resultSet.getString("descripcion") %></td>
        <td><%= resultSet.getString("tipo_ayuda") %></td>
        <td><a href="proces_aceptar_Ayuda.jsp">
            <button type="button">ayudar</button>
        </a></td>
    </tr>
    <% } %>
    </tbody>
</table>

<%
    resultSet.close();
    stmt.close();
    conexion.close();
%>

</body>
</html>