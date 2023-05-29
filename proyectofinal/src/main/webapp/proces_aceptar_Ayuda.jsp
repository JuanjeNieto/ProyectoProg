<%--
  Created by IntelliJ IDEA.
  User: juanj
  Date: 29/05/2023
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<%
    Class.forName("org.sqlite.JDBC");
    String db_url = "jdbc:sqlite://C:/Users/juanj/Desktop/Programacion-main/proyectofinal/base de datos/proyecto_programacion_bueno";
    Connection conexion = DriverManager.getConnection(db_url);

    // Obtener los datos del usuario solicitante
    int solicitanteId = Integer.parseInt(request.getParameter("solicitante_id"));
    String obtenerSolicitante = "SELECT nombre, email, telefono FROM usuario WHERE id = ?";
    PreparedStatement pstmt = conexion.prepareStatement(obtenerSolicitante);
    pstmt.setInt(1, solicitanteId);
    ResultSet rs = pstmt.executeQuery();

    String nombre = "";
    String email = "";
    String telefono = "";

    if (rs.next()) {
        nombre = rs.getString("nombre");
        email = rs.getString("email");
        telefono = rs.getString("telefono");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Detalles del Solicitante</title>
</head>
<body>
<h1>Detalles del Solicitante</h1>
<p>Nombre: <%= nombre %></p>
<p>Email: <%= email %></p>
<p>Teléfono: <%= telefono %></p>
</body>
</html>

<%
    rs.close();
    pstmt.close();
    conexion.close();
%>

