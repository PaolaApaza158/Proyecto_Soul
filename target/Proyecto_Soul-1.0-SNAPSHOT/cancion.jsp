<<<<<<< HEAD
<%
    if (session.getAttribute("login") == null || !session.getAttribute("login").equals("OK")) {
        response.sendRedirect("login.jsp");
    }
%>
=======
>>>>>>> e435e9c8968e6d4377bfdb1107cd2e58beb972b6
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
<<<<<<< HEAD
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
        <title>Lista de Canciones</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link href="CSS/styleMusica.css" rel="stylesheet" type="text/css"/>
        <style>
            html, body {
                background-color: #191919 !important;
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
        </style>
    </head>
    <body class="p-3 mb-2 bg-dark text-white">

        <%-- Menu section --%>
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="cancion"/>
        </jsp:include>

        <div class="content">
            <h1 style="color: white; font-size: 3em; text-align: center; font-family: 'Cooper Black', sans-serif; font-weight: bold;">Canción</h1>
          <br>
            <a href="CancionControlador?action=add" class="btn btn-primary btn-sm"> <i class="fas fa-plus-circle"></i> Nueva Canción</a>
            <button id="toggleTableBtn" class="btn btn-primary btn-sm">Mostrar Tabla</button>

            <table id="cancionTable" class="table table-dark table-striped" style="display: none;">
                <tr>
                    <th>Id</th>
                    <th>Título</th>
                    <th>Duración</th>
                    <th>Fecha</th>
                    <th>Artista</th>
                    <th>Álbum</th>
                    <th>Género</th>
                    <th>Grupo</th>
                    <th>Imagen</th>
                    <th>Canción</th>
                    <th></th>
                    <th></th>
                </tr>

                <c:forEach var="item" items="${cancion}">

                    <tr>
                        <td>${item.cancion_id}</td>
                        <td>${item.titulo}</td>
                        <td>${item.duracion.toString().substring(0, 8)}</td>
                        <td>${item.fecha}</td>
                        <td>${item.artista}</td>
                        <td>${item.album}</td>
                        <td>${item.genero}</td>
                        <td>${item.grupo}</td>
                        <td>${item.cancion_img}</td>
                        <td>${item.cancion_lk}</td>
                        <td><a href="CancionControlador?action=edit&cancion_id=${item.cancion_id}"><i class="fas fa-edit"></i></a></td>
                        <td><a href="CancionControlador?action=delete&cancion_id=${item.cancion_id}" onclick="return confirm('¿Estás seguro?')">
                                <i class="fas fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
=======
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <title>Lista de Canciones</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<jsp:include page="META-INF/menu.jsp">
    <jsp:param name="opcion" value="cancion"/>
</jsp:include>
<div class="container">
    <h1>Canciones</h1>
    <!-- <a href="Logout" class="btn btn-danger"> Cerrar sesión</a> -->
    <br>
    <a href="CancionControlador?action=add" class="btn btn-primary btn-sm"> <i class="fas fa-plus-circle"></i> Nueva Canción</a>

    <table class="table table-striped">
        <tr>
            <th>Id</th>
            <th>Título</th>
            <th>Duración</th>
            <th>Fecha</th>
            <th>Artista</th>
            <th>Álbum</th>
            <th>Género</th>
            <th>Grupo</th>
            <th>Imagen</th>
            <th></th>
            <th></th>
        </tr>
        
        <c:forEach var="item" items="${cancion}">
            <tr>
                <td>${item.cancion_id}</td>
                <td>${item.titulo}</td>
                <td>${item.duracion.toString().substring(0, 8)}</td>
                <td>${item.fecha}</td>
                <td>${item.artista}</td>
                <td>${item.album}</td>
                <td>${item.genero}</td>
                <td>${item.grupo}</td>
                <td>${item.cancion_img}</td>
                <td><a href="CancionControlador?action=edit&cancion_id=${item.cancion_id}"><i class="fas fa-edit"></i></a></td>
                <td><a href="CancionControlador?action=delete&cancion_id=${item.cancion_id}" onclick="return confirm('¿Estás seguro?')">
                        <i class="fas fa-trash"></i>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
>>>>>>> e435e9c8968e6d4377bfdb1107cd2e58beb972b6

        
    </div>

    <div class="content">
        <div class="albums-grid">
            <c:forEach var="item" items="${cancion}">
                <div class="song-list">
                    <div class="song current" id="${item.cancion_id}">
                        <img class="album-image" src="img/portadas/${item.cancion_img}" alt="Portada del Álbum ${item.cancion_id}">
                        <div class="title">${item.titulo}</div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <!-- Agrega más canciones aquí -->
    <div class="player-bar">
        <div class="song-info">
            <img src="cubierta_album.jpg" alt="Cubierta del álbum">
            <div class="title" style="color: white;">Nombre de la canción</div>
        </div>

        <%-- botones --%>

        <div class="controls-container">
            <div class="controls custom-controls">
                <button id="prevBtn"><i class="fas fa-step-backward"></i></button>
                <button id="playBtn"><i class="fas fa-play"></i></button>
                <button id="nextBtn"><i class="fas fa-step-forward"></i></button>
            </div>
        </div>

        <div class="volume-container">
            <div class="volume-icon">
                <i class="fas fa-volume-up"></i>
            </div>
            <div class="volume-slider">
                <input type="range" min="0" max="100" value="50" class="slider" id="volumeSlider">
            </div>
        </div>



        <audio id="audio-player"></audio>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

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

            const volumeSlider = document.getElementById('volumeSlider');
            const volumeIcon = document.querySelector('.volume-icon i');

            volumeSlider.addEventListener('input', () => {
                const volumeValue = volumeSlider.value;
                setVolume(volumeValue);
            });

            function setVolume(volumeValue) {
                const volume = volumeValue / 100;
                audioPlayer.volume = volume;
                updateVolumeIcon(volume);
            }

            function updateVolumeIcon(volume) {
                if (volume > 0) {
                    volumeIcon.classList.remove('fa-volume-off');
                    volumeIcon.classList.add('fa-volume-up');
                } else {
                    volumeIcon.classList.remove('fa-volume-up');
                    volumeIcon.classList.add('fa-volume-off');
                }
            }





            const songInfoImage = document.querySelector('.player-bar .song-info img');
            const songInfoTitle = document.querySelector('.player-bar .song-info .title');
            const songs = document.querySelectorAll('.song');
            const audioPlayer = document.getElementById('audio-player');
            const playBtn = document.getElementById('playBtn');
            const prevBtn = document.getElementById('prevBtn');
            const nextBtn = document.getElementById('nextBtn');

            let currentSongIndex = 0;
            let isPlaying = false;
            let currentPosition = 0;

            songs.forEach((song, index) => {
                song.addEventListener('click', () => {
                    currentSongIndex = index;
                    playSong();
                });
            });

            playBtn.addEventListener('click', () => {
                if (isPlaying) {
                    pauseSong();
                } else {
                    playSong();
                }
            });

            prevBtn.addEventListener('click', () => {
                currentSongIndex = (currentSongIndex - 1 + songs.length) % songs.length;
                playSong();
            });

            nextBtn.addEventListener('click', () => {
                currentSongIndex = (currentSongIndex + 1) % songs.length;
                playSong();
            });

            function playSong() {
                const selectedSong = songs[currentSongIndex];
                const songUrl = getSongUrl(selectedSong.id);

                songInfoImage.src = selectedSong.querySelector('img').src;
                songInfoTitle.textContent = selectedSong.querySelector('.title').textContent;

                audioPlayer.src = songUrl;
                audioPlayer.currentTime = currentPosition;

                audioPlayer.play();
                isPlaying = true;

                updateSongStyle();
            }

            function pauseSong() {
                audioPlayer.pause();
                currentPosition = audioPlayer.currentTime;
                isPlaying = false;

                updateSongStyle();
            }

            function updateSongStyle() {
                songs.forEach((song, index) => {
                    if (index === currentSongIndex) {
                        song.classList.add('current');
                    } else {
                        song.classList.remove('current');
                    }
                });

                if (isPlaying) {
                    playBtn.querySelector('i').classList.remove('fa-play');
                    playBtn.querySelector('i').classList.add('fa-pause');
                } else {
                    playBtn.querySelector('i').classList.remove('fa-pause');
                    playBtn.querySelector('i').classList.add('fa-play');
                }
            }

            function getSongUrl(songId) {
                switch (songId) {
            <c:forEach var="item" items="${cancion}">
                    case '${item.cancion_id}':
                        return 'music/${item.cancion_lk}';
            </c:forEach>
                    default:
                        return '';
                }
            }
        </script>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
