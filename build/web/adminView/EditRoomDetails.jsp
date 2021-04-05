<%-- 
    Document   : EditRoomDetails
    Created on : Feb 17, 2020, 4:49:59 PM
    Author     : admin
--%>

<%@include file="header.jsp"  %>
<%@page import="model.RoomDetails,hotelDAO.RoomDataAccess,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body>
        <%  
        String id=request.getParameter("roomEid");  
        RoomDetails r=RoomDataAccess.getRoomById(Integer.parseInt(id));  
        %> 
        <section class="upload-gallery evet-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3"></div>
                    <div class="col-lg-6 upload-form1">
                    <form action="/action_page.php">
                          <div class="form-group form-check">
                             <input type="hidden" class="form-control" value="<%=r.getId()%>" >
                        </div>
                        <div class="form-group">
                            <label for="email">Room Type:</label>
                            <input type="text" class="form-control" value="<%=r.getRoomType()%>" disabled>

                        </div>
                        <div class="form-group">
                            <select class="form-control" id="coutry" name="position">
                                <option disabled selected value="room_type">--Select Type of Room --</option>
                                <option value="Non AC">Non AC</option>
                                <option value="AC">AC</option>
                                <option value="Delux">Delux</option>
                                <option value="Super Delux">Super Delux</option>

                            </select>
                        </div>
                        <div class="form-group">
                            <label for="email">Description :</label>
                            <textarea class="description-edit" type="text" placeholder="News"><%=r.getRoomDes()%></textarea>                                     
                        </div>                       
                         <div class="form-group">
                            <label for="page">Offer:</label>
                            <input type="text" class="form-control" placeholder="Offer" name="offer" value="<%=r.getOffer()%>">
                        </div>
                        <div class="form-group">
                            <label for="page">Availability Room:</label>
                            <input type="number" class="form-control" placeholder="Single Room Price" name="sprice" value="<%=r.getAvailableRoom()%>">
                        </div>
                         <div class="form-group">
                            <label for="page">Single Room Price:</label>
                            <input type="number" class="form-control" placeholder="Single Room Price" name="sprice" value="<%=r.getSingleRoomPrice()%>">
                        </div>
                         <div class="form-group">
                            <label for="page">Double Room Price:</label>
                            <input type="number" class="form-control" placeholder="Double Room Price" name="dprice" value="<%=r.getDoubleRoomPrice()%>">
                        </div>
                         <div class="form-group">
                            <label for="page">Room Facility</label>
                            <textarea class="description-edit" type="text" placeholder="News"><%=r.getRoomFacility()%></textarea>
                        </div>
                         <div class="form-group">
                            <label for="page">Status:</label>
                            <input type="text" class="form-control" value="<%=r.getStatus()%>" disabled>
                        </div>
                       <div class="form-group">
                            <select class="form-control" id="coutry" name="status">
                                <option disabled selected value="room_type">--Select Employee Status--</option>
                                <option value="active">Active</option>
                                <option value="nonactive">In-Active</option>                                
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
