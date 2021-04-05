<%-- 
    Document   : paymentForm
    Created on : Feb 23, 2020, 6:46:31 AM
    Author     : admin
--%>
<%@include file="header.jsp"  %>
<%@page import="model.*,hotelDAO.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String email = (String) session.getAttribute("email");
            String name = (String) session.getAttribute("name");
            String mobile = (String) session.getAttribute("mobile");
                //redirect user to login page if not logged in
                if (email == null) {
                    response.sendRedirect("customerLogin.jsp");
                }
        %>
        <% 
             String roomType=request.getParameter("roomType");
             RoomDetails r=RoomDataAccess.getAllRoomDetailsTypeBy(roomType);
             int availableRoom=r.getAvailableRoom();
             int singleBedprice=r.getSingleRoomPrice();
             int doublebedprice=r.getDoubleRoomPrice();
             String checkIn=request.getParameter("checkIn");
             String checkout=request.getParameter("checkout");
             String typeBed=request.getParameter("typeBed");
             
             int totalAmount;
             String noRoom=request.getParameter("noRoom");
             int noOfRoom=Integer.parseInt(noRoom);
             int roomno=availableRoom-noOfRoom;
             if(roomno>0)
             {
                 
        %>
        <section class="payment-event payment-methods-page">
             <div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-4 offset-md-4">
            <div class="card ">
                <div class="card-header">
                    <div class="row">
                        <h3 class="text-xs-center">Payment Details</h3>
                        <img class="img-fluid cc-img" src="http://www.prepbootstrap.com/Content/images/shared/misc/creditcardicons.png">
                    </div>
                </div>
                <div class="card-block">
                    <form action="BookRoom" method="post">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CARD NUMBER</label>
                                    <div class="input-group">
                                        <input type="number" class="form-control" placeholder="Valid Card Number" required size="14"/>
                                        <span class="input-group-addon"><span class="fa fa-credit-card"></span></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-7 col-md-7">
                                <div class="form-group">
                                    <label><span class="hidden-xs">EXPIRATION</span><span class="visible-xs-inline">EXP</span> DATE</label>
                                    <input type="tel" class="form-control" placeholder="MM / YY"  required/>
                                </div>
                            </div>
                            <div class="col-xs-5 col-md-5 float-xs-right">
                                <div class="form-group">
                                    <label>CV CODE</label>
                                    <input type="password" class="form-control" placeholder="CVC" required/>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>CARD OWNER</label>
                                    <input type="text" class="form-control" placeholder="Card Owner Names" required/>
                                </div>
                            </div>
                        </div>
                         <input type="hidden" name="cname" value="<%=name%>">
                        <input type="hidden" name="mobile" value="<%=mobile%>">
                        <input type="hidden" name="checkin" value="<%=checkIn%>">
                        <input type="hidden" name="checkout" value="<%=checkout%>">
                        <input type="hidden" name="roomType" value="<%=roomType%>">
                        <input type="hidden" name="typeBed" value="<%=typeBed%>">                       
                        <input type="hidden" name="noRoom" value="<%=roomno%>">
                        <div class="card-footer">
                            <div class="row">
                                <div class="col-xs-12">
                                    <button class="btn btn-primary btn-lg btn-block">
                                        <%  if (typeBed.equals("singleBed")) {
                                                    totalAmount = singleBedprice * noOfRoom;
                                                    out.println("Payment "+totalAmount+"Rs.");
                                                } else {
                                                    totalAmount = doublebedprice * noOfRoom;
                                                    out.println("Payment "+totalAmount+" Rs.");
                                                }
                                            
                                        %>

                                    </button>
                                    <button class="btn btn-warning btn-lg btn-block">Pay Now</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                                         <%                         } else {
                                                request.setAttribute("errorMessage", "Sorry Room is not available your booking Date!");
                                                request.getRequestDispatcher("bookNow.jsp").include(request, response);
                                            }
                                        %>

            </div>
        </div>
    </div>
</div>
        </section>
<%@include file="footer.jsp"  %> 
<style>
    .cc-img {
        margin: 0 auto;
    }
</style>
</html>
