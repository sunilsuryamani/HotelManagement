<%@page import="hotelDAO.AdminlgoinData"%>
<jsp:useBean id="login" class="model.Adminlogin" scope="session"/>
<jsp:setProperty name="login" property="*"/>

<%
    String result =AdminlgoinData.getAdminByLoginId(login);
    
        if (result.equals("true")) {
            session.setAttribute("email", login.getEmail());
            response.sendRedirect("home.jsp");
        }
        if (result.equals("false")) {
            response.sendRedirect("adminLogin.jsp?status=false");
        }

        if (result.equals("error")) {
            response.sendRedirect("adminLogin.jsp?status=error");
        }

%>