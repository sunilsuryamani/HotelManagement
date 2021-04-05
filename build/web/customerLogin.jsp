<%-- 
    Document   : customerLogin
    Created on : Feb 23, 2020, 8:01:09 AM
    Author     : admin
--%>
<%@include file="header.jsp"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         
        <section class="primary-bg comman_bg_details">
            <div class="wedding_text">Log In Page</div>
        </section>
        <section class="login-event user-login comman_section__details">
            <div class="container form-container">
                <div class="row">
                    <div class="page_direction">
                        <i class="fa fa-home" aria-hidden="true"></i>
                        <a href="home.jsp">Home</a>/<span><i class="fa fa-registered" aria-hidden="true"></i>Log In Page</span>
                    </div>
                    <div class="col-md-4"></div>
                    <div class="col-md-4 login-form-body" >
                    <%
                        String email = (String) session.getAttribute("email");

                        //redirect user to home page if already logged in
                        if (email != null) {
                            response.sendRedirect("home.jsp");
                        }

                        String status = request.getParameter("status");

                        if (status != null) {
                            if (status.equals("false")) {%>
                            <div class="text-danger"><%out.println("Incorrect login details!");%></div>
                           <% } else {%>
                                <div class="text-warning"><%out.println("Some error occurred!");%></div>
                            <%}
                        }
                    %>
                    
                        <form action="session/customerLogin.jsp" method="post">
                            <div class="form-group col">
                                <label for="email">Email address:</label>
                                <input type="text" class="form-control" placeholder="Enter email" name="email">
                            </div>
                            <div class="form-group col">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" placeholder="Enter password" name="password">
                            </div>
                            <div class="form-group form-check">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox"> Remember me
                                </label>
                            </div>
                            <button type="submit" class="login-btn btn btn-primary">Log In</button>
                            <a href="registrationPage.jsp">Registration Now</a>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    <%@include file="footer.jsp"  %> 
</html>
