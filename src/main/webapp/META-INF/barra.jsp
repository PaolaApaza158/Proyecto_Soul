<%
    String opcion = request.getParameter("opcion");
%>
<header>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Ubuntu:wght@400;700&display=swap'); /* Importa la fuente Ubuntu desde Google Fonts */

        .btn-rounded {
            border-radius: 20px; /* Ajusta el valor según el nivel de redondeo deseado */
        }

        .btn-outline-success {
            color: black !important; /* Establece el color del texto del botón como negro */
        }

        .navbar-nav .nav-link {
            color: white !important; /* Establece el color del texto de los enlaces como blanco */
        }

        .navbar-nav .nav-link.active {
            color: cyan !important; /* Establece el color del marcador a cian */
        }

        .btn-outline-success.custom-btn {
            background-color: #8cc888; /* Establece el color de fondo del botón como verde suave */
            font-family: 'Ubuntu', sans-serif; /* Establece la fuente de las letras como Ubuntu */
        }
         .navbar-brand {
            color: white; /* Establece el color del texto del título como blanco */
        }
    </style>
    <!-- Fixed navbar -->
    <nav class="navbar navbar-expand-md navbar-light bg-transparent">
        <div class="container">
            <a class="navbar-brand" href="../Proyecto_Soul/MenuInico.jsp"">Soul</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link <%= opcion.equals("genero") ? "active" : "" %>" aria-current="page" href="GeneroControlador">Género</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%= opcion.equals("artista") ? "active" : "" %>" href="ArtistaControlador">Artista</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%= opcion.equals("album") ? "active" : "" %>" href="AlbumControlador">Álbum</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%= opcion.equals("cancion") ? "active" : "" %>" aria-current="page" href="CancionControlador">Canción</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%= opcion.equals("grupo") ? "active" : "" %>" href="GrupoControlador">Grupo</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%= opcion.equals("usuarios") ? "active" : "" %>" href="UsuarioControlador">Usuarios</a>
                    </li>
                </ul>
                <a href="Login?action=logout" class="btn btn-outline-success text-dark btn-rounded custom-btn">Iniciar Sesión</a>
            </div>
        </div>
    </nav>
</header>
