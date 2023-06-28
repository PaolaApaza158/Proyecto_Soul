<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link href="CSS/styleMenu.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <div style="position: relative; height: 100vh;">
            <div style="position: fixed; top: 0; left: 0; right: 0; text-align: center; z-index: 9999;">
                <jsp:include page="META-INF/barra.jsp">
                    <jsp:param name="opcion" value="" />
                </jsp:include>
            </div>

            <div class="slide" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                <div class="slide-inner">
                    <input class="slide-open" type="radio" id="slide-1" name="slide" aria-hidden="true" hidden=""
                           checked="checked">
                    <div class="slide-item">
                        <div class="slide-content">
                            <h1><b>SOUL</b></h1>
                            <p>cierra los ojos, abre tus oídos y deja </p>
                            <p>que las melodías te lleven a un mundo </p>
                            <p>de sonidos y emociones inigualables. </p><br>
                            <a href="Login?action=logout" class="btn btn-outline-success text-dark btn-rounded custom-btn">Iniciar Sesión</a>
                        </div>

                        <%--Imagen de carucel --%> <img src="img/portadas/img3.jpg" alt="" />
                    </div>
                    <input class="slide-open" type="radio" id="slide-2" name="slide" aria-hidden="true" hidden="">
                    <div class="slide-item">
                        <div class="slide-content">
                            <h1><b>SOUL</b></h1>
                            <p>cierra los ojos, abre tus oídos y deja </p>
                            <p>que las melodías te lleven a un mundo </p>
                            <p>de sonidos y emociones inigualables. </p><br>
                            <a href="Login?action=logout" class="btn btn-outline-success text-dark btn-rounded custom-btn">Iniciar Sesión</a>
                        </div>
                        <%--Imagen de carucel --%><img src="img/portadas/img4.jpg" alt="" />
                    </div>
                    <input class="slide-open" type="radio" id="slide-3" name="slide" aria-hidden="true" hidden="">
                    <div class="slide-item">
                        <img src="img/portadas/img1.jpg" alt="" />
                    </div>
                    <label for="slide-3" class="slide-control prev control-1">‹</label>
                    <label for="slide-2" class="slide-control next control-1">›</label>
                    <label for="slide-1" class="slide-control prev control-2">‹</label>
                    <label for="slide-3" class="slide-control next control-2">›</label>
                    <label for="slide-2" class="slide-control prev control-3">‹</label>
                    <label for="slide-1" class="slide-control next control-3">›</label>
                    <ol class="slide-indicador">
                        <li>
                            <label for="slide-1" class="slide-circulo">•</label>
                        </li>
                        <li>
                            <label for="slide-2" class="slide-circulo">•</label>
                        </li>
                        <li>
                            <label for="slide-3" class="slide-circulo">•</label>
                        </li>
                    </ol>
                </div>
            </div>

            <script>
                var slides = document.querySelectorAll('.slide-open');
                var currentSlide = 0;
                var slideInterval = setInterval(nextSlide, 5000);

                function nextSlide() {
                    slides[currentSlide].checked = false;
                    currentSlide = (currentSlide + 1) % slides.length;
                    slides[currentSlide].checked = true;
                }
            </script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>

    </body>

</html>
