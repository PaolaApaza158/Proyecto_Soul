package com.emergentes.dao;

import com.emergentes.modelo.Artista;
import com.emergentes.utiles.ConexionDB;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ArtistaDAOimpl extends ConexionDB implements ArtistaDAO {

    @Override
    public void insert(Artista artista) throws Exception {
        try {
            this.conectar();
            String sql = "INSERT INTO artista (nombre, genero, fecha_nacimiento, nacionalidad, artista_img, grupo_id) values (?,?,?,?,?,?)";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, artista.getNombre());
            ps.setString(2, artista.getGenero());
            ps.setDate(3, artista.getFecha_nacimiento());
            ps.setString(4, artista.getNacionalidad());
            ps.setString(5, artista.getArtista_img());
            ps.setInt(6, artista.getGrupo_id());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void update(Artista artista) throws Exception {
        try {
            this.conectar();
            String sql="UPDATE artista SET nombre=?, genero=?, fecha_nacimiento=?, nacionalidad=?, artista_img=?, grupo_id=? where artista_id = ?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, artista.getNombre());
            ps.setString(2, artista.getGenero());
            ps.setDate(3, artista.getFecha_nacimiento());
            ps.setString(4, artista.getNacionalidad());
            ps.setString(5, artista.getArtista_img());
            ps.setInt(6, artista.getGrupo_id());
            ps.setInt(7, artista.getArtista_id());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public void delete(int id) throws Exception {
        try {
            this.conectar();
            String sql="DELETE FROM artista WHERE artista_id = ?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    @Override
    public Artista getById(int id) throws Exception {
        Artista art = new Artista();
        try {
            this.conectar();
            String sql = "SELECT * FROM artista WHERE artista_id = ?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                art.setArtista_id(rs.getInt("artista_id"));
                art.setNombre(rs.getString("nombre"));
                art.setGenero(rs.getString("genero"));
                art.setFecha_nacimiento(rs.getDate("fecha_nacimiento"));
                art.setNacionalidad(rs.getString("nacionalidad"));
                art.setArtista_img(rs.getString("artista_img"));
                art.setGrupo_id(rs.getInt("grupo_id"));

            }

        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return art;
    }

    @Override
    public List<Artista> getAll() throws Exception {
        List<Artista> lista = null;
        try {
            this.conectar();
            String sql = "SELECT a.*, gr.nombre AS grupo FROM artista a ";
            sql += "LEFT JOIN grupo gr ON a.grupo_id = gr.grupo_id";

            PreparedStatement ps = this.conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            lista = new ArrayList<Artista>();

            while (rs.next()) {
                Artista art = new Artista();

                art.setArtista_id(rs.getInt("artista_id"));
                art.setNombre(rs.getString("nombre"));
                art.setGenero(rs.getString("genero"));
                art.setFecha_nacimiento(rs.getDate("fecha_nacimiento"));
                art.setNacionalidad(rs.getString("nacionalidad"));
                art.setArtista_img(rs.getString("artista_img"));
                art.setGrupo_id(rs.getInt("grupo_id"));
                art.setGrupo(rs.getString("grupo"));

                lista.add(art);
            }
            rs.close();
            ps.close();

        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return lista;
    }

}
