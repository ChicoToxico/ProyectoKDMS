<%
 String nombreUsuario=request.getParameter("login");
String passwordUsuario=request.getParameter("pass");   
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido al sistema</title>
        <!--Para sitio DRW diseño web responsivo ADAPTATIVO a cualquier navegador y dispositivo-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" type="text/css" href="estilos_base.css">
  <link rel="icon" href="images/1.png">
     <!-- Bootstrap core CSS -->
   <link href="css/bootstrap.min.css" rel="stylesheet">
  
   <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<!-- Custom styles for this template -->    
    <link href="css/navbar.css" rel="stylesheet">
 <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/main.css" rel="stylesheet">
  <script type="text/javascript" src="./demobar_files/jquery-latest.min.js"></script>
<script type="text/javascript" src="./demobar_files/jquery.min.js"></script>
<script type="text/javascript" src="./demobar_files/bootstrap.js"></script>
<link type="text/css" rel="stylesheet" href="./demobar_files/bootstrap.css">
  <script src="js/ie-emulation-modes-warning.js"></script>
    <script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>
</head>

<style type="text/css">
  body{
  background-image: url(images/home.jpg);}


  /*Estilo Navbar*/

    .navbar{
      font-family: 'Quicksand', sans-serif;
    }

    .navbar-default .navbar-nav > li > a:hover, .navbar-default .navbar-nav > li > a:focus {
      color: #38E1CC;  /*Sets the text hover color on navbar*/
    }

    .navbar-default .navbar-nav > .active > a, .navbar-default .navbar-nav > .active >   
       a:hover, .navbar-default .navbar-nav > .active > a:focus {
      color: white; /*BACKGROUND color for active*/
      background-color: #500;
    }

   .navbar-default {
     background-color: #444;
     border-color: #030033;
    }

   .dropdown-menu > li > a:hover,
   .dropdown-menu > li > a:focus {
       color: #262626;
       text-decoration: none;
      background-color: #111;  /*change color of links in drop down here*/
     }

    .nav > li > a:hover,
    .nav > li > a:focus {
        text-decoration: none;
       background-color: white; /*Change rollover cell color here*/
     }


    .navbar-default  .navbar-nav > li > a {
       color: white; /*Change active text color here*/
     }
     .navbar-default .navbar-brand {
    color: white;
      }

    /*Termina Estilo Navbar*/

</style>
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation"> <!--NavBar-->
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" "dropdown yamm-fw" class="toplink" href="index.php" target="_self"> <img src="images/1.png" width="50" height="50"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="dropdown yamm-fw"><a class="toplink" href="index.html" target="_self">Inicio</a></li>
         <li class="dropdown yamm-fw"><a class="toplink" href="kdms.html" target="_self">¿Qué es kadmus?</a></li>
        <li class="dropdown yamm-fw"><a class="toplink" href="#" target="_self">Descargas</a></li>
        <li class="dropdown yamm-fw"><a class="toplink" href="blogs.html" target="_self">Te ayudamos a ahorrar</a></li>
      </ul>
    </div>
  </div>
 </nav>
<!-- aqui acaba la barra de navegacion  -->  
    <body style=" background-color:black;" >
        <div class="jumbotron" style=" background-color:rgba(31 ,31, 31, 0.2);
 color: white; border-radius: 25px;  " >
            <center> <h1>Credenciales correctas</h1>
        <h2>Bienvenido</h2> </center> </div>
        
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div>
    <center> <a href="index.html"> <h5> Regresa a Página de inicio </h5>  </a></center> 
    <center> <a href="Agregar.html"> <h5> Registra tus compras de forma online </h5></a></center>   
       </div>
        <script type="js/jquery-1.11.3.min"></script>        
 <script src="js/bootstrap.js"></script>
    </body>
</html>
