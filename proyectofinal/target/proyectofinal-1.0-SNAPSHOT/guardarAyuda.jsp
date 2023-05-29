<%--
  Created by IntelliJ IDEA.
  User: juanj
  Date: 28/05/2023
  Time: 0:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<head>
    <title>Title</title>
</head>
<body>
<%
    Class.forName("org.sqlite.JDBC");
    String db_url = "jdbc:sqlite://C:/Users/juanj/Desktop/Programacion-main/proyectofinal/base de datos/proyecto_programacion_bueno";


    //insercion en la tabla ayuda
    String guardaAyuda = "INSERT INTO ayuda (solicitud, descripcion, tipo_ayuda,solicitante_nombre) VALUES (?, ?, ?, ?)";


    Connection conexion = DriverManager.getConnection(db_url);
    PreparedStatement pstmt = conexion.prepareStatement(guardaAyuda);
    pstmt.setString(1, request.getParameter("solicitud"));
    pstmt.setString(2, request.getParameter("descripcion"));
    pstmt.setString(3, request.getParameter("tipo_ayuda"));
    pstmt.setString(4, (String) session.getAttribute("nombre"));

    pstmt.executeUpdate();

    response.sendRedirect("vistaMisAyudas.jsp");
%>
</body>
</html>
