<%-- 
    Document   : bookNow
    Created on : Feb 28, 2020, 7:23:23 PM
    Author     : admin
--%>
<%@include file="header.jsp"%>
 <%@page import="model.*,hotelDAO.*,java.util.*"%>
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
            String book=request.getParameter("book");
            String email = (String) session.getAttribute("email");

                //redirect user to login page if not logged in
                if (email == null) {
                    session.setAttribute("book", book);
                    response.sendRedirect("customerLogin.jsp");
                }
        %>
 <section class="primary-bg comman_bg_details">
            <div class="wedding_text">Booking</div>
        </section>
<section class="primary-bg comman_section__details">
            <div class="container-fluid">
                <div class="row">
                    <div class="page_direction">
                        <i class="fa fa-home" aria-hidden="true"></i>
                        <a href="home.jsp">Home</a>/<span><i class="fa fa-check" aria-hidden="true"></i>Booking Page</span>
                    </div>
                    <div class="col-md-4"></div>
                    <div class="col-md-4 form_bg">
                        <div class="error_text">${errorMessage}</div>
                        <div class="form_control">
                            
                            <form action="paymentForm.jsp" method="post">
                                <div class="form-group">
                                    <label for="date">Check-in *</label>
                                    <input type="date" class="form-control" name="checkIn" required>
                                </div>
                                <div class="form-group">
                                    <label for="date">Check-out *</label>
                                    <input type="date" class="form-control" name="checkout" required>
                                </div>
                                
                                <select class="form-control option-room-book" name="roomType" required>
                                    <option disabled selected value="">--Select Type of Room--</option>
                                    <option value="nonAc">NON AC</option>
                                    <option value="Ac">AIR CONDITION</option>
                                    <option value="Delux">Deluxe</option>
                                    <option value="superDelux">SUPER Deluxe</option>
                                </select>
                                <select class="form-control option-room-book" name="typeBed" required>
                                    
                                    <option disabled selected >--Select Type of Bed--</option>
                                    <option value="singleBed">Single Bed</option>
                                    <option value="doubleBed">Double Bed</option>
                                </select>
                                <select class="form-control option-room-book" name="noRoom" required>
                                    <option disabled selected value="">--Select No. of Room--</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                </select>
                                <input type="hidden" class="form-control" name="book" value="book">
                                <button type="submit" class="btn btn_check btn-default">Book Now</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<%@include file="footer.jsp"%>
