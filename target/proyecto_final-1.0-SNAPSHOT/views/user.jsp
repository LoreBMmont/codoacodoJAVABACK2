<%@page import="database.UserDAO"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
            <%         
            String userName = request.getParameter("user");
            String pass = request.getParameter("password");
            UserDAO userDB = new UserDAO();
            boolean exists = userDB.login(userName, pass);          
            
            if (exists) {      
            %>  
            <h1 class="m-5 text-success" >Acceso garantizado</h1>
            <h2 class="text-dark">Bienvenido al sistema</h2>
            <% 
               } else {
            %>
            <h1 class="m-5 text-danger" >Acceso denegado</h1>
            <a href="/" class="text-primary"> Volver al login</a>
            <% 
                }
            %> 
    </body>
</html>
