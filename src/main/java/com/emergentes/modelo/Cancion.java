package com.emergentes.modelo;

import java.sql.Time;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Cancion {

    private int cancion_id;
    private String titulo;
    private String duracion;
    private Date fecha;
    private int artista_id;
    private int album_id;
    private int genero_id;
    private int grupo_id;
    private String cancion_img;
    private String cancion_lk;
    private String artista;
    private String album;
    private String genero;
    private String grupo;

    public Cancion() {

<<<<<<< HEAD
    }

    public String getCancion_lk() {
        return cancion_lk;
    }

    public void setCancion_lk(String cancion_lk) {
        this.cancion_lk = cancion_lk;
=======
>>>>>>> e435e9c8968e6d4377bfdb1107cd2e58beb972b6
    }

    public int getCancion_id() {
        return cancion_id;
    }

    public void setCancion_id(int cancion_id) {
        this.cancion_id = cancion_id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDuracion() {
        return duracion;
    }

    public void setDuracion(String duracion) {
        this.duracion = duracion;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getArtista_id() {
        return artista_id;
    }

    public void setArtista_id(int artista_id) {
        this.artista_id = artista_id;
    }

    public int getAlbum_id() {
        return album_id;
    }

    public void setAlbum_id(int album_id) {
        this.album_id = album_id;
    }

    public int getGenero_id() {
        return genero_id;
    }

    public void setGenero_id(int genero_id) {
        this.genero_id = genero_id;
    }

    public int getGrupo_id() {
        return grupo_id;
    }

    public void setGrupo_id(int grupo_id) {
        this.grupo_id = grupo_id;
    }

    public String getCancion_img() {
        return cancion_img;
    }

    public void setCancion_img(String cancion_img) {
        this.cancion_img = cancion_img;
    }

    public String getArtista() {
        return artista;
    }

    public void setArtista(String artista) {
        this.artista = artista;
    }

    public String getAlbum() {
        return album;
    }

    public void setAlbum(String album) {
        this.album = album;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getGrupo() {
        return grupo;
<<<<<<< HEAD
    }

    public void setGrupo(String grupo) {
        this.grupo = grupo;
    }

    @Override
    public String toString() {
        return "Cancion{" + "cancion_id=" + cancion_id + ", titulo=" + titulo + ", duracion=" + duracion + ", fecha=" + fecha + ", artista_id=" + artista_id + ", album_id=" + album_id + ", genero_id=" + genero_id + ", grupo_id=" + grupo_id + ", cancion_img=" + cancion_img + ", cancion_lk=" + cancion_lk + ", artista=" + artista + ", album=" + album + ", genero=" + genero + ", grupo=" + grupo + '}';
    }

=======
    }

    public void setGrupo(String grupo) {
        this.grupo = grupo;
    }

  

    @Override
    public String toString() {
        return "Cancion{" + "cancion_id=" + cancion_id + ", titulo=" + titulo + ", duracion=" + duracion + ", fecha=" + fecha + ", artista_id=" + artista_id + ", album_id=" + album_id + ", genero_id=" + genero_id + ", grupo_id=" + grupo_id + ", cancion_img=" + cancion_img + ", artista=" + artista + ", album=" + album + ", genero=" + genero + ", grupo=" + grupo + '}';
    }

    
>>>>>>> e435e9c8968e6d4377bfdb1107cd2e58beb972b6
  
}

