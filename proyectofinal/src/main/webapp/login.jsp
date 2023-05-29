<%--
  Created by IntelliJ IDEA.
  User: juanj
  Date: 24/05/2023
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head> <title>Loggin</title>
  <style>
    <%@include file="styles/login.css"%>
    body {
      background-image: url("styles/images/879800.jpg");
      background-size: cover;
      background-repeat: no-repeat;
    }

     #contraseña:focus {
       -webkit-text-security: none; /* Para navegadores basados en WebKit */
       text-security: none; /* Para navegadores estándar */
     }
  </style>
</head>
<body>
<header>
  <nav>
    <div class="nav-box"><a href="index.jsp">Inicio</a></div>
    <div class="nav-box"><a href="registrationIndex.jsp">Registrarse</a></div>
    <div class="nav-box"><a href="login.jsp">Entrar</a></div>
  </nav>
</header>

<div>
  <h1>¡Entra!</h1>



  <form id="login-form" method="POST" action="login_process.jsp">
    <label for="nombre">Usuario:</label>
    <input type="text" id="nombre" name="nombre" required>

    <label for="contraseña">Contraseña:</label>
    <input type="password" id="contraseña" name="contraseña" required oninput="mostrarContrasena(this)">

    <p>
      ¿No tienes una cuenta? <a href="registrationIndex.jsp">Regístrate</a>
    </p>

    <input class="button" type="submit" value="Iniciar Sesión">
  </form>

  <div id="message-container">
    <p class="message" style="display: none">Ya has iniciado sesión</p>
    <button class="button" id="volver-al-inicio-button">Volver al inicio</button>
  </div>
</div>
</body>
</html>
