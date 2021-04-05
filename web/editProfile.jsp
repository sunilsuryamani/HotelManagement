<%-- 
    Document   : editProfile
    Created on : Feb 10, 2020, 10:00:44 AM
    Author     : admin
--%>
<%@include file="header.jsp"  %>
<%@page import="model.UserDetails,hotelDAO.UserDataAccess,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% // String name=request.getParameter("userName");
            //session.setAttribute("editpage",name);
//        out.println(name);
        %>
        <%
        String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null){
        	response.sendRedirect("customerLogin.jsp");
        }
//        session.setAttribute("footer",);
        UserDetails e=UserDataAccess.getUserById(email); 
        String name=e.getName();
        session.setAttribute("name",name);
        String mobile=e.getMobile();
        session.setAttribute("mobile",mobile);
        %>
        
       
        <section class="primary-bg ">
            <div class="container">
                <div class="row">                    
                    <div class="account user_acount">
                        <strong>Account</strong><br>
                        <span ><%=e.getEmail()%></span>
                    </div>
                    <div class="bg-light border-right col-md-2 active" id="sidebar-wrapper">                       
                        <div class="list-group list-group-flush">                           
                            <div class="list-group1">
                                <ul class="nav nav-tabs">
                                    <li class="active list_link">
                                        <a href="#tab1" class="list-group-item list-group-item-action bg-light">Overview</a>
                                    </li>
                                    <li>
                                        <a href="#tab2" class="list-group-item list-group-item-action bg-light ">My Booking</a>
                                    </li>
                                 
                                    <li>
                                        <a href="#tab3" class="list-group-item list-group-item-action bg-light "> Edit Profile</a>  
                                    </li>                                    
                                    <li>
                                        <a href="#" class="list-group-item list-group-item-action bg-light">Status</a>
                                    </li>
                                </ul>	
                            </div>
                        </div>                         
                    </div>
                    <div class="col-md-8  active" id="tab1">
                        <div class="user_details">
                            <h4>Customer Information</h4>
                            <strong>Your Name: </strong><span><%=e.getName()%></span><br>
                            <strong>Age: </strong><span><%=e.getAge()%></span><br>
                            <strong>Mobile :</strong><span><%=e.getMobile()%></span><br>
                            <strong>Country Name: </strong><%=e.getCountry()%><span></span><br>
                            <strong>City Name: </strong><span><%=e.getCity()%></span><br>
                            <strong>Gender :</strong> <span><%=e.getGender()%></span>
                            
                        </div>


                    </div>
                    <div class="col-md-8 user_detail_container hide" id="tab2">
                        <div class="user_info">
                            <div class="profile_text"> 
                                <h4>Your Booking</h4>                                
                            <div class="booking_info">
                                <span>12/25/5/2020</span><br>
                                <span>Non Ac Room</span><br>
                                <span>Number Of Room:-2</span>
                            </div>
                        </div>


                    </div>
                    </div>
                    <div class="col-md-8 user_detail_container hide" id="tab3">
                        <div class="user_info">
                            <div class="profile_text"> 
                                <span class="profile_title">Edit Profile</span>
                           <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>
                                <span class="chnge_pass_link" >Change Password</span></div>
                            <div class="account_name-info">

                                 <input class="account_textbox" type="text" value="<%=e.getEmail()%>" disabled/>
                                 <input class="pwd_textbox" type="password" value="<%=e.getPassword()%>" disabled/>
                            </div>
                        </div>
                        <div class="user_detail_info">
                            <div class="profile_text"> 
                                <h2 class="profile_title">General Information</h2></div>
                                <form action="UpdateCustomerDetails" method="post">
                                    <input type="hidden" class="form-control" placeholder="Enter email" name="email" value="<%=e.getEmail()%>">
                                    <div class="form-group">
                                        <label for="email">Name :</label>
                                        <input type="text" class="form-control" placeholder="Enter name" name="name"value="<%=e.getName()%>">
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Age :</label>
                                        <input type="number" class="form-control" placeholder="Enter Age" name="age" value="<%=e.getAge()%>">
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Mobile :</label>
                                        <input type="text" class="form-control" placeholder="Enter Mobile" name="mobile" value="<%=e.getMobile()%>">
                                    </div>
                                    <div class="form-group">
                                        <label for="email">City Name :</label>
                                        <input type="text" class="form-control" placeholder="Enter City" name="city" value="<%=e.getCity()%>">
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Your Bio :</label>
                                        <textarea type="text" name="bio" style="width: 100%"><%=e.getBio()%></textarea>
                                    </div>
                                    <div class="form-group">        
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="submit" class="btn btn-default">Confirm</button>
                                            <button type="submit" class="btn btn-default">Cancel</button>
                                        </div>
                                    </div>
                                </form>
                        </div>

                    </div>                   

                </div>               
            </div>
        </section>
        <script>
            $(document).ready(function () {
                $('.nav-tabs > li > a').click(function (event) {
                    event.preventDefault();//stop browser to take action for clicked anchor

                    //get displaying tab content jQuery selector
                    var active_tab_selector = $('.nav-tabs > li.active > a').attr('href');

                    //find actived navigation and remove 'active' css
                    var actived_nav = $('.nav-tabs > li.active');
                    actived_nav.removeClass('active');

                    //add 'active' css into clicked navigation
                    $(this).parents('li').addClass('active');

                    //hide displaying tab content
                    $(active_tab_selector).removeClass('active');
                    $(active_tab_selector).addClass('hide');

                    //show target tab content
                    var target_tab_selector = $(this).attr('href');
                    $(target_tab_selector).removeClass('hide');
                    $(target_tab_selector).addClass('active');
                });
            });
        </script>
        <%@include file="footer.jsp"  %>       
    </body>
</html>
