<%--
  Created by IntelliJ IDEA.
  User: juanj
  Date: 28/05/2023
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>

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

    String nombre = (String) session.getAttribute("nombre");
    String obtenerSolicitanteId = "SELECT id FROM usuario WHERE nombre = ?";

    PreparedStatement pstmtObtenerId = conexion.prepareStatement(obtenerSolicitanteId);
    pstmtObtenerId.setString(1, nombre);
    ResultSet rsSolicitanteId = pstmtObtenerId.executeQuery();

    int solicitanteId = 0;
    if (rsSolicitanteId.next()) {
        solicitanteId = rsSolicitanteId.getInt("id");
    }

    pstmtObtenerId.close();
    rsSolicitanteId.close();

    String muestraAyudas = "SELECT id, solicitud, descripcion, tipo_ayuda, solicitante_id, solicitante_nombre, estado FROM ayuda WHERE solicitante_id = ?";

    PreparedStatement pstmtMuestraAyudas = conexion.prepareStatement(muestraAyudas);
    pstmtMuestraAyudas.setInt(1, solicitanteId);
    ResultSet resultSet = pstmtMuestraAyudas.executeQuery();
%>
<table class="ayudas" border="1">
    <thead>
    <tr>
        <th>Nombre del solicitante</th>
        <th>Solicitud</th>
        <th>DescripciÃ³n</th>
        <th>Necesidad</th>
    </tr>
    </thead>
    <tbody>
    <% while (resultSet.next()) { %>
    <tr>
        <td><%= resultSet.getString("solicitante_nombre") %></td>
        <td><%= resultSet.getString("solicitud") %></td>
        <td><%= resultSet.getString("descripcion") %></td>
        <td><%= resultSet.getString("tipo_ayuda") %></td>
    </tr>
    <% } %>
    </tbody>
</table>

<%
    resultSet.close();
    pstmtMuestraAyudas.close();
    conexion.close();
%>


</body>
</html>




