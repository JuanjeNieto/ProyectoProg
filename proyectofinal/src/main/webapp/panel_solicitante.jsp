<%--
  Created by IntelliJ IDEA.
  User: juanj
  Date: 27/05/2023
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PANEL SOLICITANTE</title>
</head>
<body>
<h1>Bienvenido, <%= session.getAttribute("nombre") %></h1>

<form action="guardarAyuda.jsp" method="post">
    <label for="solicitud">Solicitud:</label>
    <input type="text" name="solicitud" id="solicitud" required><br><br>

    <label for="descripcion">Descripción:</label>
    <textarea name="descripcion" id="descripcion" rows="4" cols="50" required></textarea><br><br>

    <label for="tipo_ayuda">Tipo de Ayuda:</label>
    <input type="text" name="tipo_ayuda" id="tipo_ayuda" required><br><br>


    <input type="submit" value="Guardar">
</form>
<div>
    <p>quiero ver mis ayudas ya solicitadas</p>
    <a href="vistaMisAyudas.jsp">Ver ayudas</a>
</div>
</body>
</html>
