<%-- 
    Document   : logoutUser
    Created on : Feb 26, 2020, 4:15:19 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
session.invalidate();
response.sendRedirect("home.jsp");
%>
    </body>
</html>
