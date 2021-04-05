<%-- 
    Document   : EditServicePage
    Created on : Feb 17, 2020, 7:29:09 AM
    Author     : admin
--%>

<%@include file="header.jsp"  %>
<%@page import="model.ServiceDetails,hotelDAO.ServiceDataAccess,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
        String id=request.getParameter("serviceUId");  
        ServiceDetails s=ServiceDataAccess.getServiceById(Integer.parseInt(id));  
        %> 
        <section class="upload-gallery evet-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3"></div>
                    <div class="col-lg-6 upload-form">
                    <form action="/action_page.php">
                          <div class="form-group form-check">
                             <input type="hidden" class="form-control" value="<%=s.getId()%>" >
                        </div>
                        <div class="form-group">
                            <label for="email">Image:</label>
                            <input type="file" class="form-control" placeholder="Upload Image" id="image" name="uimage">
                            <img width="200px" height="100px"src="../RemoteAccess/images/<%=s.getImage1()%>">
                        </div>
                        <div class="form-group">
                            <label for="email">Image 2:</label>
                            <input type="file" class="form-control" placeholder="Upload Image" id="image" name="uimage">
                            <img width="200px" height="100px" src="../RemoteAccess/images/<%=s.getImage2()%>">
                        </div>
                        <div class="form-group">
                            <label for="title">Title:</label>
                            <input type="text" class="form-control" placeholder="Enter Title" id="title" name="utitle" value="<%=s.getTitle()%>">
                        </div>
                         <div class="form-group">
                            <label for="title">Description:</label>
                            <textarea  class="description-edit" type="text" placeholder="News"><%=s.getDescription()%></textarea>                        
                        </div>
                        <div class="form-group">
                            <label for="page">Page Url:</label>
                            <input type="text" class="form-control" placeholder="Enter Page Url" id="title" name="utitle" value="<%=s.getPageUrl()%>">
                        </div>
                         <div class="form-group">
                            <label for="page">Status:</label>
                            <input type="text" class="form-control" placeholder="Enter Status" id="title" name="utitle" value="<%=s.getStatus()%>">
                        </div>
                       
                        <button type="submit" class="btn btn-primary">Upload Gallery</button>
                    </form>
                        </div>
                    <div class="col-lg-4"></div>
                </div>
            </div>
        </section>
        <%@include file="footer.jsp"  %>
    </body>
</html>
