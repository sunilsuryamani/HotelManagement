<%-- 
    Document   : home
    Created on : Dec 20, 2019, 4:19:39 PM
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
        List<RoomDetails> roomlist = RoomDataAccess.getAllRoom();
        request.setAttribute("roomlist", roomlist);
        %> 
        <section  class="slider_event">
            <div class="container-fluid slider_width">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="RemoteAccess/images/slider/slider1.jpg" alt="Los Angeles" style="width:100%;">
                        </div>

                        <div class="item">
                            <img src="RemoteAccess/images/slider/slider2.jpg" alt="Chicago" style="width:100%;">
                        </div>

                        <div class="item">
                            <img src="RemoteAccess/images/slider/slider3.jpg" alt="New york" style="width:100%;">
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </section>


        <section id="home" class="primary-bg">
            <div class="container scrolling_contain">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section_heading">
                            <h2> NEWS & SPECIAL OFFERS </h2>
                            <h4></h4>
                        </div>		
                    </div>
                    <div class="col-md-4 home_grid">
                        <div class="member_home_details">
                            <div class="member_home_img home_news">
                                <img src="RemoteAccess/images/topnews1.jpg" alt="image">
                                <img src="RemoteAccess/images/buttomnews1.jpg" alt="image">
                            </div>
                            <div class="member_home_name">
                                <span>Posted on 25 Dec 2019 / <i class="fa fa-user" aria-hidden="true"></i> admin</span>
                                <h6> THE NEW LOOK OF THE ROOMS</h6>
                                <p> We took a short winter break and refreshed the look of the 
                                    hotel. Knowing that the comfort of our guests is of greatest 
                                    importance, we renovated part of the hotel rooms. All newly 
                                    renovated rooms are equipped with air-conditioning...</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 home_grid">
                        <div class="member_home_details">
                            <div class="member_home_img home_news">
                                <img class="home_newside_img" src="RemoteAccess/images/topnews2.jpg" alt="image">
                                <img src="RemoteAccess/images/buttomnews2.jpg" alt="image">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 home_grid">
                        <div class="member_home_details">
                            <div class="member_home_img">
                                <img src="RemoteAccess/images/wedding.jpg" alt="image">
                            </div>
                            <div class="member_home_name">
                                <span>Posted on 25 Dec 2019 / <i class="fa fa-user" aria-hidden="true"></i> admin</span>
                                <h6> NEW WEDDING –VISIT US!</h6>
                                <p> The good news is, your wedding website.... 
                                    <!--                                    welcome message is actually pretty simple 
                                                                        stuff once you know what to include, what 
                                                                        not to include, and how to word things clearly.--></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 home_grid">
                        <div class="member_home_details">
                            <div class="member_home_img">
                                <img src="RemoteAccess/images/garden.jpg" alt="image">
                            </div>
                            <div class="member_home_name">
                                <span>Posted on 25 Dec 2019 / <i class="fa fa-user" aria-hidden="true"></i> admin</span>
                                <h6>NEW NILESH HOTEL’S OPEN GARDEN – VISIT US!</h6>
                                <p> New Nilesh Hotel’s Open Garden – Visit us!</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 home_grid">
                        <div class="member_home_details">
                            <div class="member_home_img">
                                <img src="RemoteAccess/images/home.jpg" alt="image">
                            </div>
                            <div class="member_home_name">
                                <span>Posted on 25 Dec 2019 / <i class="fa fa-user" aria-hidden="true"></i> admin</span>
                                <h5> TOURIST GUIDE</h5>
                                <p> 
                                    From now on, you can provide yourself with a licensed 
                                    tourist guide for the city tour through Grand Hotel......<!-- The 
                                    tour guide provides in several foreign languages ​​
                                    (English, German, French, Turkish, Italian and Spanish). 
                                    Reservation of the tourist guide service should be done 24h 
                                    in advance at the contact phone 033 / 563-243 or by e-mail: 
                                    damir@hotelgrand.com-->
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 home_grid">
                        <div class="member_home_details">
                            <div class="member_home_img">
                                <img src="RemoteAccess/images/f.jpg" alt="image">
                            </div>
                            <div class="member_home_name">
                                <span>Posted on 25 Dec 2019 / <i class="fa fa-user" aria-hidden="true"></i> admin</span>
                                <h6> DISHES</h6>
                                <p> We are provides many types of Dishes like Punjabi,Gujarati,
                                    and many other types of indian food and We have also provide the                                    
                                    many other....  <!--types of dishes like italiyan,franch,chines etc..-->
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section id="services" class="padding_bottom_none our_service_bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section_heading section_heading_2">
                            <h2> Our Services </h2>
                            <h4>Welcome Hotel Nilesh</h4>
                        </div>
                    </div>
                    <div class="col-md-4 service_grid">
                        <div class="member_detail1">
                            <div class="member_img1">
                                <img src="RemoteAccess/images/accomodation.jpg" alt="image">
                            </div>
                            <div class="member_name1">
                                <h5> ACCOMODATION</h5>
                                <p> EKONOMIC - LUXURY - VIP</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 service_grid">
                        <div class="member_detail1">
                            <div class="member_img1">
                                <img src="RemoteAccess/images/halls.jpg" alt="image">
                            </div>
                            <div class="member_name1">
                                <h5> HALLS</h5>
                                <p> ELEGANT AND RICH EQUIPPED</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 service_grid">
                        <div class="member_detail1">
                            <div class="member_img1">
                                <img src="RemoteAccess/images/wedding.jpg" alt="image">
                            </div>
                            <div class="member_name1">
                                <h5> WEDDINGS</h5>
                                <p> LETS PLAN YOUR DAY</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 service_grid">
                        <div class="member_detail1">
                            <div class="member_img1">
                                <img src="RemoteAccess/images/GASTRO.jpg" alt="image">
                            </div>
                            <div class="member_name1">
                                <h5> GASTRO</h5>
                                <p> PROFESSIONAL CHEF TEAM</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 service_grid">
                        <div class="member_detail1">
                            <div class="member_img1">
                                <img src="RemoteAccess/images/CATE.jpg" alt="image">
                            </div>
                            <div class="member_name1">
                                <h5> CATERING</h5>
                                <p> GRAND TEAM MEETS ALL WISHES</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 service_grid">
                        <div class="member_detail1">
                            <div class="member_img1">
                                <img src="RemoteAccess/images/INFORMACIJE.jpg" alt="image">
                            </div>
                            <div class="member_name1">
                                <h5> INFORMATIONS</h5>
                                <p> HOTEL GRAND INFORMATIONS</p>
                            </div>
                        </div>
                    </div>            
                </div>
            </div>
        </section>


        <section id="check_Availability" class="primary-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section_heading">
                            <h2> Check Room Details </h2>

                            <h4>BOOK ROOM – ACTION PRICES</h4>
                        </div>		
                    </div>
                    <c:forEach items="${roomlist}" var="u">
                        <div class="col-md-3">
                            <div class=" room_available_image_detail">
                                <h6>${u.getRoomType()}</h6>
                                <div class="room_available_image">
                                    <img src="RemoteAccess/images/gallery/${u.getImage()}" width="100%">
                                </div>
                            </div>
                            <a href="moreDetail.jsp?roomEid=${u.getId()}">
                                <button type="button" class="more-details-room"> More Details </button>
                            </a>
                        </div>
                    </c:forEach>
<!--                    <div class="col-md-3">
                    <div class="room_available_image_detail">
                        <h6> Ac Room</h6>
                        <div class="room_available_image">
                            <img  src="RemoteAccess/images/roomAvailability/acroom1.jpg" width="100%">
                        </div>
                    </div>
                    <button type="button" class="more-details-room">More Details</button>
                    </div>
                    <div class="col-md-3">
                    <div class=" room_available_image_detail">
                        <h6>Delux</h6>
                        <div class="room_available_image">
                            <img class="deluxeImg" src="RemoteAccess/images/roomAvailability/delux1.jpg" width="100%">
                        </div>
                    </div>
                        <button type="button" class="more-details-room">More Details</button>
                    </div>
                     <div class="col-md-3">
                    <div class=" room_available_image_detail">
                        <h6>Super Delux</h6>
                        <div class="room_available_image">
                            <img  src="RemoteAccess/images/roomAvailability/superdeluxe1.jpg" width="100%">
                        </div>
                    </div>
                    <button type="button" class="more-details-room">More Details</button>
                    </div>-->
                </div>

            </div>
        </div>
    </section>
    <section id="gallery" class="gallery_table_bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section_heading section_heading_2">
                        <h2> Gallery </h2>
                    </div>
                    <div class="row">
                        <div class="col-md-4 service_grid">
                            <div class="member_detail1">
                                <div class="member_img1">
                                    <img src="RemoteAccess/images/gallery/g1.jpg" style="width:100%" onclick="openModal();currentSlide(1)" class="hover-shadow cursor">
                                </div>
                                <div class="member_name1">
                                    <h5> Night time</h5>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 service_grid">
                            <div class="member_detail1">
                                <div class="member_img1">
                                    <img src="RemoteAccess/images/gallery/g12.jpg" style="width:100%" onclick="openModal();currentSlide(2)" class="hover-shadow cursor">
                                </div>
                                <div class="member_name1">
                                    <h5> WEDDINGS</h5>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 service_grid">
                            <div class="member_detail1">
                                <div class="member_img1">
                                    <img src="RemoteAccess/images/gallery/g5.jpg" style="width:100%" onclick="openModal();currentSlide(3)" class="hover-shadow cursor">
                                </div>
                                <div class="member_name1">
                                    <h5> Bed Room</h5>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 service_grid gallery_position">
                            <div class="member_detail1">
                                <div class="member_img1">
                                    <img src="RemoteAccess/images/gallery/g17.jpg" style="width:100%" onclick="openModal();currentSlide(4)" class="hover-shadow cursor">
                                </div>
                                <div class="member_name1">
                                    <h5> Dishes</h5>

                                </div>
                            </div>
                        </div>

                    </div>

                    <div id="myModal" class="modal">
                        <span class="close cursor" onclick="closeModal()">&times;</span>
                        <div class="modal-content">

                            <div class="mySlides">

                                <img src="RemoteAccess/images/gallery/g1.jpg" style="width:100%">
                            </div>

                            <div class="mySlides">

                                <img src="RemoteAccess/images/gallery/g5.jpg" style="width:100%">
                            </div>

                            <div class="mySlides">

                                <img src="RemoteAccess/images/gallery/g12.jpg" style="width:100%">
                            </div>

                            <div class="mySlides">

                                <img src="RemoteAccess/images/gallery/g17.jpg" style="width:100%">
                            </div>

                            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                            <a class="next" onclick="plusSlides(1)">&#10095;</a>

                            <div class="caption-container">
                                <p id="caption"></p>
                            </div>



                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="section_heading section_heading_2 gallery_btn_position">
                        <a href="gallery.jsp"> <button type="button" class="btn_gallery">View More</button></a>
                    </div>
                </div>
            </div>
        </div>

    </section>


    <section id="about" class="primary-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <div class="section_heading">
                        <h2> About US </h2>

                        <h4>Our Mission</h4>
                    </div>		
                    <div class="col-md-12">
                        <div class="member_detail">                                
                            <div class="member_name">
                                <p>To develop and manage hotel properties that provide the best guest experiences possible and 
                                    yield sustainable profits for our clients.</p>
                            </div>
                        </div>
                    </div>
                    <div class="section_heading">
                        <h4>Our Vision</h4>
                    </div>
                    <div class="col-md-12">
                        <div class="member_detail">
                            <div class="member_name">    
                                <p> We see an organization that aims at leadership in the hospitality industry by exceeding guest 
                                    expectations and designing and delivering products and services that optimize the guest 
                                    experience. We demonstrate care for our customers through anticipation of their needs, 
                                    attention to detail, distinctive excellence, warmth and concern.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="member_detail">
                            <div class="member_name">    
                                <a href="about.jsp"><button class="btn btn_about">View More</button></a>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <section id="contact" class="contact_bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section_heading section_heading_2">
                        <h2> Contact Us </h2>

                        <h4>Nilesh Hotel Management System Mumbai(head Office)</h4>
                    </div>

                    <div class="col-md-6">
                        <div class="contact_form">
                            <form>
                                <div class="form-group">
                                    <label >Full Name : <span> *</span></label>
                                    <input type="email" class="form-control" id="contactName" >
                                </div>

                                <div class="form-group">
                                    <label >Email Address : <span> *</span></label>
                                    <input type="text" class="form-control" id="contactEmail" >
                                </div>

                                <div class="form-group">
                                    <label>Message <span> *</span></label>
                                    <textarea class="form-textarea" rows="3"></textarea>
                                </div>

                                <div class="section_sub_btn">
                                    <button class="btn btn-default" type="submit">  Send Message</button>	
                                </div>
                            </form> 
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="contact_text">
                            <ul>
                                <li>
                                    <span><i class="fa fa-home" aria-hidden="true"></i></span> 
                                    <h6> 400605 Thane Road,Thane, India</h6>
                                </li>

                                <li>
                                    <span><i class="fa fa-envelope-o" aria-hidden="true"></i></span> 
                                    <h6> contact.nilesh@gmail.com </h6>
                                </li>

                                <li>
                                    <span><i class="fa fa-phone" aria-hidden="true"></i></span> 
                                    <h6> (123) 123-45678 </h6>
                                </li>

                                <li>
                                    <span><i class="fa fa-fax" aria-hidden="true"></i></span> 
                                    <h6> (123) 123-45678 </h6>
                                </li>
                            </ul>

                        </div>
                    </div>


                </div>
            </div>
        </div>
    </section>



    <section class="primary-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <div class="col-md-4">
                        <div class="subscribe">
                            <h5> Stay informed with our newsletter</h5>

                            <h6> Subscribe to our email newsletter for useful tips and resources. </h6>
                            <div class="subscribe_form">
                                <form>
                                    <div class="form-group">
                                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email Address" >
                                    </div>
                                </form>

                                <div class="section_sub_btn">
                                    <button class="btn btn-default" type="submit">  Subscribe </button>	
                                </div>
                            </div>

                        </div>


                    </div>

                    <div class="col-md-4">
                        <div class="workng_img">
                            <img src="RemoteAccess/images/gallery/g4.jpg" alt="image">
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="subscribe">
                            <img src="RemoteAccess/images/gallery/g13.jpg" alt="image">
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>



    <!--Menu Js Right Menu-->
    <script type="text/javascript">
        $(document).ready(function () {
            $('#navbar > ul > li:has(ul)').addClass("has-sub");
            $('#navbar > ul > li > a').click(function () {
                var checkElement = $(this).next();
                $('#navbar li').removeClass('dropdown');
                $(this).closest('li').addClass('dropdown');
                if ((checkElement.is('ul')) && (checkElement.is(':visible'))) {
                    $(this).closest('li').removeClass('dropdown');
                    checkElement.slideUp('normal');
                }
                if ((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
                    $('#navbar ul ul:visible').slideUp('normal');
                    checkElement.slideDown('normal');
                }
                if (checkElement.is('ul')) {
                    return false;
                } else {
                    return true;
                }
            });
        });
<!--end-->
    </    script>
        <script type="text/javascript">
    $("#navbar").on("click", function (event) {
        event.stopPropagation();
    });
    $(".dropdown-menu").on("click", function (event) {
        event.stopPropaga            tion();
    });
        $(document).on("click", function (event) {
        $(".dropdown-menu")            .slideUp(            'normal');
        });

        $(".navbar-header").on("click", function (event) {
                 event            .stopPropagation();
        });
        $(document).on("click", function (event) {
                $("#navbar").slideUp('normal');
        });
            </script>
<script>
    function openModal() {
        document.getElementById("myModal").style.display = "block";
    }

    function closeModal() {
        document.getElementById("myModal").style.display = "none";
    }

    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
   showSlides(slideIndex += n);
    }

    function currentSlide(n) {
  showSlides(slideIndex = n);
    }

    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("demo");
        var captionText = document.getElementById("caption");
        if (n > slides.length)            {
            slideIndex = 1
        }
        if (n < 1) {
                     slideIndex = slides.length
        }
        for (i = 0; i < slides.length; i++) {
                  slid            es[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = do            ts[i].clas            sName.replace(" active", "");
        }
        slides[s            lideIndex - 1].style.display = "block";
        dots[            slideIndex - 1].className += " active";
        captionText.innerHTML = dots[slideIndex - 1].alt;
    }
</script>
<script>
    w3.slideshow(".nonAcImg", 1000);
    w3.slideshow(".acImg", 1000);
    w3.slideshow(".deluxeImg", 1000);
    w3.slideshow(".superDeluxeImg", 1000);
</script>
<script>
    $(document).ready(function () {
        $("select").change(function () {
            $(this).find("option:selected").each(function () {
                var optionValue = $(this).attr("value");
                if (optionValue) {
                    $(".box").not("." + optionValue).hide();
                    $("." + optionValue).show();
        } else {
                    $(".            box").hide();
              }
            });
        }).change();
    });
</script>

      

        <%@include file="footer.jsp"  %>
    </body>

</html>