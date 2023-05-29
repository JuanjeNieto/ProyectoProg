<%--
  Created by IntelliJ IDEA.
  User: juanj
  Date: 24/05/2023
  Time: 10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <style>
        <%@include file="styles/user_registration.css"%>
        body {
            background-image: url("styles/images/fruta-diablo-one-piece.jpg");
            background-size: auto;
            background-repeat: repeat;
        }
    </style>
</head>
<body>
<header>
    <nav>
        <ul>
            <li class="nav-box"><a href="index.jsp">Inicio</a></li>
            <li class="nav-box"><a href="registrationIndex.jsp">Elegir rol</a></li>
            <li class="nav-box"><a href="login.jsp">Entrar</a></li>
        </ul>
    </nav>
</header>

<div class="centered-content">
    <h1>Registrate aquí</h1>

    <form class="register-form" id="register-form" method="post" action="r_process_contri.jsp">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre">

        <label for="contrasena">Contrase&ntilde;a:</label>
        <input type="password" id="contrasena" name="contrasena" required>


        <div id="campo-mail">
            <label for="email">Correo electrónico:</label>
            <input type="email" id="email" name="email">
        </div>

        <div class="show-none" id="campo-telefono">
            <label for="telefono">Telefono:</label>
            <input type="text" id="telefono" name="telefono" minlength="9" maxlength="9">
        </div>
        <div class="show-none" id="campo-habilidad">
            <label for="habilidad">Habilidad:</label>
            <input type="text" id="habilidad" name="habilidad">
        </div>

        <input class="button" type="submit" value="Registrarse">
        <p class="message">&#191;Ya tienes una cuenta? <a href="login.jsp">Inicio de sesión</a></p>
    </form>

    <div id="message-container" style="display: none;">
        <p class="message" >Ya estás dentro</p>
        <button class="button" id="logout-button">Salir (cerrar sesión)</button>
    </div>
</div>
</body>
</html>
