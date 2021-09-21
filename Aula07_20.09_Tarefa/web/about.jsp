<%-- 
    Document   : about
    Created on : 20 de set. de 2021, 21:01:56
    Author     : isabela
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IsabelaApp - About</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
         <div style="text-align:center; margin-top:15px;">
         <%if(sessionName!=null) {%>
        <h1>Isabela Duarte Moreno </h1>   
        <h2>(1290482013020)</h2>
        <hr/>
        <a href="https://www.github.com/dmisabela">
            <img src="https://cdn-icons-png.flaticon.com/512/25/25231.png" style="width:80px">
            <h4>Github</h4>
        </a>
        
        <%}else{%>  
        <div style="color:red"> Você não tem permissão para acessar esta página </div>
        <%}%>
        
        </div> 
    </body>
</html>
