<%
    if (session.getAttribute("login") != "OK") {
        response.sendRedirect("login.jsp");
    }
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    html, body {
        background-color: #191919 !important;
    }
    .content {
        margin-left: 250px;
        padding: 20px;


    }

    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 20px;
        color: #000000b0;
        background-color: black;
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
        border-radius: 8px;
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

    .hidden {
        display: none;
    }
</style>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
        <title>Soul</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
              rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
              crossorigin="anonymous">
    </head>
    <body class="p-3 mb-2 bg-dark text-white">
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="grupo"/>
        </jsp:include>
        <div class="content">
           <h1 style="color: white; font-size: 3em; text-align: center; font-family: 'Cooper Black', sans-serif; font-weight: bold;">Grupo</h1>
       
            <!-- <a href="Logout" class="btn btn-danger"> Cerrar sesión</a> -->
            <br>

            <a href='GrupoControlador?action=add'" class="btn btn-primary btn-sm">
                <i class="fa-solid fa-circle-plus"></i> Nuevo Álbum
            </a>
            <button onclick="toggleTable()" class="btn btn-primary btn-sm">
                <i class="fas fa-plus-circle"></i> Mostrar/ocultar tabla
            </button>

             <table id="cancionTable" class="table table-dark table-striped" style="display: none;">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Imagen de Grupo</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${grupo}">
                    <tr>
                        <td>${item.grupo_id}</td>
                        <td>${item.nombre}</td>
                        <td>${item.grupo_img}</td>
                        <td>
                            <a href="GrupoControlador?action=edit&grupo_id=${item.grupo_id}">
                                <i class="fas fa-edit"></i>
                            </a>
                        </td>
                        <td>
                            <a href="GrupoControlador?action=delete&grupo_id=${item.grupo_id}"
                               onclick="return(confirm('¿Estás seguro?'))">
                                <i class="fas fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>

            <div class="artists-grid">
                <c:forEach var="item" items="${grupo}">
                    <c:if test="${item.grupo_id != 14}">
                        <div class="artist-container" onclick="toggleDetails('artist${item.grupo_id}')">
                        <img class="artist-image" src="img/portada_artista/${item.grupo_img}" alt="Foto del Artista">
                        <h3 class="artist-name">${item.nombre}</h3>
                        <div id="artist${item.grupo_id}-details" class="artist-details"></div>
                    </div>
                    </c:if>
                    
                    
                </c:forEach>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
        <jsp:include page="META-INF/barraPlay.jsp">
            <jsp:param name="opcion" value="genero"/>
        </jsp:include>

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

    </body>
</html>
