package com.example.proyectofinal;

public class Ayuda
{

    //atributos
        private int id;

        private String solicitud;

        private String descripcion;

        private String tipo_ayuda;

        private int solicitante_id;

        private int contribuyente_id;

        //getter setter
    public void setId (int id){
        this.id = id;
    }
    public int getId (){return id;}

    public void setSolicitud(String solicitud) {this.solicitud = solicitud;}

    public String getSolicitud () {return this.solicitud;}

    public void setDescripcion (String descripcion)
    {
        this.descripcion = descripcion;
    }
    public String getDescripcion () {return descripcion;}

    public void setTipo_ayuda(String tipo_ayuda) {
        this.tipo_ayuda = tipo_ayuda;
    }
    public String getTipoayuda(){return tipo_ayuda;}

    public void setSolicitante_id(int solicitante_id)
    {
        this.solicitante_id = solicitante_id;
    }

    public int getSolicitante_id(){return solicitante_id;}

    public void setContribuyente_id(int contribuyente_id)
    {
        this.contribuyente_id = contribuyente_id;
    }

    public int getContribuyente_id()
    {
        return this.contribuyente_id;
    }
}
