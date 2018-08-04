<%-- 
    Document   : error
    Author     : Gerson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>error faltas del sistema </title>
    </head>
    <body>
    <center> <h1>ERROR 1 Fallo de sistema y servicio </h1> </center>
    
    <%@page  isErrorPage="true"%>
    <h3>Verifica</h3>
    <h2> <%=exception%></h2>
    
    </body>
</html>
