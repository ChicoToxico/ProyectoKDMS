<%
String id_prod1 = (String)session.getAttribute("num");
String nombre_prod1 = request.getParameter("nombre_prod");
String cantidad_prod1 = request.getParameter("ap1");
String frecuencia_prod1 = request.getParameter("ap2");
String fecha_prod1 = request.getParameter("ap3");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
        <head>
            <title>Actualización</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
       
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
<li><a href="Actualizar.html">Modificar</a></li>
<li><a href="borrarRegistros.html">Borrar</a></li>
<li><a href="consultas.jsp">Mostrar</a></li>
<li><a href="#.html">.</a></li>
</UL>
</nav>
</header>    
    <body>
        <br>
        <br>
        <br>
    <center> <h1>Actualizando</h1></center>
        <hr>
        <br>
        <%@page import ="java.sql.*"%>
        <%@page import = "conexion.BDkdmus"%> 
        
        <%
       BDkdmus conexion = new BDkdmus("jdbc:oracle:thin:@127.0.0.1:1521:XE","KDMS","12345");
       String query="update producto SET nombre_prod='"+nombre_prod1+"',cantidad_prod='"+cantidad_prod1+"',frecuencia_prod='"+frecuencia_prod1+"',fecha_prod='"+fecha_prod1+"' where id_prod = '"+id_prod1+"'";
        int c=conexion.ejecutaSentenciaCambios(query);
        if(c==1){
        %>
        <center><h1>Registro  Actualizado </h1> </center> 
        
        <%}
        
       %>
        
        <script type="js/jquery-1.11.3.min"></script>        
 <script src="js/bootstrap.js"></script>
    </body>
</html>
