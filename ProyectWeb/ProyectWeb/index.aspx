<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProyectWeb.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bio-Adventure</title>
    <link rel="stylesheet" href="Css/styles.css" type="text/css" />
    <link rel="shortcut icon" href="Img/IconoW.ico" />
    <link rel="manifest" href="manifest.json" />
    <!-- Configurar los meta datos para la pwa -->
    <!-- color de la app -->
    <meta name="theme-color" content="#ffcc00" />
    <!-- Optimizacion dispositivos moviles -->
    <meta name="MobileOptimized" content="width" />
    <meta name="HandheldFriendly" content="true" />
    <!-- Meta etiquetas para los dispositivos apple -->
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
    <link rel="apple-touch-icon" href="Img/Bio-adventure.png" />
    <link rel="apple-touch-startup-image" href="Img/Bio120.png" />
    <link rel="stylesheet" href="css/styles.css" />
    <script src="jquery.js"></script>
    <script src="app.js"></script>
    <script src="main.js"></script>
</head>
<body>
     <header id="main-header">
        <div id="slider">
            <div class="container">
                <br />
                <br />
                <h2>BIO ADVENTURE</h2>
            </div>
        </div>
        <div id="menu">
            <ul>
                <li><a href="#main-header">Inicio</a></li>
                <li><a href="Comentario.aspx">Comentarios</a></li>
                <li><a href="Conocenos.html">Quienes somos</a></li>
                <li><a href="Videos.html">Videos</a></li>
            </ul>
        </div><!--Fim menu--><br /><br />
        <!--DE AQUIIIIII-->
     </header>
    <section>
         <div class="mim">
            <img src="Img/icon.png" class="mimg0" />
            <img src="Img/icon0.png" class="mimg1" />
        </div>
        <center>
            <div id="DIV_nav1">
                <marquee>
                    <img src="Img/fireball.gif" class="mimg" />
                </marquee>
            </div>
        </center>
    </section>
    <br />
    <br />

    <section class="sec" id="bc" >
       <center>
         <table class="tbl">
            <tr>
                <td>
                    <center>
                        <a href="Geo_varios.html">
                            <center>
                                Instrucciones
                            </center>
                        </a>
                    </center>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="Img/muro.png" class="td" />
                </td>
            </tr>
        </table>
        <center>
            <table class="tbl">
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <center>
                            <a href="app.js">
                                <center>
                                    Informacion
                                </center>
                            </a>
                        </center>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="Img/muro.png" class="td" />
                    </td>
                </tr>
            </table>
        </center>

        <table class="tbl0">
            <tr>
                <td>
                    <center>
                        <a href="#">
                            <center>
                                Detalles
                            </center>
                        </a>
                    </center>
                </td>
            </tr>
            <tr>
                <td>
                    <img src="Img/muro.png" class="td" />
                </td>
            </tr>
        </table>
    </center>
    </section><br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
    <section>
         <center>
       <h3>
         <p> Los beneficios de los videojuegos han llegado también a la enseñanza con el game-based learning o 
           aprendizaje basado en los juegos electrónicos. Este método educativo utiliza lo bueno de los 
           videojuegos para transmitir conocimientos a los estudiantes
       </p>
       </h3>
       <h3><p>
           Aunque la verdadera desventaja que preocupa a padres y docentes, sobre todo en el caso de los más pequeños, 
           es que los videojuegos pueden provocar rechazo a otro tipo de material didáctico como los libros o simplemente 
           al contacto con el aire libre y a los juegos fuera de casa, y que a su vez cuentan con otra serie de ventajas
           que no tienen los videojuegos, como jugar con otros niños y desarrollar habilidades sociales.
           De ahí que en los últimos años, el uso de videojuegos se haya visto sometido a críticas y detractores. 
           Sin embargo, el tiempo y diversos estudios han demostrado que con moderación, como todo, jugar a videojuegos 
           es bueno.
       </p></h3>
      </center>
    </section>
    <br />
    <br />
    <div class="cnslt">
        <form id="form1" runat="server">
            <center class="txt">
                <h1>COMENTARIOS</h1>
                <br />
                     <asp:GridView ID="Gv_Cmtr" runat="server" AutoGenerateColumns="false" DataKeyNames="Idcomentario" DataSourceID="sqlComentarios">
                            <Columns>
                                <asp:BoundField DataField="Idcomentario" HeaderText="ID comentario" InsertVisible="false" ReadOnly="true" SortExpression="Idcomentario" />
                                <asp:BoundField DataField="nombre" HeaderText="Nombre de usuario" SortExpression="Nombre" />
                                 <asp:BoundField DataField="fecha" HeaderText="Fecha de publicacion" SortExpression="Fecha" />
                                 <asp:BoundField DataField="comentar" HeaderText="Comentario publicado" SortExpression="comentar" />
                            </Columns>
                     </asp:GridView>
                <asp:SqlDataSource ID="sqlComentarios" runat="server"
                    ConnectionString="<%$ ConnectionStrings:Bio_DB0ConnectionString %>"
                    SelectCommand="Select Idcomentario, nombre, fecha, comentar from Comentarios">
                </asp:SqlDataSource>
            </center> 
        </form>
    </div>
    <br />
    <br />

     <section>
        <center>
            <h1>Actividad de vistas</h1>

            <div id="chart"></div>
        </center>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="app.js"></script>
    <br />


    <!-- FOOTER RESPONSIVE -->
      <footer>
        <div class="container-footer-all">
          <div class="container-body">
          <div class="column1">
            <h1 data-aos="fade-down" data-aos-duration="2000">Horario de atención</h1>
            <p class="pFont text-light" data-aos="fade-left" data-aos-duration="2500">
              Contamos con horario de atención de 9:00am a 2:00pm
              3:00pm a 5:00pm tambien puedes enviar tus propuestas
              online por los medios que se muestran a continuación.
            </p>
          </div>
          <div class="column2">
            <h1 data-aos="fade-down" data-aos-duration="2000">Redes sociales</h1>
            <div class="row1">
              <a href="https://api.whatsapp.com/send?phone=523112566520&fbclid=IwAR02GY3_ocXL96nrXl2bYngtBnxQawT85ZUusPeOG_3AGCSoEpMzkBE1XPM" target="_blank">
                <img src="Img/ws.png" data-aos="fade-right" data-aos-duration="3000">
              </a>
              <label data-aos="fade-down" data-aos-duration="3000">
                <a href="https://api.whatsapp.com/send?phone=523112566520&fbclid=IwAR02GY3_ocXL96nrXl2bYngtBnxQawT85ZUusPeOG_3AGCSoEpMzkBE1XPM" target="_blank">
                  Contactanos por Whatsapp
                </a>
              </label>
            </div>
            <div class="row1">
               <a href="https://www.facebook.com/PublicidadDigitalOceanBlue/" target="_blank">
                <img src="Img/face.png" data-aos="fade-right" data-aos-duration="3000">
              </a>
              
              <label data-aos="fade-down" data-aos-duration="2500">
                <a href="https://www.facebook.com/PublicidadDigitalOceanBlue/" target="_blank">
                  Siguenos en Facebook
                </a>
              </label>
              
            </div>
            <div class="row1">
              <a href="https://www.instagram.com/oceanbluepublicidaddigital/" target="_blank">
                <img src="Img/ins.png" data-aos="fade-right" data-aos-duration="3000">
              </a>
              
              <label data-aos="fade-down" data-aos-duration="2000">
                <a href="https://www.instagram.com/oceanbluepublicidaddigital/" target="_blank">
                  Siguenos en Instagram
                </a>
              </label>
            </div>
            <!-- TIK TOK CONTACTO -->
            <div class="row1">
              <a href="#" target="_blank">
                <img src="Img/tiktok.png" data-aos="fade-right" data-aos-duration="3000">
              </a>
              <label data-aos="fade-down" data-aos-duration="1500">
                <a href="#" target="_blank">
                  Siguenos en Tik Tok
                </a>
              </label>
            </div>

            <div class="row1">
              <a href="https://twitter.com/publiOceanBlue?s=20" target="_blank">
                <img src="Img/twt.png" data-aos="fade-right" data-aos-duration="3000">
              </a>

              <label data-aos="fade-down" data-aos-duration="1000">
                <a href="https://twitter.com/publiOceanBlue?s=20" target="_blank">
                  Siguenos en Twitter
                </a>
              </label>
            </div>
            
            <div class="row1">
              <a href="https://www.youtube.com/channel/UCgUkmLjHhlUKaClKikLzZ0g/featured" target="_blank">
                <img src="Img/yt.png" data-aos="fade-right" data-aos-duration="3000">
              </a>
              <label data-aos="fade-down" data-aos-duration="500">
                <a href="https://www.youtube.com/channel/UCgUkmLjHhlUKaClKikLzZ0g/featured" target="_blank">
                  Vista nuestro canal
                </a>
              </label>
            </div>
          </div>

          <div class="column3">
            <h1 data-aos="fade-down" data-aos-duration="2000">Informacion de contacto</h1>
            <div class="row2">
              <a href="https://goo.gl/maps/SjgDyeg9asuVitMeA" target="_blank">
                <img src="Img/dom.png" data-aos="fade-right" data-aos-duration="3000">
              </a>
              <label style="font-size: 14px; text-align: justify;" data-aos="fade-down" data-aos-duration="1500">
                <a href="https://goo.gl/maps/SjgDyeg9asuVitMeA" target="_blank">
                  Av. Allende #166 entre C. Ures y P. Sánchez Colonia Centro Tepic, Nayarit, México.
                </a>
          </label>
            </div>
            <div class="row2">
              <img src="Img/telefono.png" data-aos="fade-right" data-aos-duration="3000">
              <label data-aos="fade-down" data-aos-duration="1250">311 160 08 54</label>
            </div>
            <div class="row2">
              <img src="Img/telefono.png" data-aos="fade-right" data-aos-duration="3000">
              <label data-aos="fade-down" data-aos-duration="1000">311 160 34 83</label>
            </div>
            <div class="row2">
              <img src="Img/mail.png" data-aos="fade-right" data-aos-duration="3000">
              <label style="font-size: 15px;" data-aos="fade-down" data-aos-duration="750">publicidadoceanblue@gmail.com</label>
            </div>
          </div>
        </div>
        <!--
      <div class="container-footer">
        <div class="footer">
          
        
            <div class="copyright">
              Ut enim ad minim veniam, consectetur adipisicing elit, sed do eiusmod
              tempor incididunt ut labore et dolore magna aliqua.
            </div>
            <div class="information">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
              tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            </div>
          </div>
        </div>-->
        </div>
        
      </footer>

</body>
</html>
