package com.example.proyectofinal;

import java.sql.*;

public class DatabaseHelper {

    private static final String DB_URL = "jdbc:sqlite://C:/Users/juanj/Desktop/Programacion-main/proyectofinal/base de datos/proyecto_programacion_bueno";

    public static boolean verificarCredenciales(String nombre, String contraseña) throws SQLException {
        Connection connection = DriverManager.getConnection(DB_URL);
        PreparedStatement statement = connection.prepareStatement("SELECT * FROM usuario WHERE nombre = ? AND contraseña = ?");
        statement.setString(1, nombre);
        statement.setString(2, contraseña);
        ResultSet resultSet = statement.executeQuery();

        boolean result = resultSet.next();

        resultSet.close();
        statement.close();
        connection.close();

        return result;
    }

    public static boolean existeEnTablaContribuyente(String nombre) throws SQLException {
        Connection connection = DriverManager.getConnection(DB_URL);
        PreparedStatement statement = connection.prepareStatement("SELECT * FROM contribuyente WHERE nombre = ?");
        statement.setString(1, nombre);
        ResultSet resultSet = statement.executeQuery();

        boolean result = resultSet.next();

        resultSet.close();
        statement.close();
        connection.close();

        return result;
    }

    public static boolean existeEnTablaSolicitante(String nombre) throws SQLException {
        Connection connection = DriverManager.getConnection(DB_URL);
        PreparedStatement statement = connection.prepareStatement("SELECT * FROM solicitante WHERE nombre = ?");
        statement.setString(1, nombre);
        ResultSet resultSet = statement.executeQuery();

        boolean result = resultSet.next();

        resultSet.close();
        statement.close();
        connection.close();

        return result;
    }
}