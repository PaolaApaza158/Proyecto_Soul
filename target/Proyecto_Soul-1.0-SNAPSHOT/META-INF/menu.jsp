<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Spotify-like Design</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            padding-top: 70px;
        }

        .sidebar {
            position: fixed;
            top: 0;
            left: 0;
            width: 250px;
            height: 100%;
            padding: 20px;
            background-color: #000;
            color: #fff;
        }

        .content {
            margin-left: 250px;
            padding: 20px;
        }
        
        /* Cambios para agrandar las letras y mejorar el diseño */
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }
        
        .nav-link {
            font-size: 18px;
            margin-bottom: 10px;
        }
        
        .btn {
            font-size: 16px;
        }
        
        .btn-outline-success {
            color: #fff;
            border-color: #28a745;
            padding: 10px 20px;
            border-radius: 20px;
            transition: background-color 0.3s ease;
        }
        
        .btn-outline-success:hover {
            background-color: #28a745;
            color: #fff;
        }
        
        .logo {
            display: block;
            width: 100%;
            max-width: 150px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <%-- Replace with your JSP logic --%>
    <%--
    <% String opcion = request.getParameter("opcion"); %>
    --%>

    <div class="sidebar">
      
        <img class="logo" src="img/SOULM.png"  alt="Logo">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link active" href="GeneroControlador">
                    <i class="fas fa-music"></i> Género
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ArtistaControlador">
                    <i class="fas fa-microphone"></i> Artista
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="AlbumControlador">
                    <i class="fas fa-compact-disc"></i> Álbum
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="CancionControlador">
                    <i class="fas fa-music"></i> Canción
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="GrupoControlador">
                    <i class="fas fa-users"></i> Grupo
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="UsuarioControlador">
                    <i class="fas fa-users"></i> Usuarios
                </a>
            </li>
        </ul>
        <a href="Login?action=logout" class="btn btn-outline-success">Cerrar sesión</a>
    </div>

    <div class="content">
       
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
