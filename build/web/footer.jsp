<%-- 
    Document   : footer
    Created on : Dec 20, 2019, 4:19:08 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
       
 <footer class="third-bg">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="col-md-3 footer_grid">
                            <div class="footer_page">
                                    <span>Pages</span>
                                </div>
                            <div class="member_footer_details">
                                
                                <ul>
                                    <li><a href="home.jsp" class="footer_link"> Home</a></li>
                                    <li><a href="#" class="footer_link"> Service</a></li>
                                    <li><a href="#" class="footer_link"> Check Availability</a></li>
                                    <li><a href="gallery.jsp" class="footer_link"> Gallery</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 footer_grid">
                            <div class="footer_page">
                                    <span>Information</span>
                                </div>
                            <div class="member_footer_details">
                                
                                <ul>
                                    <li><a href="about.jsp" class="footer_link">About</a></li>
                                    <li><a href="#contact" class="js-target-scroll footer_link">Contact</a></li>
                                    <li><a href="registrationPage.jsp" class="footer_link">Register</a></li>
                                    <li><a href="logoutUser.jsp" class="footer_link">LogOut</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 footer_grid">
                            <div class="footer_name">
                                    <span>Address</span>
                                </div>
                            <div class="member_footer_details">
                                <ul>
                                    <li>400605 Thane Road,Thane, India</li>
                                    <li>contact.nilesh@gmail.com</li>
                                    <li>(123) 123-45678</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 footer_grid">
                            <div class="footer_name">
                                <span>Social Media</span>
                            </div>
                            <div class="footer_top">
                                <ul>
                                    <li> <a href="http://facebook.com/"> <i class="fa fa-facebook" aria-hidden="true"></i> </a> </li>
                                    <li> <a href="http://twitter.com/"> <i class="fa fa-twitter" aria-hidden="true"></i> </a> </li>
                                    <li> <a href="http://linkedin.com/"> <i class="fa fa-linkedin" aria-hidden="true"></i> </a> </li>
                                    <li> <a href="http://google.com/"> <i class="fa fa-google-plus" aria-hidden="true"></i> </a> </li>
                                    <li> <a href="http://youtu.be/"> <i class="fa fa-youtube-square" aria-hidden="true"></i> </a> </li>
                                    <li> <a href="https://www.instagram.com"> <i class="fa fa-instagram" aria-hidden="true"></i> </a> </li>
                                </ul>
                            </div>
                        </div>
                        




                    </div>
                </div>
            </div>

            <div class="footer_bottom fourth-bg">
                <!-- Keep Footer Credit Links Intact -->
                <p> 2016 &copy; Copyright Nilesh company. All rights Reserved. Powered By Free </p>
                <a href="#" class="backtop"> ^ </a>
            </div>

        </footer>
        <script src="RemoteAccess/js/jquery.min.js"></script>
        <script src="RemoteAccess/js/bootstrap.js"></script>
        <script src="RemoteAccess/js/interface.js"></script> 
       <script src="RemoteAccess/js/jquery.plugin.min.js"></script> 
       
        <script type="text/javascript">
            $(document).ready(function () {
                $("#menu_slide").click(function () {
                    $("#navbar").slideToggle('normal');
                });
            });
        </script>