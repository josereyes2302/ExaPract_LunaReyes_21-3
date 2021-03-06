<%-- 
    Document   : consulta
    Created on : 7/07/2021, 08:10:21 AM
    Author     : adm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Pacientes-Luna</title>
         <!--Librerias y componentes de JS y CSS3-->
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
    <body style="background-color: #B5DAFF">
        <div class="container">
            <center>
                     <img class="img-responsive" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAUoAAACZCAMAAAB+KoMCAAAAtFBMVEX///8AHYVYWFcAAH4AGIQAEILX19dMTEtRUVBjbaspNo00RZgAAHsAG4QAAIHn6vRze7EAAHcABYAAEYLa3uu+xN3IzN8AC4FXZKbt7/bN0ubg5PH5+v0AIYl3gLSKkbxAUJ2pr84hMIygpMWVm8NRXaJJVJwWLI20utcKJ4wyP5Jobqe/wdcsPpXr6+vz9fqlqciFjbteaag8SZd9hrl1eq0AAG+ansE+Pj2xs86Slr2IksFgyfaLAAATsElEQVR4nO2deWOivNrG8Q2cc9SwKYhgXFBUrOOhVjs90/n+3+tNAgpZWGw749OW6495HmnWH3cWQnKjKM7eaqJz5PoK0Y+yAC+Po0S5XfNiInu/WaQjl/kKX4u6e0bjNxTmfRpBrYm8AdD2Exz+sSQ8DgC1ffCu7EG3YazDgMkbWPhaFwwZ2bcW5d0agU5D6R6IMMqK8DjEenJb9pthIbrRNHJfZfL1KEqNLQy8lcS71RwlriucVaLEITTwckvuLixEHsyaRvv8KDsdEP6qCa83bqVEhwIT3WjYU34NlLp29OrCgOYdflzMHLw2jvcVUHZ0tT4MODfNnDHKTvMJwJdA2UQ6dJvlvbIHueANney3QdlRp6hR3vPjPFdjU1a+E8oOmTX9SX0jlOqumVm+VVKUA5XRF0HZAaW9ZWJWSR4H+YUgZMYkQ2ntlkVtvZICMInV5VxdWqyiyfwZlLRyvJyXpy2slCEM4s5qvwTFIPaiBGUDmeHzwZDnrPPNKHGPG7W6tKQ08R9HqS6FaswfANCqp1I61y8kr30SRy+GGa7fijLcGMBjE8vL22Nznsx2YDCUhy2KaX0iSsDIk6XHBhlIAAG2aKYFjPoZKYsyOQMgxnkryhcNVKBhUU7G0Gswf+7UoRys3ILCozoUE4iKQeL5VnwCgk6xHpEhvSO8GJThFMjilKI8nxaMTsUCuAdpYlcxKI+GVhW2qGqUgOuB/QeBJeTW0tB6IOQxKqSwqa7HVQWUqCuxSKJSlDhCUUOjUMAjrDGyAspJr2FpiWpQ8itdyY4vBxCWJR+EIHkezrT2sT1TjjJZlHXh5ShZU9IHhTtdCydH6RpiKyzXjSiVSAgioHSFINc8nAadZKYrSnQopX87SnQyanO+ooxLGkOJbkXp1KP0Ne6+X/OYDJuX7YISbcrt+HaUG6H3EXVB6d7QuIluRmnwnESU0zKUyxvaywVlt2KCdjPKWZPZXoZyciPJv4qyioqgDGUIK8LcirIysatSlOhwSz9JBCqn6B+KMr5tYZmi9AdVpnEjSl9t1L+kKOc3P678PZRoK6uI6hmX2T1XfYrSknWU+tBLlzXB5iaUlqyjVL0B4ERyNmXNW9eKYfmi/T2UsndqQ3CwojDTmam/ukRkkBMrpILp2Pqd6vEWlKakeatwaf1+DDkh6T3UgW79LoTiX8f8PZTCjBSXbRMUHixOTABAtgZ0hQrp4GHEPoc2RjmTJHYayVcAhVkITliN2QWWgKP111AKs82OboTFaCsmAF0DSSBfIV1cSJYusrHUKMqkIyY2l3LEehFXI7o8dJ7WX0O5521CLz5P4lg6EwuScoVCheCjUOumKMVRr2J9/8Q3ocGTEOZeKJOl8DjJ2CSHWu2Ta0/8UoIhMaOmKIXez9uXkhS6VXGh8H4ohaek4YaJFDCFTy0W9Tj86lRS7aYo+b5aF9eWr+ItmGtB90UpjN/cS10WSMrZ5PMyZC2yIUqfNzSv4rUmPzirC0mge6Gcc3M6nX2ny4452QrniK+9WJzmKMW6Vey023BPOnQ68U9Buee6vSHTjXMPNVq6PYYfdeTvLhuiFNpsp2JXEt+xS7HfC+Wau88es1ONnT9eNgSueJQbPqsbUAr3pSefUVIJNZC9hLwXSr7JMD3ViH2ouWwI5Cd39JH7w1BuK7Yl6XwNZD3LvVCOOZRacSZyYGhcNwSKhvSBKHW15HU3Eb9c8I9q4Pysrti+uJV5cMyui1MSWff2xr6yctjhZ2Hg1z8I5Sv/IiB/DemzzVtXLy3PEUbwkM+rOcqAT2xQ+tQotqGhbJvovVAKRqFdh/Antt75rmuTX1OQtvCGKBGPUlfLx52Iu/E6cMRA90IprP/pl4iuDYyCQCevofAkLDPLpk87fSGxcrMU1l6GksnDvVAi4ZWu2kn7/VXE6LXwiHauWQK5CeWRX/jVy/eFIb6WeQd+f5RiTTrDZd15EnHjjW4I1W+Kkl9eJIvisZhnKr6zlC3I3Q2lZEFcNX7XbDnvSJaLLW4Yb4qSm3Klie1LZkTiipwO1lx/eTeUykl8g6cD1YqdMini8w6J4w33YVAIdmiKUlzOxYkZ+8dAkrO4C4W8PXnKM0b3RCksTqR1AcygUxAZYBPZO0JdY+JwmZWjVIQOUEyMDnxbJNmFwoaFo3uiVNYle8J0qdK1C4lZ8nG4v1SgFBflpQWgTw9oKn/Rm4UB90Upe31YLnVLJ0Xi1rkaVaBU+o0SSx/E4srtB3dGqUSNNkdkynZnCMu/dapCOWmUWPZMu6/aXnRvlMrTLcdRs8XJUHjrWK0qlM0Sy1CibYUN3x0l6jfdXVnYFDi/jWUlSjya1Cd2WWnxK1iSWt8VpZIsG7PMt6oeb+pjq1HiTqY2seuilVle2vujVJJTUy6FDdSrui3PRdWgVB5r95/m63/lpb17A09trBmX4rb+YNu8k61DSRKrvpvFpdSyjev/CJTKaNkIJnNCIpnBRscqOg1QKsmxOjHmrU9Jaf8ZKPE4epKfAGKrz75eNGeVZ21y1aPEiZ2HFYlxL9DCHhD3YtX3lVDljllK9qLzQUSU6pALIqzmuJYBgaZWacgffjbDMY7kDStjqSr16LKvOGySlnG1gaAkMY17F4ncvYczFmrN04JFlEGvz6onLJxMDlyQpYiyzweR7BJBwWp/4gMyWoiL3Ch4tDbVsfoHsrB45Ep5EAugJO5qv5Yl9rARcw5Ci62Sg68t2Xi9hk4EWrVq1eofImfE6mafZq0u2kP2zINsX2arRuLmlfIdMq2aiEcpmwy1aqTWKj9M/IOj8LTTqqn4bR1APKPSqpn4fXO6WroPo1W1hNe0OthGjT1itipIPAXYUYFhSXb2taqR7JAt2QlivcUv9jcXvwM6gzkYcAdwjgbrOnvL/HXBOrc2Lnt/zWgh8btt/Fk3fvdSmY8BHax9Nhy7x4U9yrgYMn/NjhMpoQfYP2SbX74mSrP0jYfGvEHhDrnxKFnbznakl7yY/6ooK3y36MV3MG9A6ZZs1/myKJVd6dYKHeY72t+AUt4Nf2WUk045y/wYzu0oSx1Tfl2UyqT8ffv1dMYbUP7+higVJVqWuZ5UvWyCeTtK0ZnJd0CpoNFsR95gi/X2si8ytChvEHJnO8kmoWybQ4vyNiVzsdfM3HC0KG+VsxWOFKRn/D4EpZo+OMJvgVLxBb9/qfudD0Cpg5NFv9r19D1QKr7guZtOiN6Pknl4+h4SnvcGZJ/W+1FKnb3g/vlfn1xVTYw/xKw+fARK3ZMvzv/rf//+3PpvBUrh618w+QCUaZcrQfnv//vcqkJp8g5ayTnF96M8yXP70igFB3tkUaO1yjJVoRQ6SzJgtFZZpkqU/NF6MoS3Vlmi/1Sh9Pnzzsbrn0T5v/98blWhFHxnkN0vf6yBf2nxvgplviA/ziq/ssTvGJBDSa1V3i4k+HNRd0prlW+QL55Epx40W6u8VcFOdIEiWxnSd8ymotYqeTlPkqPIqTnxKA1ms1trlUVNfhwXQOaVJz3cyXtz1hgXxO+wSmfc/dR6Iqdb3dPmov5BJZ9DlH5sL0XAo+yAcWHR7B0oR1Cy1+3zyKPulmM4vEhVBY9OmS4tWUDZ0YzT/qItG/uWBv5nvi7616QPKcomlbisfYsoO7p6vTfcfbjJKr8LSnBx2ixBWa7WKkV5B/RhKL+3VYL+9R3QR1tlYprJ90Gpg3H+Nu2DrXJuLA9a9F1Qqoyn2Xn9x0Zz1VrlemMmSdK1vgVK3ZgyzkJk354rVZ1Vxg9K7zx7QAuJE6JPpnqUGpixJ3du8qlZZ5X9kXJCSnfkWF8epQbXgt+kxQ2uRuussjNR+uPNGPmLL41SVw34JHGhEdjNzbIO5dJR+ubYUczx10VJ/B33S46L1nsOvKqugc+PysH3e8oqlDgS+2Ty0mfw4iXyaVU43a/KT4qODtArS5BLnqJkfZRpBatEU9cljrKIe4nRrvepRd3/x9v8wsOiewzjig/rULlW/9AoebKB/bhkLxa9jpn9fRham/ZM6kdoFK1an0atWrVq1apVq1atWrVq1apVq1atWn1yLX7Kvlf9eXX5cmbdp2gVZWPVp4ZGo8bH9h17XYi4PipK8g638OM1zjjIcx+dqu/TqC/5Xsj7BACkqnfI7km+8czLB0ZjP6ZdtRAUqV0Cd/tm/wlb8qmewc+rRbj2a2X42P7x1qzKpO9mz0Tn2pBqA5TJetz0JYe/KG6ZQFOMcrLZlwav05LchfHp+krHtaPK8O7Ho6Tn9puFbIDyzaIo36MlZ9D3QHl1aj+K6ctOh/5nEs3OMTWwePY8p/c6Qxk+P0fkN3IDJX4+Zz2OM38+urgyLv2WdXR+noXFt3Kx6c+fX4j3n+covT6ZP88yXx6T4/Pc2WGUKE5Ti8+zF9xS0Y85zlv2BtZfzc4h7h4mK5zRihaTohylKbrn5zCEFKWZZYNilyguWO0IRc9zX7lm65D6OjFyzs84RvovzirEWaQAcOr4Kt06jJwwin5xfVkBpU3826Ot7RNvzjaENnlzPrYN1abHXShKtLANzwa4fiZYdHGg9NDBKw2/VtCSpHEi1+1TztL9OdPxtf2kg/+lg00MoGrY1KEhycsGGm7bPiRnFfwFSQu6OBb9H9F5iquRP+Cu1qIZTf0Lyo1N/jwjFwEgKF2cDSDDm28TAfuamAvPOxx7ifElcEGuvPzEtZzbv8nI8eLijOnNiH6S1AwCe2Ecyd/2lBWRx34CSj2YVDjJsz1XlCPJLbC3LjJflrhY5OdkR8pJUT4RZ1yOviQfdgPb2HEHOgEDeyNsZxj9A+kvjj8SJTnaL3ndAbSCoK+BJ8fp2wE5fEgGXBrEsVXXn0QGtkrfIMU8wfMkcR9iJZg7SBntBK/7EzCIkR9OTWUV+wqKoHVBuQYEib0IEsciDit9SN5PH0lbJ7OUYKeahSLtAxwKVzkx6N1d2Q5xrg7mjjv1wNEZqZBU7XFCAhOrWnvGixM8QBxs9PTDcUKDLVpHpYB/4txQB/oTajQbm5q8qZj2kRoOqT5BObGpfb/gXH2Vmt3Zxln1oZOGT1GmAvlxGGwCJBVa59h+VBQr9RoF+uTmkLz8wT5DOUrNFl0qPRe+KXeGtBD+xeq3JwblAJAW79oh2VVB2+Au25hytPMJkkvvdAJPHErqt43eB2yh15zHZGKyJo0Rl/9qIkeb6X307ZzoOKI1HtM4CF52coS2gxDCVvqSoowg/T3CZfKHT2kBAtx6Fll4lKFMRuFKy3fW0HrhWBH9F6MEY4Wks4FKkm7AMa8oz4Vv7SHTDZ8ElKqXdx1JED7uGJSBfb5m2UmzWWu0Ow2KE9ls2FF1DiWxDCWijCKblgQ5cXiiKKm76QCm214TM7DYojHfUtkDSD684MDZhTvY7abT3Y5AICi7Gv3dwd2In7puXeH88jlcinKyhrYNhzzKtBABRulDksx0p9mKkx5cyFGOjWsjfFni9jLgPxqJ4HUqYXYBDqExKH/Zj5csTW1Ks/GocaLesLD7JUN5UGUoXyjKkKBE5wHOYuhRlMm1FvEa5wwqUAYAmDT08YISvq6osgb+ZMwvvxmUF29QFKWvQss1kVeO0oSnR5rMC75tFotyPbwMjEd7GQa4IXAo08GJagvH8URZcijDS5aTQZbNCils826O8gme8JTmyWBRhtA4x8HZLkd5Gmrkjk/g9YiLnT9QEpRneL2xBZSBfXmmpCijtDcZlKNU8qYmWGX38nXTRFsSAgJKBV6+pBPbNC6P8mqVyXCcx2Kad2OUpk37ui6LEm3VtB8oRRnZcdrhAg1dCptPdAnKX1f7K6JMQKeIcpYOQhVWqWyvfh+TDv2uZz7svMIVA1lEubx8//Qxndv0GJSj9L7SLHtaPvVbGszmtgJKZCzS1CQo09GJR2mCtSJBmQ+5E3zffI88GVt0xFUwRi8ttps18ARo6W+niBK3AkIcRekIPqe3IwYVKKPU7hMcY00njitwmQxN4I52MoFPzdpf0L7yaOTzgVXawh/9X7QjGrF9pWKQTgpRm3hMzTbBDfzMfTm2iLJHLMfpQQlKh46ozpJDaVBqXa6vnI6J1jjPE2laK7tLe7vx6tibkhmjZz1G6594gB9uaPLaeRVtfmKUWo7SMeDT6rh9SFE6QD2+bKBagRI9wFP0OJtOyW/NOvchtUpqh2d7+fuxiw1uDder80ClKJcwX8jBkRfR6wKaCTBmqycwZFG+wuVstgPU7efCXpBslrhL1slZ0O61u8yWM3oquU+wfxzDjgylcoDdlQU63Ai+Adbo1wNkUW63U6LOARsGbcwL4vRksjEg2JGWNlrihxHVwintqFG7PZj+9nf0qTkkn3pWJicAwTJU0IlUK9YgPDnbRY6S1iswSAYB/ToTsgb4ieSBXA5x6Id4axGvQLRtRlMIjY2p+H0cJIqMgDxaFbv0ZO9BqB6R4uKQPedEMjqQfmJMv748wyUexzRLZHk4jUOoBB6tpzfPi0RR9sm3OBAejgerRzJtjGhPvaIzyJCSeIC2HltkLByr6FILc4rnKPvfbANHFylJtqaT0G7MdC7TT/yYkOTX8e/AQWlM+m8Wa5KGTy/65Acqfusb8f+SMFmX5wdOdjX7E3IcM8vKTzOIucUJHDlN65oRDZYVZkITvIacpLkSJYUZqZKXN88oTSFLJ8nqj7K/obwuyQ88rvvOJ/SpaoG6DdGtmgn1xvWBWjVR0v0Em73/H0CBmg7b6dpOAAAAAElFTkSuQmCC">     
            </center>
        </div>
        <!-- Librerias de conexion a BD -->
        <%@page import="java.sql.*" %>
       <%@page import="conexionbd.Conexion"%> 
       <!-- Termina Librerias de conexion a BD -->
        
       <!-- Llamada a conexion a BD -->
        <%
            Conexion conexion=new Conexion("jdbc:mysql://localhost/bddti_luna","root", "");  
    String consultaAlumnos="SELECT * FROM exahospital";//consulta que llama los campos y registros de tabla
           ResultSet rs=conexion.ejecutaSelect(consultaAlumnos);
           ResultSetMetaData rsmd =rs.getMetaData();
           int col=rsmd.getColumnCount();

        %>
        <div class="container" style="border-radius: 50px;
background: #e6e6e6;
box-shadow:  20px 20px 60px #c4c4c4,
             -20px -20px 60px #ffffff;">
            <div class="jumbotron" style="border-radius: 50px;
background: #e6e6e6;
box-shadow:  20px 20px 60px #c4c4c4,
             -20px -20px 60px #ffffff;">
               <center><h2>Consulta de Pacientes MedicaSur (LunaReyes)</h2></center>
               <hr>
               <div class="thumbnail">
                   <center>
                       <!--Tabla bootstrap -->
                       <table class="table table-hover alert-danger" border="0" >
                           <thead> <!--cabecera de Tabla bootstrap -->
                           <tr>
                               <%
                              for(int k=1;k<=col;k++){//inicia for 
                               %>
                        
                           <th scope="col"><h3><strong><%=  rsmd.getColumnName(k)%></strong></h3></th>
                       
                               <%
                              }//termina for
                               %>
                           </tr>
                           </thead>
                               <%
                                while(rs.next()){//inicia while
                               %>
                               <td><h4><%=  rs.getString(1)%></h4></td>
                               <td><h4><%=  rs.getString(2)%></h4></td>
                               <td><h4><%=  rs.getString(3)%></h4></td>
                               <td><h4><%=  rs.getString(4)%></h4></td>
                           </tr>
                           <%
                                }//termina while
                           %>
                           </tbody>
                       </table>
                       <hr>
                       
                       <hr>
                       <h3>Fecha y hora del sistema: <%= new java.util.Date()%> </h3>
                       <a href="index.html"><h4>Regresar a Menu Principal</h4></a>
                   </center>    
               </div>
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
