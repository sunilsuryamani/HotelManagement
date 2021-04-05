<%-- 
    Document   : wedding
    Created on : Jan 24, 2020, 11:41:24 PM
    Author     : admin
--%>
<%@include file="header.jsp"  %>
<%@page import="model.ServiceDetails,hotelDAO.ServiceDataAccess,java.util.*"%>
<%@page import="model.GalleryDetails,hotelDAO.GalleyDataAccess,java.util.*"%>
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
        List<ServiceDetails> list = ServiceDataAccess.getWedding();
        request.setAttribute("list", list);
    %> 
     <%
        List<GalleryDetails> weddinglist = GalleyDataAccess.getAllWeddingGalley();
        request.setAttribute("weddinglist", weddinglist);
    %>
        <section class="primary-bg comman_bg_details">
            <div class="wedding_text">Wedding</div>
        </section>
        <section class="primary-bg comman_section__details">
            <div class="container-fluid">
                 
                    <div class="row">
                        <div class="page_direction">
                            <i class="fa fa-home" aria-hidden="true"></i>
                            <a href="home.jsp">Home</a>/<span><i class="fa fa-check" aria-hidden="true"></i>Wedding Page</span>
                        </div>
                        <c:forEach items="${list}" var="u">
                        <div class="col-md-4 wedding_grid">

                            <div class="member_wedding_img ">
                                <img src="RemoteAccess/images/${u.getImage1()}" alt="image">

                            </div>
                        </div>
                        </c:forEach>
                        <div class="col-md-8 wedding_grid">
                            <div col-md-2 wpb_wrapper>
                                <h2 style="color: #000000;text-align: left" class="vc_custom_heading vc_custom_1532948922873">Dear Newlyweds!</h2>
                                <p style="font-size: 16px;color: #a0a0a0;text-align: left" class="vc_custom_heading">HOTEL GRAND<br>
                                </p>
                            </div>
                            <c:forEach items="${list}" var="u"> 
                                <div class="wpb_text_column wpb_content_element f_md gold">
                                    <div class="wpb_wrapper">
                                        <p class="gold" style="text-align: center;"><strong><em>${u.getTitle()}</em></strong><br>
                                        
                                            ${u.getDescription()}
                                        

                                    </div>
                                </div>
                            </c:forEach>

                        </div>

                    </div>
                <div class="row">
                    <div class="col-md-2 wedding_grid">

                    </div>
                    <c:forEach items="${list}" var="u">
                    <div class="col-md-5 wedding_grid">

                        <div class="member_wedding_img ">
                            <img src="RemoteAccess/images/${u.getImage2()}" alt="image">

                        </div>
                    </div>
                    </c:forEach>
                    <div class="col-md-5 wedding_grid">
                        <div class="wpb_wrapper"><h3 style="text-align: left" class="vc_custom">
                                <b><i>CONTACT FURTHER INFORMATION</i></b></h3><strong>MR. NILESH</strong>
                            <p><strong>MOB +387 61 107 690</strong></p>
                            <p><strong>TEL +387 33 563 445</strong></p>
                            <p><strong class="email_text">e-mail: <a href="mailto:nilesh@hotelgrand.com">nilesh@hotelgrand.com</a></strong></p>
                            <div class="ult-spacer spacer-5e3e38609d2f2" data-id="5e3e38609d2f2" data-height="25" data-height-mobile="25" data-height-tab="25" data-height-tab-portrait="" data-height-mobile-landscape="" style="clear:both;display:block;">

                            </div><h3 style="text-align: left" class="vc_custom_heading vc_custom_1532949382664">We are social</h3>

                            <ul class="dt-sc-sociable ">
                                <li> <a class="fa fa-facebook social_icon" target="_blank" title="Facebook" href="https://www.facebook.com/pages/Hotel-Grand-Sarajevo/346376688800937?ref=hl"> </a> </li>
                                <li> <a class="fa fa-instagram social_icon" target="_blank" title="Instagram" href="https://www.instagram.com/grand.sarajevo/?hl=bs"> </a> </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="wedding" class="gallery_table_bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section_heading section_heading_2">
                            <h2> Wedding Gallery </h2>
                        </div>
                        <div class="row">
                            <c:forEach items="${weddinglist}" var="u">
                            <div class="col-md-4 service_grid">
                                <div class="member_detail1">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/wedding/${u.getImage()}" style="width:100%" onclick="openModal();currentSlide(1)" class="hover-shadow cursor">
                                    </div>                                  
                                </div>
                            </div>
                            </c:forEach>
                           
                        </div>
                    </div
                </div>
            </div>

        </section>



        <%@include file="footer.jsp"  %>
    </body>
</html>
