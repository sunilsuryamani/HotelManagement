<%--<%@page import="model.UserDetails,hotelDAO.LoginCustomer,java.util.*"%>

<%
        String email;
        String password;
        String book;
        String emaillogin="";
        if(emaillogin!=null && emaillogin.equals(""))
        {
            out.println("session login");
        }else{
            out.println("user login");
        }
%>--%>
<%@page import="hotelDAO.LoginCustomer"%>
<jsp:useBean id="login" class="model.UserDetails" scope="session"/>
<jsp:setProperty name="login" property="*"/>

<%
    String result = LoginCustomer.getUserByLoginId(login);
    String pageurl = (String) session.getAttribute("book");
    if (result != null && pageurl != null) {
        if (result.equals("true") && pageurl.equals("book")) {
            out.println(pageurl);
            session.setAttribute("email", login.getEmail());
            response.sendRedirect("../bookNow.jsp");
        }
        if (result.equals("false")) {
            out.println(pageurl);
            response.sendRedirect("../customerLogin.jsp?status=false");
        }

        if (result.equals("error")) {
            response.sendRedirect("../customerLogin.jsp?status=error");
        }
    } else {
        if (result.equals("true")) {
            session.setAttribute("email", login.getEmail());
            response.sendRedirect("../home.jsp");
        }
        if (result.equals("false")) {
            out.println(pageurl);
            response.sendRedirect("../customerLogin.jsp?status=false");
        }

        if (result.equals("error")) {
            response.sendRedirect("../customerLogin.jsp?status=error");
        }

    }
 

 
%>