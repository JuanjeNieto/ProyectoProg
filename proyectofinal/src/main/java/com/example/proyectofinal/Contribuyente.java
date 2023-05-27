package com.example.proyectofinal;

public class Contribuyente extends Usuario{
    //atributo
    private String habilidad;


    public void setHabilidad(String habilidad) {
        this.habilidad = habilidad;
    }

    public String getHabilidad() {
        return habilidad;
    }

    //constructor
    public Contribuyente(int id, String nombre) {
        super(id, nombre);
        this.habilidad = getHabilidad();
    }
}
