package com.emergentes.modelo;

import java.sql.Date;

public class Artista {

    private int artista_id;
    private String nombre;
    private String genero;
    private Date fecha_nacimiento;
    private String nacionalidad;
    private String artista_img;
    private int grupo_id;
    private String grupo;

    public Artista() {
    }

    public int getArtista_id() {
        return artista_id;
    }

    public void setArtista_id(int artista_id) {
        this.artista_id = artista_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public Date getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(Date fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public String getNacionalidad() {
        return nacionalidad;
    }

    public void setNacionalidad(String nacionalidad) {
        this.nacionalidad = nacionalidad;
    }

    public String getArtista_img() {
        return artista_img;
    }

    public void setArtista_img(String artista_img) {
        this.artista_img = artista_img;
    }

    public int getGrupo_id() {
        return grupo_id;
    }

    public void setGrupo_id(int grupo_id) {
        this.grupo_id = grupo_id;
    }

    public String getGrupo() {
        return grupo;
    }

    public void setGrupo(String grupo) {
        this.grupo = grupo;
    }

    @Override
    public String toString() {
        return "Artista{" + "artista_id=" + artista_id + ", nombre=" + nombre + ", genero=" + genero + ", fecha_nacimiento=" + fecha_nacimiento + ", nacionalidad=" + nacionalidad + ", artista_img=" + artista_img + ", grupo_id=" + grupo_id + ", grupo=" + grupo + '}';
    }
}
