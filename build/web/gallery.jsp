<%-- 
    Document   : gallery
    Created on : Dec 20, 2019, 4:20:14 PM
    Author     : admin
--%>
<%@include file="header.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <section class="primary-bg comman_bg_details">
            <div class="wedding_text">Gallery </div>
        </section>
        <section class="primary-bg comman_section__details">
            <div class="container-fluid">
                <div class="row">
                    <div class="page_direction">
                        <i class="fa fa-home" aria-hidden="true"></i>
                        <a href="home.jsp">Home</a>/<span><i class="fa fa-check" aria-hidden="true"></i>Gallery Page</span>
                    </div>
                    <div class="section_heading">
                        <h2 class="section_header_text"> Hotel <i class="fa fa-bolt" aria-hidden="true"></i> Gallery </h2>
                        <h4></h4>
                    </div>
                    

                        <div class="row">
                            <div class="col-md-12 galllery_position">
                            <div class="col-md-3 service_grid gallery_img_shadow">
                                <div class="gallery_detail">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/gallery/g1.jpg" style="width:100%" onclick="openModal();currentSlide(1)" class="hover-shadow cursor">
                                    </div>
                                    <div class="member_name1">
                                        <h5> Night Time</h5>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 service_grid gallery_img_shadow">
                                <div class="gallery_detail">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/gallery/g2.jpg" style="width:100%" onclick="openModal();currentSlide(2)" class="hover-shadow cursor">
                                    </div>
                                    <div class="member_name1">
                                        <h5> Bed Room</h5>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 service_grid gallery_img_shadow">
                                <div class="gallery_detail">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/gallery/g3.jpg" style="width:100%" onclick="openModal();currentSlide(3)" class="hover-shadow cursor">
                                    </div>
                                    <div class="member_name1">
                                        <h5> Balcony Area</h5>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 service_grid gallery_img_shadow">
                                <div class="gallery_detail">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/gallery/g4.jpg" style="width:100%" onclick="openModal();currentSlide(4)" class="hover-shadow cursor">
                                    </div>
                                    <div class="member_name1">
                                        <h5> Swimming Pull</h5>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 service_grid gallery_img_shadow">
                                <div class="gallery_detail">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/gallery/g5.jpg" style="width:100%" onclick="openModal();currentSlide(5)" class="hover-shadow cursor">
                                    </div>
                                    <div class="member_name1">
                                        <h5> Single Bed Room</h5>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 service_grid gallery_img_shadow">
                                <div class="gallery_detail">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/gallery/g6.jpg" style="width:100%" onclick="openModal();currentSlide(6)" class="hover-shadow cursor">
                                    </div>
                                    <div class="member_name1">
                                        <h5> Luxury Hall</h5>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 service_grid gallery_img_shadow">
                                <div class="gallery_detail">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/gallery/g7.jpg" style="width:100%" onclick="openModal();currentSlide(7)" class="hover-shadow cursor">
                                    </div>
                                    <div class="member_name1">
                                        <h5> Luxury Room</h5>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 service_grid gallery_img_shadow">
                                <div class="gallery_detail">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/gallery/g8.jpg" style="width:100%" onclick="openModal();currentSlide(8)" class="hover-shadow cursor">
                                    </div>
                                    <div class="member_name1">
                                        <h5> Hall</h5>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 service_grid gallery_img_shadow">
                                <div class="gallery_detail">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/gallery/g9.jpg" style="width:100%" onclick="openModal();currentSlide(9)" class="hover-shadow cursor">
                                    </div>
                                    <div class="member_name1">
                                        <h5> Party</h5>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 service_grid gallery_img_shadow">
                                <div class="gallery_detail">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/gallery/g10.jpg" style="width:100%" onclick="openModal();currentSlide(10)" class="hover-shadow cursor">
                                    </div>
                                    <div class="member_name1">
                                        <h5> Hotel View</h5>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 service_grid gallery_img_shadow">
                                <div class="gallery_detail">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/gallery/g11.jpg" style="width:100%" onclick="openModal();currentSlide(11)" class="hover-shadow cursor">
                                    </div>
                                    <div class="member_name1">
                                        <h5> Hotel View</h5>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 service_grid gallery_img_shadow">
                                <div class="gallery_detail">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/gallery/g12.jpg" style="width:100%" onclick="openModal();currentSlide(12)" class="hover-shadow cursor">
                                    </div>
                                    <div class="member_name1">
                                        <h5> Party Time</h5>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 service_grid gallery_img_shadow">
                                <div class="gallery_detail">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/gallery/g13.jpg" style="width:100%" onclick="openModal();currentSlide(13)" class="hover-shadow cursor">
                                    </div>
                                    <div class="member_name1">
                                        <h5> Wedding</h5>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 service_grid gallery_img_shadow">
                                <div class="gallery_detail">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/gallery/g14.jpg" style="width:100%" onclick="openModal();currentSlide(14)" class="hover-shadow cursor">
                                    </div>
                                    <div class="member_name1">
                                        <h5> Reception</h5>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 service_grid gallery_img_shadow">
                                <div class="gallery_detail">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/gallery/g15.jpg" style="width:100%" onclick="openModal();currentSlide(15)" class="hover-shadow cursor">
                                    </div>
                                    <div class="member_name1">
                                        <h5> Party View</h5>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 service_grid gallery_img_shadow">
                                <div class="gallery_detail">
                                    <div class="member_img1">
                                        <img src="RemoteAccess/images/gallery/g16.jpg" style="width:100%" onclick="openModal();currentSlide(16)" class="hover-shadow cursor">
                                    </div>
                                    <div class="member_name1">
                                        <h5> Wedding</h5>

                                    </div>
                                </div>
                            </div>
                                <div class="col-md-3 service_grid gallery_img_shadow">
                                    <div class="gallery_detail">
                                        <div class="member_img1">
                                            <img src="RemoteAccess/images/gallery/g17.jpg" style="width:100%" onclick="openModal();currentSlide(17)" class="hover-shadow cursor">
                                        </div>
                                        <div class="member_name1">
                                            <h5> Catering</h5>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 service_grid gallery_img_shadow">
                                    <div class="gallery_detail">
                                        <div class="member_img1">
                                            <img src="RemoteAccess/images/gallery/g18.jpg" style="width:100%" onclick="openModal();currentSlide(18)" class="hover-shadow cursor">
                                        </div>
                                        <div class="member_name1">
                                            <h5> Gastro </h5>

                                        </div>
                                    </div>
                                </div>


                        </div>

                        <div id="myModal" class="modal">
                            <span class="close cursor cancel_gallery_btn" onclick="closeModal()">&times;</span>
                            <div class="modal-content">

                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g1.jpg" style="width:100%">
                                </div>

                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g2.jpg" style="width:100%">
                                </div>

                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g3.jpg" style="width:100%">
                                </div>

                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g4.jpg" style="width:100%">
                                </div>
                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g5.jpg" style="width:100%">
                                </div>
                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g6.jpg" style="width:100%">
                                </div>
                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g7.jpg" style="width:100%">
                                </div>
                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g8.jpg" style="width:100%">
                                </div>
                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g9.jpg" style="width:100%">
                                </div>
                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g10.jpg" style="width:100%">
                                </div>
                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g11.jpg" style="width:100%">
                                </div>
                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g12.jpg" style="width:100%">
                                </div>
                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g13.jpg" style="width:100%">
                                </div>
                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g14.jpg" style="width:100%">
                                </div>
                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g15.jpg" style="width:100%">
                                </div>
                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g16.jpg" style="width:100%">
                                </div>
                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g17.jpg" style="width:100%">
                                </div>
                                <div class="mySlides">

                                    <img src="RemoteAccess/images/gallery/g18.jpg" style="width:100%">
                                </div>

                                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                                <a class="next" onclick="plusSlides(1)">&#10095;</a>

                                <div class="caption-container">
                                    <p id="caption"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

       
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
                if (n > slides.length) {
                    slideIndex = 1
                }
                if (n < 1) {
                    slideIndex = slides.length
                }
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
                captionText.innerHTML = dots[slideIndex - 1].alt;
            }
        </script>
        <%@include file="footer.jsp"  %>
    </body>
</html>
