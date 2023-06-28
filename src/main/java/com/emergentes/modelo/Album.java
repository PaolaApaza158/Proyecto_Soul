
package com.emergentes.modelo;

import java.sql.Date;

public class Album {
    private int album_id;
    private String titulo;
    private int artista_id;
    private Date fecha_lanzamiento;
    private String portada_img;
    private int grupo_id;
    private String artista;
    private String grupo;

    public Album() {
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

    public int getAlbum_id() {
        return album_id;
    }

    public void setAlbum_id(int album_id) {
        this.album_id = album_id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public int getArtista_id() {
        return artista_id;
    }

    public void setArtista_id(int artista_id) {
        this.artista_id = artista_id;
    }

    
    public Date getFecha_lanzamiento() {
        return fecha_lanzamiento;
    }

    public void setFecha_lanzamiento(Date fecha_lanzamiento) {
        this.fecha_lanzamiento = fecha_lanzamiento;
    }

    public String getPortada_img() {
        return portada_img;
    }

    public void setPortada_img(String portada_img) {
        this.portada_img = portada_img;
    }

    public String getArtista() {
        return artista;
    }

    public void setArtista(String artista) {
        this.artista = artista;
    }

    @Override
    public String toString() {
        return "Album{" + "album_id=" + album_id + ", titulo=" + titulo + ", artista_id=" + artista_id + ", fecha_lanzamiento=" + fecha_lanzamiento + ", portada_img=" + portada_img + ", grupo_id=" + grupo_id + ", artista=" + artista + ", grupo=" + grupo + '}';
    }

}
