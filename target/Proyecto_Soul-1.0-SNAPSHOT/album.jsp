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
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 20px;
      background-color: #121212;
      
    }
    
    .albums-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
      grid-gap: 20px;
      justify-items: center;
    }
    
    .album-container {
      width: 180px;
      padding: 10px;
      text-align: center;
      background-color: #181818;
      border-radius: 8px;
      cursor: pointer;
    }
    
    .album-image {
      width: 140px;
      height: 140px;
      border-radius: 8px;
      object-fit: cover;
    }
    
    .album-title {
      margin-top: 10px;
      color: white;
      font-size: 14px;
      line-height: 1.2;
    }
    
    .album-artist {
      margin-top: 5px;
      color: white;
      font-size: 12px;
      line-height: 1.2;
    }
    
    .album-details {
      display: none;
      background-color: #ffffff;
      padding: 20px;
      border-radius: 8px;
      margin-top: 10px;
      text-align: center;
    }
    
    .show-song-list {
      display: block;
    }
    
    #songList {
      list-style: none;
      padding: 0;
    }
    
    #songList li {
      margin-bottom: 10px;
      color: white;
      font-size: 14px;
    }
</style>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <title>Soul Album</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<jsp:include page="META-INF/menu.jsp">
    <jsp:param name="opcion" value="album" />
</jsp:include>
    
<div class="content">
  <h1 style="color: white; font-size: 3em; text-align: center; font-family: 'Cooper Black', sans-serif; font-weight: bold;">Album</h1>
        
    <br>
        <a href="AlbumControlador?action=add" class="btn btn-primary btn-sm">
        <i class="fa-solid fa-circle-plus"></i> Nuevo Álbum
    </a>

    <button class="btn btn-primary btn-sm" onclick="toggleTable()">
        <i class="fa-solid fa-circle-plus"></i> Mostrar/ocultar tabla
    </button>
    
    <table id="albumTable" class="table table-dark table-striped" style="display: none;">
        <tr>
            <th>Id</th>
            <th>Título</th>
            <th>Artista</th>
            <th>Grupo</th>
            <th>Fecha de Lanzamiento</th>
            <th>Imagen de Portada</th>
            <th></th>
            <th></th>
        </tr>
        <c:forEach var="item" items="${album}">
            <tr>
                <td>${item.album_id}</td>
                <td>${item.titulo}</td>
                <td>${item.artista}</td>
                <td>${item.grupo}</td>
                <td>${item.fecha_lanzamiento}</td>
                <td>${item.portada_img}</td>
                <td>
                    <a href="AlbumControlador?action=edit&album_id=${item.album_id}">
                        <i class="fa-solid fa-pen-to-square"></i>
                    </a>
                </td>
                <td>
                    <a href="AlbumControlador?action=delete&album_id=${item.album_id}" onclick="return(confirm('¿Está seguro?'))">
                        <i class="fa-solid fa-trash"></i>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
    
<div class="content">
    <div class="albums-grid">
        <c:forEach var="item" items="${album}">
            <div class="album-container" onclick="toggleDetails('album${item.album_id}')">
                <img class="album-image" src="img/portadas/${item.portada_img}" alt="Portada del Álbum ${item.album_id}">
                <h3 class="album-title">${item.titulo}</h3>
                <div id="album${item.album_id}-details" class="album-details">
                    <p>Fecha de lanzamiento: ${item.fecha_lanzamiento}.</p>
                    <p>Artista: </p>
                    <p>${item.artista}.</p>
                    <p>Grupo: </p>
                    <p>${item.grupo}.</p>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<div id="songListContainer" class="content" style="display: none;">
    <!-- Aquí se mostrará la lista de canciones -->
</div>

<script>
    function toggleTable() {
        var tableElement = document.getElementById("albumTable");
        if (tableElement.style.display === "none") {
            tableElement.style.display = "table";
        } else {
            tableElement.style.display = "none";
        }
    }

    function toggleDetails(albumId) {
        var detailsElement = document.getElementById(albumId + '-details');
        var songListContainer = document.getElementById('songListContainer');
        var songList = document.getElementById('songList');

        // Ocultar la lista de canciones actual
        if (songList !== null) {
            songList.remove();
        }

        // Mostrar la lista de canciones correspondiente al álbum seleccionado
        detailsElement.classList.toggle('show-song-list');

        if (detailsElement.classList.contains('show-song-list')) {
            var albumId = albumId.replace('album', ''); // Eliminar el prefijo 'album' del ID
            var album = document.getElementById('album' + albumId);
            var albumTitle = album.querySelector('.album-title').textContent;
            var albumArtist = album.querySelector('.album-artist').textContent;

            // Obtener la lista de canciones del álbum (puedes cargarla dinámicamente aquí desde tu backend)
            var songs = [
                { title: 'Canción 1', artist: 'Artista 1' },
                { title: 'Canción 2', artist: 'Artista 2' },
                { title: 'Canción 3', artist: 'Artista 3' }
            ];

            var songListHTML = '<ul id="songList">';
            for (var i = 0; i < songs.length; i++) {
                songListHTML += '<li>' + songs[i].title + ' - ' + songs[i].artist + '</li>';
            }
            songListHTML += '</ul>';

            // Agregar la lista de canciones al contenedor
            songListContainer.innerHTML = songListHTML;
        }
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<jsp:include page="META-INF/barraPlay.jsp">
    <jsp:param name="opcion" value="genero"/>
</jsp:include>
</body>
</html>
