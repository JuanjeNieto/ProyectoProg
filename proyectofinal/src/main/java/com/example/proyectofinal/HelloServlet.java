package com.example.proyectofinal;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
    }

    public static Connection getUrlConnection() throws SQLException, ClassNotFoundException {
        Class.forName("org.sqlite.JDBC");
        Connection conexion;

        //Conexion juanje
        if(System.getProperty("os.name").equals("Windows 11") && System.getProperty("user.name").equals("juanj")){
            return conexion = DriverManager.getConnection("jdbc:sqlite/C:/Users/juanj/Desktop/Programacion-main/proyectofinal/base de datos");
        }
        // fernando casa
        if(System.getProperty("os.name").equals("Windows 10") && System.getProperty("user.name").equals("fernando")){
            return conexion = DriverManager.getConnection("jdbc:sqlite/C:/Users/josem/IdeaProjects/proyectofinal/base de datos/proyecto_programacion_bueno");
        }
        // fernando portatil

        //no conectado
        else{
            return conexion = DriverManager.getConnection("");
        }
    }


}