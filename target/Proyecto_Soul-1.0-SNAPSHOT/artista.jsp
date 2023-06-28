<%
    if (session.getAttribute("login") != "OK") {
        response.sendRedirect("login.jsp");
    }
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>

    html, body {
        background-color: #191919  !important;
    }
    .content {
        margin-left: 250px;
        padding: 20px;
    }

    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 20px;
        background-color: #f1f1f1; /* Color de fondo deseado */

    }
    .artists-grid {
        display: flex;
        flex-wrap: wrap;
        justify-content: flex-start;
        align-items: flex-start;
        gap: 20px;
    }

    .artist-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        background-color: #000000;
        padding: 10px;
        border-radius: 8px;
        cursor: pointer;
        width: calc(20% - 20px);
        max-width: 200px;
    }

    .artist-image {
        width: 100px;
        height: 100px;
        border-radius: 50%;
        margin-bottom: 10px;
    }

    .artist-name {
        color: white;
        font-size: 16px;
        text-align: center;
    }

    .artist-details {
        display: none;
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
    }
</style>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
        <title>Soul</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
    <body class="p-3 mb-2 bg-dark text-black">
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="artista" />
        </jsp:include>

        <div class="content">
            <h1 style="color: white; font-size: 3em; text-align: center; font-family: 'Cooper Black', sans-serif; font-weight: bold;">Artista</h1>
            <br>
            <a href="CancionControlador?action=add" class="btn btn-primary btn-sm"> <i class="fas fa-plus-circle"></i> Nuevo/a Artista</a>
            <button id="toggleTableBtn" class="btn btn-primary btn-sm">Mostrar Tabla</button>

            <table id="cancionTable" class="table table-dark table-striped" style="display: none;">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Género</th>
                    <th>Fecha Nacimiento</th>
                    <th>Nacionalidad</th>
                    <th>Imagen de Artista</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${artista}">
                    <tr>
                        <td>${item.artista_id}</td>
                        <td>${item.nombre}</td>
                        <td>${item.genero}</td>
                        <td>${item.fecha_nacimiento}</td>
                        <td>${item.nacionalidad}</td>
                        <td>${item.artista_img}</td>
                        <td><a href="ArtistaControlador?action=edit&artista_id=${item.artista_id}"><i class="fa-solid fa-pen-to-square"></i></a></td>
                        <td><a href="ArtistaControlador?action=delete&artista_id=${item.artista_id}" onclick="return(confirm('¿Esta seguro?'))">
                                <i class="fa-solid fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>


        </div>

        <div class="content">
            <div class="d-flex justify-content-between align-items-center mb-3">


            </div>

            <div class="artists-grid">
                <c:forEach var="item" items="${artista}">
                    <c:if test="${item.artista_id != 7}">
                        <div class="artist-container" onclick="toggleDetails('artist${item.artista_id}')">
                            <img class="artist-image" src="img/portada_artista/${item.artista_img}" alt="Foto del Artista ${item.artista_id}">
                            <h3 class="artist-name">${item.nombre}</h3>
                            <div id="artist${item.artista_id}-details" class="artist-details">
                                <!-- Contenido adicional del artista  -->
                                <p>Genero: ${item.genero}.</p>
                                <p>Fecha de Nacimiento :</p>
                                <p>${item.fecha_nacimiento}</p>
                                <p>Nacionalidad: ${item.nacionalidad}</p>
                                <p>Grupo: ${item.grupo}</p>
                            </div>
                        </div>
                    </c:if>

                </c:forEach>
            </div>
        </div>


        <script>
            const toggleTableBtn = document.getElementById('toggleTableBtn');
            const cancionTable = document.getElementById('cancionTable');

            toggleTableBtn.addEventListener('click', () => {
                if (cancionTable.style.display === 'none') {
                    cancionTable.style.display = 'table';
                    toggleTableBtn.textContent = 'Ocultar Tabla';
                } else {
                    cancionTable.style.display = 'none';
                    toggleTableBtn.textContent = 'Mostrar Tabla';
                }
            });
        </script>
        <script>
            function toggleDetails(artistId) {
                var detailsElement = document.getElementById(artistId + '-details');
                detailsElement.style.display = detailsElement.style.display === 'block' ? 'none' : 'block';
            }
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <jsp:include page="META-INF/barraPlay.jsp">
            <jsp:param name="opcion" value="genero"/>
        </jsp:include>
    </body>
</html>
