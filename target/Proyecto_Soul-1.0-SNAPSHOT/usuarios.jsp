<%
    if (session.getAttribute("login") != "OK") {
        response.sendRedirect("login.jsp");
    }
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
        <title>Soul</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    </head>
    
    <body class="p-3 mb-2 bg-dark text-white">
        <jsp:include page="META-INF/menu.jsp">
            <jsp:param name="opcion" value="usuarios"/>
        </jsp:include>
          <div class="content">
            
          <h1 style="color: white; font-size: 3em; text-align: center; font-family: 'Cooper Black', sans-serif; font-weight: bold;">Usuarios</h1>
       

            <!-- <a href="Logout" class="btn btn-danger"> Cerrar sesión</a> -->
            <br>
            <a href="UsuarioControlador?action=add" class="btn btn-primary btn-sm"> <i class="fa-solid fa-circle-plus"></i> Nuevo</a>

            <table class="table table-dark table-striped">
                <tr>
                    <th>Id</th>
                    <th>Email</th>
                    <th></th>
                    <th></th>
                </tr>

                <c:forEach var="item" items="${usuarios}">
                    <tr>
                        <td>${item.usuario_id}</td>
                        <td>${item.email}</td>
                        <td><a href="UsuarioControlador?action=edit&usuario_id=${item.usuario_id}"><i class="fa-solid fa-pen-to-square"></i></a></td>
                        <td><a href="UsuarioControlador?action=delete&usuario_id=${item.usuario_id}" onclick="return(confirm('¿Esta seguro?'))">
                                <i class="fa-solid fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>

            </table>

        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
