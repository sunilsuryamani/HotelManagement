<%-- 
    Document   : UploadGalley
    Created on : Feb 16, 2020, 11:04:38 PM
    Author     : admin
--%>
<%@include file="header.jsp"  %>
<%@page import="model.GalleryDetails,hotelDAO.GalleyDataAccess,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%  
        String id=request.getParameter("id");  
        GalleryDetails g=GalleyDataAccess.getGalleryById(Integer.parseInt(id));  
        %> 
        <section class="upload-gallery evet-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3"></div>
                    <div class="col-lg-6 upload-form">

                        <form action="../UpdateGallery" method="post" enctype = "multipart/form-data"> 
                            <div class="form-group form-check">
                                <input type="hidden" class="form-control" name="id"value="<%=g.getId()%>" >
                            </div>
                            <div class="form-group">
                                <label for="email">Image:</label>
                                <input type="file" class="form-control" placeholder="Upload Image" id="image" name="gimage" size = "50">
                                <img width="200px" height="100px"src="../RemoteAccess/images/gallery/<%=g.getImage()%>">
                            </div>
                            <div class="form-group">
                                <label for="title">Title:</label>
                                <input type="text" class="form-control" placeholder="Enter Title"  name="title" value="<%=g.getTitle()%>">
                            </div>
                            <div class="form-group">
                                <label for="page">Page Url:</label>
                                <input type="text" class="form-control" placeholder="Enter Page Url" id="title" name="pageurl" value="<%=g.getPageUrl()%>">
                            </div>
                            <div class="form-group">
                                <label for="page">Status:</label>
                                <input type="text" class="form-control" value="<%=g.getStatus()%>" disabled>
                            </div>
                            <div class="form-group">
                                <select class="form-control" id="coutry" name="status">
                                    <option disabled selected value="room_type">--Select Gallery Status--</option>
                                    <option value="active">Active</option>
                                    <option value="in_active">In-Active</option>                                
                                </select>
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
