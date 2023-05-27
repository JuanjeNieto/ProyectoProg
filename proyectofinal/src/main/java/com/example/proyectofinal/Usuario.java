package com.example.proyectofinal;

//atributos
public class Usuario {
    private int id;
    private String nombre;
    private String mail;
    private int phone;

    private String pass;

    //constructores

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }


    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }


    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getMail() {
        return mail;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public int getPhone() {
        return phone;
    }


    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getPass() {
        return pass;
    }

    public Usuario(int id, String nombre, String mail, int phone, String pass) {
        this.id = id;
        this.nombre = nombre;
        this.mail = mail;
        this.pass = pass;
    }
    public Usuario(int id, String nombre)
    {
        this.id = id;
        this.nombre = nombre;
    }
}
