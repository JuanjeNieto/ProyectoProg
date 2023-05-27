<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>proceso de registro de contribuyente</title>
</head>
<body>
<%
    Class.forName("org.sqlite.JDBC");
    String db_url = "jdbc:sqlite://C:/Users/juanj/Desktop/Programacion-main/proyectofinal/base de datos/proyecto_programacion_bueno";


    //insercion en la tabla usuario
    String insercionUsuario = "INSERT INTO usuario (nombre, mail, telefono, contraseña) VALUES (?, ?, ?, ?)";


    Connection conexion = DriverManager.getConnection(db_url);
    PreparedStatement pstmt = conexion.prepareStatement(insercionUsuario);
    pstmt.setString(1, request.getParameter("nombre"));
    pstmt.setString(2, request.getParameter("email"));
    pstmt.setInt(3, Integer.parseInt(request.getParameter("telefono")));
    pstmt.setString(4, request.getParameter("contrasena"));

    pstmt.executeUpdate();

    ResultSet generatedKeys = pstmt.getGeneratedKeys();
    int userId = -1;
    if (generatedKeys.next()) {
        userId = generatedKeys.getInt(1);
    }

    // Inserción en la tabla contribuyente
    String insercionContribuyente = "INSERT INTO contribuyente (usuario_id, nombre, habilidad) VALUES (?, ?, ?)";

    PreparedStatement pstmt1 = conexion.prepareStatement(insercionContribuyente);
    pstmt1.setInt(1, userId);
    pstmt1.setString(2, request.getParameter("nombre"));
    pstmt1.setString(3, request.getParameter("habilidad"));

    pstmt1.executeUpdate();

    pstmt1.close();
    pstmt.close();
    conexion.close();
%>
<a href="login.jsp">Back to Login</a>
</body>
</html>