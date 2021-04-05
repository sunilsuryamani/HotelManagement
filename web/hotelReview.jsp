<%-- 
    Document   : hotelReview
    Created on : Feb 23, 2020, 5:05:41 PM
    Author     : admin
--%>
<%@include file="header.jsp"  %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <section class="primary-bg comman_bg_details">
            <div class="wedding_text">Thanks For Booking</div>
        </section>
        <section class="primary-bg comman_section__details">
            <div class="container">
                <div class="row">
                    <div class="page_direction">
                        <i class="fa fa-home" aria-hidden="true"></i>
                        <a href="home.jsp">Home</a>/<span><i class="fa fa-registered" aria-hidden="true"></i>Thanks For Booking</span>
                    </div>
                    <div class=" text-center">
                        <h1 class="display-3">Thank You!</h1>
                        <p class="lead"><strong>Your booking Id is :</strong> 78514</p>
                        <p class="lead"><strong>Please check your email</strong> for more details your booking.</p>
                        <hr>
                        <p>
                            Having trouble? <a href="#">Contact us</a>
                        </p>
                        <p class="lead">
                            <a class="btn btn-primary btn-sm" href="home.jsp" role="button">Continue to homepage</a>
                        </p>
                    </div>
                    <div class="col-md-4">
                        <form action="review" method="post">
                            <div class="form-group">
                                <label for="pwd">Give Your Review *</label>
                                <input type="text" class="form-control regis_form_add" id="city" name="review" placeholder="Enter Your Review">
                                <span class="text-danger font-weigth-bold" id="cityError"></span>
                            </div>
                            <div class="form-group">
                                <label for="title">Give The Any Suggestion</label>
                                <textarea class="description-edit" type="text" placeholder="Optional" style="width: 100%"></textarea>                        
                            </div>
                            <button type="submit" class="btn btn-primary">Give Review</button>
                        </form>
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

</div>
        </section>
        <%@include file="footer.jsp"  %>  
    </body>
</html>
