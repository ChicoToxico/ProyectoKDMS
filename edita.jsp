<% 
String numCuenta=request.getParameter("id_prod");
int id_prod=Integer.parseInt(numCuenta);
session.setAttribute("num", numCuenta);
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Busqueda</title> 
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
    <center> <h1> Datos   </h1> </center>
    <%@page import ="java.sql.*"%>
     <%@page import = "conexion.BDkdmus"%> 
    <% 
     BDkdmus conexion = new BDkdmus("jdbc:oracle:thin:@127.0.0.1:1521:XE","KDMS","12345");
    String consulta="select * from producto where id_prod = '"+id_prod+"'";
 ResultSet rs= conexion.ejecutaSentencia(consulta);
 if(rs.next()){
 
    %>
    <h2> Ingresa Datos </h2>
    <table width="280" heigth="200" border="2" align="center">
        <form method="post" action="edita2.jsp">
        <tr>
            <td>
                Nombre del prodcto:
            </td>
            <td> <input type="text" name="nombre_prod" value="<%= rs.getString(2)%>"></td>
        </tr>
        
        <tr>
            <td>
                Cantidad comprada:
            </td>
            <td> <input type="text" name="ap1" value="<%= rs.getString(3)%>"></td>
        </tr>
        
        <tr>
            <td>
                Frecuencia:
            </td>
            <td> <input type="text" name="ap2" value="<%= rs.getString(4)%>"></td>
            </tr>
            
            <tr>
            <td>
                Fecha:
            </td>
            <td> <input type="text" name="ap3" value="<%= rs.getString(5)%>"></td>
            </tr>
            <tr>
                <td> <input type="submit" name="Submit" value="Enviar"</td>
            </tr>
            
        </form>
    </table>
            
            <% } else{%>
            <h2> No existe , intente de nuevo </h2>
            
            <%}%>
            
            <script type="js/jquery-1.11.3.min"></script>        
 <script src="js/bootstrap.js"></script>
    </body>
</html>
