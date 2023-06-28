package com.emergentes.controlador;

import com.emergentes.dao.ArtistaDAO;
import com.emergentes.dao.ArtistaDAOimpl;
import com.emergentes.dao.GrupoDAO;
import com.emergentes.dao.GrupoDAOimpl;
import com.emergentes.modelo.Artista;
import com.emergentes.modelo.Grupo;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ArtistaControlador", urlPatterns = {"/ArtistaControlador"})
public class ArtistaControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ArtistaDAO dao = new ArtistaDAOimpl();
            GrupoDAO daoGrupo = new GrupoDAOimpl();
            int id;
            List<Grupo> lista_grupo = null;
            Artista artista = new Artista();
            
            String action = (request.getParameter("action") != null) ? request.getParameter("action") : "view";
            switch (action) {
                case "add":
                    lista_grupo = daoGrupo.getAll();
                    request.setAttribute("lista_grupo", lista_grupo);
                    request.setAttribute("artista", artista);
                    request.getRequestDispatcher("frmartista.jsp").forward(request, response);
                    break;
                case "edit":
                    id = Integer.parseInt(request.getParameter("artista_id"));
                    artista = dao.getById(id);
                    lista_grupo = daoGrupo.getAll();
                    request.setAttribute("lista_grupo", lista_grupo);
                    request.setAttribute("artista", artista);
                    request.getRequestDispatcher("frmartista.jsp").forward(request, response);
                    break;
                case "delete":
                    id = Integer.parseInt(request.getParameter("artista_id"));
                    dao.delete(id);
                    response.sendRedirect("ArtistaControlador");
                    break;
                case "view":
                    List<Artista> lista = dao.getAll();
                    request.setAttribute("artista", lista);
                    request.getRequestDispatcher("artista.jsp").forward(request, response);
                    break;
            }

        } catch (Exception ex) {
            System.out.println("Error " + ex.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("artista_id"));
        String nombre = request.getParameter("nombre");
        String genero = request.getParameter("genero");
        String fecha_nacimiento = request.getParameter("fecha_nacimiento");
        String nacionalidad = request.getParameter("nacionalidad");
        String artista_img = request.getParameter("artista_img");
        int grupo_id = Integer.parseInt(request.getParameter("grupo_id"));
        
        Artista art = new Artista();

        art.setArtista_id(id);
        art.setNombre(nombre);
        art.setGenero(genero);
        art.setFecha_nacimiento(convierteFecha(fecha_nacimiento));
        art.setNacionalidad(nacionalidad);
        art.setArtista_img(artista_img);
        art.setGrupo_id(grupo_id);

        ArtistaDAO dao = new ArtistaDAOimpl();
        if (id == 0) {
            try {
                //nuevo registro
                dao.insert(art);
            } catch (Exception ex) {
                System.out.println("Error al insertar " + ex.getMessage());
            }
        } else {
            try {
                //editar registro
                dao.update(art);
            } catch (Exception ex) {
                System.out.println("Error al editar " + ex.getMessage());
            }
        }
        response.sendRedirect("ArtistaControlador");
    }
    public Date convierteFecha(String fecha){
        Date fechaBD = null;
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
        
        java.util.Date fechaTMP;
        try {
            fechaTMP = formato.parse(fecha);
            fechaBD = new Date(fechaTMP.getTime());
        } catch (ParseException ex) {
            Logger.getLogger(ArtistaControlador.class.getName()).log(Level.SEVERE, null, ex);
        }
        return fechaBD;
    }
  
}
