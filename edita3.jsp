<%
String numero1=(String)session.getAttribute("id_prod");
String nombre1=request.getParameter("nombre_prod");
String cant1=request.getParameter("ap1");
String fre1=request.getParameter("ap2");
String fec1=request.getParameter("ap3");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Producto</title>
    </head>
    
           <!--3--> 
    <center><h1>Actualizar Alumno</h1></center>
    <hr><br>
    <!--4 librerias-->
        <%@page import="java.sql.*"%>
        <%@page import = "conexion.BDkdmus"%>
     <!--5-->
        <%
        BDkdmus conexion = new BDkdmus("jdbc:oracle:thin:@127.0.0.1:1521:XE","KDMS","12345");
        String query ="Update producto set NOMBRE_PROD ='"+nombre1+"', cantidad_prod= '"+cant1+"', frecuencia_prod = '"+fre1+"', fecha_prod = '"+fec1+"' where id_prod = '"+numero1+"' ";
        int c=conexion.ejecutaSentenciaCambios(query);
        if(c==1){
        %>
        <h1>Registro Actualizado oki!!</h1>
        
        <% 
        }
        %>
    
 </body>
</html>

