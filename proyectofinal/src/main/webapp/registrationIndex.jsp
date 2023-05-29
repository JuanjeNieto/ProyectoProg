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
<h2>Qué debes saber antes de registrate</h2>
<div class="container">
    <div>
        <h2>Contribuyente</h2>
        <p>El contribuyente es aquel individuo o entidad que se encuentra dispuesto a brindar su ayuda y apoyo a los solicitantes. Los contribuyentes pueden ser voluntarios, profesionales, organizaciones sin fines de lucro o cualquier persona que esté dispuesta a ofrecer sus conocimientos, habilidades o recursos para ayudar a aquellos que lo necesitan.</p>
    </div>
    <div>
        <h2>Solicitante</h2>
        <p>Se encarga de pedir ayuda en situaciones en las que lo necesita. El solicitante puede ser una persona, una organización o cualquier entidad que requiera asistencia o apoyo en alguna área específica. Puede solicitar ayuda en diferentes ámbitos, como servicios sociales, emergencias, proyectos comunitarios, entre otros.</p>
    </div>

</div>
</body>
</html>
