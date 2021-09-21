<%-- 
    Document   : index
    Created on : 20 de set. de 2021, 20:23:44
    Author     : isabela
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IsabelaApp - Index</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        
  <%if(sessionName==null) {%>
   <div class="container">
        <div class="card card-container">
            <form class="form-signin" method="post">                
                <input type="text" 
                id="inputEmail" 
                name="name"
                class="form-control" 
                placeholder="Usuário"
                required>

                <input type="password" 
                id="inputPassword" 
                name="password"
                class="form-control" 
                placeholder="Senha" 
                required>
                
                <button 
                class="btn btn-primary btn-signin"
                name="session-login"
                type="submit">Login</button>
            </form>
        </div>
    </div>
   <%}else {%>
   
   <div class="container"> 
   <table border="1" style="width:500px;height:150px">
            
           <% List<String> lista = new ArrayList();
           String sessionNumbers = "";
              
            if(sessionCounter <=1) { %>
            
            <tr>
                <th>Índice</th>
                <th>Número</th>
            </tr>                
            <%  
                for(int i=1; i<=6; i++) { %>
            <tr>
                <td><%=i%></td>
                
                <% int n = ((int) (Math.random()*100));%>
                <td><%=n%></td>
                <%  String numero = String.valueOf(n);
                    lista.add(numero); 
                %>
            </tr>         
        <% }  %>
        <% String numbers = ""; 
        session.setAttribute(numbers, lista.toString()); 
        sessionNumbers = (String)session.getAttribute(numbers);
        } 
        else { %>
            
            <tr>
                <th>Índice</th>
                <th>Número</th>
            </tr>  
          <% for (int i = 0; i < 6; i++) { %>            
           <tr>
               <th><%=i+1%></th>
               <th><%=lista.size() == 0 ? null : lista.get(i)%></th>
           </tr>
            <%}%>
        <%  } %>
        </table>        
        
   </div>
   
   <%}%>
  
    </body>
</html>

<style>
    
body {    
    margin: 0px;
    width: 100vw;
    height: 100vh;
    overflow-x: hidden;   
}
    
.container {

    width: 100vw;
    height: 90vh;
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
}

    
.card-container.card {
    max-width: 500px;
    padding: 40px 40px;
}

.btn {
    font-weight: 700;
    height: 36px;
    -moz-user-select: none;
    -webkit-user-select: none;
    user-select: none;
    cursor: default;
}

.card {
    background-color: #F7F7F7;
    padding: 20px 25px 30px;
    margin: 0 auto 25px;
    margin-top: 50px;
}


.form-signin #inputEmail,
.form-signin #inputPassword {
    direction: ltr;
    height: 44px;
    font-size: 16px;
}

.form-signin input[type=email],
.form-signin input[type=password],
.form-signin button {
    width: 100%;
    display: block;
    margin-bottom: 10px;
    z-index: 1;
}

.btn.btn-signin {
    background-color: rgb(113, 65, 190);
    padding: 0px;
    font-weight: 700;
    font-size: 14px;
    height: 36px;
    border-radius: 3px;
    border: none;
    transition: all 0.218s;
}

.btn.btn-signin:hover,
.btn.btn-signin:active,
.btn.btn-signin:focus {
    background-color: rgb(71, 3, 102);
}
    
    
    
</style>
