<%
String nombreUs=request.getParameter("nombreUs");
String apePaterno=request.getParameter("apellidoPat");
String edadUs=request.getParameter("edad");
String ocuUs=request.getParameter("ocupacion");
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
<link rel="stylesheet"  href="fonts/style.css">
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
			<li><a href="kdms.html">Conoce que es KADMUS</a></li>
      <li><a href="kdms.html">Descargar</a></li>
      <li><a href="blogs.html">Te ayudamos a ahorrar</a></li>
      <li><a href="logueo.html"><span class="icon-smirking-face-sunglasses" style=" font-size: 20px;"></span> Inicia sesion</a></li>
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
         
        <%
         int numCuenta=Integer.parseInt(request.getParameter("numCuenta"));
        BDkdmus conexion = new BDkdmus("jdbc:oracle:thin:@127.0.0.1:1521:XE","KDMS","12345");
         
        String query="insert into usuario values('"+numCuenta+"','"+nombreUs+"','"+apePaterno+"','"+edadUs+"','"+ocuUs+"')";
    
        int c=conexion.ejecutaSentenciaCambios(query);
        
         if(c==1){
    
        %>
    <center> <h2>Datos del nuevos</h2>
        <table width="550" heigth="350" border="2" align="center" style=" background-color: background-color:rgba(7 ,195, 31, 0.2); " >
            <tr>
                <td><h3>Números dijitados:</h3> </td>
                <td> <h3> <%=numCuenta%> </h3> </td>
            </tr>
            <tr>
                <td><h3>Nombre:   </h3> </td> 
                <td> <h3> <%=nombreUs%> </h3> </td>
            </tr> 
            <tr>
                 <td><h3>Apellidos: </h3> </td> 
                 <td><h3> <%=apePaterno%> </h3> </td>
            </tr>  
            <tr>
                <td><h3>Edad:</h3> </td> 
                <td> <h3> <%=edadUs%> </h3> </td>
            </tr> 
            <tr>
                <td><h3> Ocupación:</h3> </td> 
                <td> <h3> <%=ocuUs%> </h3> </td>
            </tr>
        </table>
            <br>
            <br>
            <table>
            <tr>
        
        <td> <a href="logueo.html"> <center>  <input type="submit" name="Submit"  value="Ingresar" style=" border-radius: 50px 20px;"> </center></a> </td>
            </tr>
        <% }%>
        </table>
</center>
       <script type="js/jquery-1.11.3.min"></script>        
 <script src="js/bootstrap.js"></script>
    </body>
</html>

