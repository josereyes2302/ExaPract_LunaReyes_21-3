<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta de Paciente LUNA REYES</title>
        <!--Liberias y componentes de JS y CSS3-->
        <!-----------------------------BOOTSTRAP----------------------------->
        <!--Icono-->
        <link rel="Icon" type="img/png" href="img/logoicono.png">
        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="css/slick.css"/>
        <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="css/style.css"/>
        <!--Ventanas emergentes-->
        <link rel="stylesheet" type="text/css" href="css/ventanas.css">
        <link rel="stylesheet" href="style.css">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
        <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
        <link ref="stylesheet" type="text/css" href="css/bootstrap.css">
        <link href="css/navbar.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/geolocation.css">
        <link type="text/css" rel="stylesheet" href="demobar_files/bootstrap.css">
        <script type="text/javascript" src="demobar_files/jquery-latest.min.js"></script>
        <script type="text/javascript" src="demobar_files/jquery.min.js"></script>
        <script type="text/javascript" src="demobar_files/bootstrap.js"></script>
        <script src="js/ie-emulation-modes-warning.js"> </script>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <!-----------------------------/BOOTSTRAP----------------------------->
    </head>
    <body style="background-color: #B5DAFF" >
        <hr>
        <!--LIBRERIAS-->
        <%@page import = "java.sql.*"%>
        <%@page import = "conexionbd.Conexion" %>
        <%@page errorPage = "error.jsp" %>
        
        <!--Llamada a la conexion y variables, instruccion SQL para insertar-->
        <%
            Conexion conexion=new Conexion("jdbc:mysql://localhost/bddti_luna","root", ""); 
            int idPaciente= Integer.parseInt(request.getParameter("idpac"));
            String nombre=request.getParameter("nom");
            String diasInternado =request.getParameter("dias");
            String costito=request.getParameter("cost");
            
            String altaQuery="INSERT INTO exahospital VALUES ('"+idPaciente+"', '"+nombre+"', '"+diasInternado+"', '"+costito+"')";
            int c = conexion.ejecutaSentencia(altaQuery);
            if(c==1){
     
        %>
        <div class="container" style="border-radius: 50px;
background: #e0e4e5;
box-shadow:  20px 20px 60px #b0bcc1,
             -20px -20px 60px #eefeff;">
            <div class="jumbotron" style="border-radius: 50px;
background: #e0e4e5;
box-shadow:  20px 20px 60px #b0bcc1,
             -20px -20px 60px #eefeff;">
                <center>
                    <h2>Confirma Alta de Paciente</h2>
                    <hr>
                    <div class="thumbnail">
                        <h2>Se agrego de forma exitosa el siguiente paciente:</h2>
                        <hr>
                        <h3>Id del Paciente: <%= idPaciente%></h3>
                        <h3>Nombre Completo: <%= nombre%></h3>
                        <h3>Dias Internado: <%= diasInternado%></h3>
                        <h3>Costo: <%= costito%></h3>
                    </div>
                    <h3>Fecha y hora de sistema:  <%= new java.util.Date() %></h3>
                    <a href="index.html"><h3>Regresar a Menu Principal</h3></a>
                </center>
                <%
                    } //termina if
                %>
            </div>
            
        </div>
        
         
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/slick.min.js"></script>
    <script src="js/nouislider.min.js"></script>
    <script src="js/jquery.zoom.min.js"></script>
    <script src="js/main.js"></script>
    <script type="js/jquery-1.8.0.min"></script>        
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>