package com.example.danielmariads.Entities;

public class Contenido {
    private String imagen;
    private String titulo;
    private String parrafo;

    public Contenido() {
    }

    public Contenido(String imagen, String titulo, String parrafo) {
        this.imagen = imagen;
        this.titulo = titulo;
        this.parrafo = parrafo;
    }
    
    public String getImagen() {
        return imagen;
    }
    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    public String getTitulo() {
        return titulo;
    }
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
    public String getParrafo() {
        return parrafo;
    }
    public void setParrafo(String parrafo) {
        this.parrafo = parrafo;
    }

    
}
