<%-- 
    Document   : mijndryves
    Created on : 27-mrt-2013, 18:10:27
    Author     : Vincent
--%>

<%@page import="Dryves.UserBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <% UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));%>

        Welcome <%= currentUser.getFirstName() + " " + currentUser.getLastName() %>

        
        
    </body>
</html>
