<%-- 
    Document   : eliminar
    
    Author     : Gerson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Elininar Registro</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

         <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="uni.css">
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

    </head>
    <header>
<nav  class="rellen1" style=" background-color: black;" >
  <UL>
     <div class="navbar-header"  text-align="center"style="position:center;">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#defaultNavbar1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
      <a class="navbar-brand" href="index.html"><img src="images/logo.png" width="50px" height="50px"></a></div>
<li><a href="editar.html">Editar Registro</a></li>
<li><a href="eliminarProducto.html"> Borrar datos </a></li>
</UL>
</nav>
</header>
    
    <body>

    <center><h1>Registro Eliminado exitosamente</h1></center>
   <hr><br>
    <%@page import ="java.sql.*"%>
    <%@page import = "conexion.BDkdmus"%>
   <%@page errorPage="error.jsp"%>
    <%
        int id_prod=Integer.parseInt(request.getParameter("id_us"));
         BDkdmus conexion = new BDkdmus("jdbc:oracle:thin:@127.0.0.1:1521:XE","KDMS","12345");
        String deleteQuery="delete from producto where id_prod = '"+id_prod+"'";
        int c= conexion.ejecutaSentenciaCambios(deleteQuery);
        if(c==1){
    %>
    <center><h2> Se borro registro de la base de datos </h2></center>
    <center><h2> Numero de cuenta: <%= id_prod %> </h2></center>
    <%
    }else{    
    %>
     <center><h2> No se borro usuario, favor de verificar </h2></center>
     <%
         }
         %>
    
   <script type="js/jquery-1.11.3.min"></script>        
 <script src="js/bootstrap.js"></script>

    </body>
</html>
