<%-- 
    Document   : EditeHotelNews
    Created on : Feb 17, 2020, 7:09:12 AM
    Author     : admin
--%>

<%@include file="header.jsp"  %>
<%@page import="model.HotelNewsDetails,hotelDAO.HotelNewsDataAccess,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
        String id=request.getParameter("newsUpId");  
        HotelNewsDetails news=HotelNewsDataAccess.getNewsById(Integer.parseInt(id));  
        %> 
        <section class="upload-gallery evet-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3"></div>
                    <div class="col-lg-6 upload-form">
                    <form action="/action_page.php">
                          <div class="form-group form-check">
                             <input type="hidden" class="form-control" value="<%=news.getId()%>" >
                        </div>
                        <div class="form-group">
                            <label for="email">Top Image:</label>
                            <input type="file" class="form-control" placeholder="Upload Image" id="image" name="uimage">
                            <img width="200px" height="100px"src="../RemoteAccess/images/<%=news.getTopImage()%>">
                        </div>
                        <div class="form-group">
                            <label for="email">Bottom Image:</label>
                            <input type="file" class="form-control" placeholder="Upload Image" id="image" name="uimage">
                            <img width="200px" height="100px"src="../RemoteAccess/images/<%=news.getButtomImage()%>">
                        </div>
                        <div class="form-group">
                            <label for="email">Post Date:</label>
                            <input type="date" class="form-control" placeholder="Upload Image" id="image" name="uimage" value="<%=news.getPostDate()%>">
                            
                        </div>
                        <div class="form-group">
                            <label for="title">News Title:</label>
                            <input type="text" class="form-control" placeholder="Enter Title" id="title" name="utitle" value="<%=news.getNewsTitle()%>">
                        </div>
                         <div class="form-group">
                            <label for="title">News:</label>
                            <textarea class="description-edit" type="text" placeholder="News"><%=news.getNews()%></textarea>                        
                        </div>
                        <div class="form-group">
                            <label for="page">Page Position:</label>
                            <input type="text" class="form-control" placeholder="Enter Page Url" id="title" name="utitle" value="<%=news.getPagePosition()%>">
                        </div>
                         <div class="form-group">
                            <label for="page">Status:</label>
                            <input type="text" class="form-control" placeholder="Enter Status" id="title" name="utitle" value="<%=news.getStatus()%>">
                        </div>
                       
                        <button type="submit" class="btn btn-primary">Upload News</button>
                    </form>
                        </div>
                    <div class="col-lg-4"></div>
                </div>
            </div>
        </section>
        <%@include file="footer.jsp"  %>
    </body>
</html>