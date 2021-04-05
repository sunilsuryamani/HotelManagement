<%-- 
    Document   : moreDetail
    Created on : Feb 24, 2020, 4:00:09 PM
    Author     : admin
--%>
<%@include file="header.jsp"  %>
<%@page import="model.RoomDetails,hotelDAO.RoomDataAccess,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
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
        <section class="primary-bg comman_bg_details">
            <div class="wedding_text">Booking</div>
        </section>
        <section class="primary-bg comman_section__details">
            <div class="container-fluid">
                <div class="row">
                    <div class="page_direction">
                        <i class="fa fa-home" aria-hidden="true"></i>
                        <a href="home.jsp">Home</a>/<span><i class="fa fa-check" aria-hidden="true"></i>More Details Page</span>
                    </div>                 
                    <div class="nonAc box">
                        <div class="col-md-5 room_details">
                            <h6>Room Description</h6>
                            <hr>
                            <div class="room_memer_dscription">
                                <strong><%=r.getRoomType()%></strong>
                                <p>
                                    <%=r.getRoomDes()%>
                                </p>
                                <strong>Complimentary Breakfast.</strong><br>
                                <span>NOTE: Extra bed charge Rs. <%=r.getOffer()%>/- + Tax.</span><br>
                                <span class="nonac_condotion">*Non AC Single Room – Rs.<%=r.getSingleRoomPrice()%>/- Nett</span><br>
                                <span class="nonac_condotion">*Non AC Double Room – Rs.<%=r.getDoubleRoomPrice()%>/- + GST (12%)</span>
                            </div>


                            <div class="facility_deatils">
                                <h6>Room Facility</h6>
                                <span><i class="fa fa-check" aria-hidden="true"></i><%=r.getRoomFacility()%></span><br>
                            </div>


                        </div>
                        <div class="col-md-4 room_available_image_detail">

                            <div class="room_available_image">
                                <img class="nonAcImg" src="RemoteAccess/images/roomAvailability/<%=r.getImage()%>" width="100%">
<!--                                <img class="nonAcImg" src="RemoteAccess/images/roomAvailability/normalroom2.jpg" width="100%">
                                <img class="nonAcImg" src="RemoteAccess/images/roomAvailability/normalroom3.jpg" width="100%">
                                <img class="nonAcImg" src="RemoteAccess/images/roomAvailability/normalroom4.jpg" width="100%">-->
                            </div>
                        </div>
                    <div><a href="bookNow.jsp?book=book">
                            <button type="submit" class="btn btn_check btn-default">Book Now</button></a>
                    </div>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="footer.jsp"  %>
</html>
