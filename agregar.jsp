<%
String nombre_prod=request.getParameter("nombreprod");
String cantidad_prod=request.getParameter("cantidadprod");
String frecuencia_prod=request.getParameter("frecuenciaprod");
String fecha_prod=request.getParameter("fechaprod");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>NUEVO</title>
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
			<li><a href="editar.html">Modificar</a></li>
			<li><a href="borrarRegistros.html">Borrar</a></li>
      
			

		</UL>
</nav>
</header>
    <style>
        table{
	background-color:rgba( 254,199, 31, 0.2); 
	text-align: left;
	border-collapse: collapse;
	
}
th,td{
	padding: 0px;
}
tr:nth-child(even){
	background-color: #C4E9ED;
}
        
        
    </style>
    
    <body style=" background-color:black;">
        <br>
        <br>
        <br>
        <br>
        <h1> <CENTER> Registro agregado de forma exitosa</CENTER></h1>
        <hr><br>
        <%@page import ="java.sql.*"%>
        <%@page import = "conexion.BDkdmus"%>
         <%@page errorPage="error.jsp"%>
        <%
         int numCuenta=Integer.parseInt(request.getParameter("numCuenta"));
        BDkdmus conexion = new BDkdmus("jdbc:oracle:thin:@127.0.0.1:1521:XE","KDMS","12345");
         
        String query="insert into producto values('"+numCuenta+"','"+nombre_prod+"','"+cantidad_prod+"','"+frecuencia_prod+"','"+fecha_prod+"')";
    
        int c=conexion.ejecutaSentenciaCambios(query);
        
         if(c==1){
    
        %>
    <center> <h2>Datos del nuevos</h2>
        <table width="550" heigth="350" border="2" align="center" style=" background-color: background-color:rgba(7 ,195, 31, 0.2); " >
            <tr>
                <td><h3>Numeros dijitados:</h3> </td>
                <td> <h3> <%=numCuenta%> </h3> </td>
            </tr>
            <tr>
                <td><h3>Nombre del producto:   </h3> </td> 
                <td> <h3> <%=nombre_prod%> </h3> </td>
            </tr> 
            <tr>
                 <td><h3>Cantidad: </h3> </td> 
                 <td><h3> <%=cantidad_prod%> </h3> </td>
            </tr>  
            <tr>
                <td><h3>Frecuencia de la compra:</h3> </td> 
                <td> <h3> <%=frecuencia_prod%> </h3> </td>
            </tr> 
            <tr>
                <td><h3> Fecha de la compra:</h3> </td> 
                <td> <h3> <%=fecha_prod%> </h3> </td>
            </tr>
        </table>
            <br>
            <br>
            <table
            <tr>
        <td> <a href="Agregar.html"> <center>  <input type="submit" name="Submit" value="Agregar datos"  style=" border-radius: 50px 20px;"> </center> </a></td>
        <td> <a href="index.html"> <center>  <input type="submit" name="Submit"  value="Ir a Menu" style=" border-radius: 50px 20px;"> </center></a> </td>
            </tr>
        <% }%>
        </table>
</center>
  

       <script type="js/jquery-1.11.3.min"></script>        
 <script src="js/bootstrap.js"></script>
    </body>
</html>
