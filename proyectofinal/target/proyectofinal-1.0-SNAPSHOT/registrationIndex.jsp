<%--
  Created by IntelliJ IDEA.
  User: juanj
  Date: 24/05/2023
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Elección de usuario</title>
    <style>
        <%@include file="styles/user_registration.css"%>
        body {
            background-image: url("styles/images/1550310.jpg");
            background-size: cover;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>
<header>
    <nav>
        <ul>
        <li class="nav-box"><a href="index.jsp">Inicio</a></li>
        <li class="nav-box"><a href="login.jsp">Entrar</a></li>
        </ul>
    </nav>
</header>
<nav id="Cuenta">
  <ul>
    <li><a href="registration_contributor.jsp">Contributor</a></li>
    <li><a href="Registration_inquirer.jsp">Solicitante</a></li>
  </ul>
</nav>
</body>
</html>
