<%-- 
    Document   : registrationPage
    Created on : Jan 6, 2020, 9:56:27 PM
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
            <div class="wedding_text">Registration Page</div>
        </section>
            
        <section class="primary-bg comman_section__details">
            <div class="container">
                <div class="row">
                    <div class="page_direction">
                        <i class="fa fa-home" aria-hidden="true"></i>
                        <a href="home.jsp">Home</a>/<span><i class="fa fa-registered" aria-hidden="true"></i>Registration Page</span>
                    </div>
                     <div class="welcome_message">
                        <marquee width="60%" direction="left" height="100px">
                      <h3> Welcome To Nilesh Hotel Registration Page</h3>
                    </marquee>
                    </div>
                    <div class="col-md-3"></div>
                    <div class="col-md-6 registration_form_bg">
                        <div class="regis_form_control">
                            <h6>Registration Form</h6>
                            <hr class="hr_line">
                            <form action="SaveCustomer" onsubmit="return validation()">
                                <div class="form-group">
                                    <label for="email">Full Name *</label>
                                    <input type="text" class="form-control regis_form_add" id="name" name="fname" placeholder="Enter Your Full Name">
                                    <span class="text-danger font-weigth-bold" id="nameError"></span>
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Age *</label>
                                    <input type="text" class="form-control regis_form_add" id="age" name="cage" placeholder="Enter Your Age">
                                    <span class="text-danger font-weigth-bold" id="ageError"></span>
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Email Id *</label>
                                    <input type="text" class="form-control regis_form_add" id="email_id" name="cemail" placeholder="Enter Your Email I'd">
                                    <span class="text-danger font-weigth-bold" id="emailError"></span>
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Mobile Number *</label>
                                    <input type="text" class="form-control regis_form_add" id="phone" name="cmobile" placeholder="Enter Your Mobile No.">
                                    <span class="text-danger font-weigth-bold" id="phoneError"></span>
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Password *</label>
                                    <input type="password" class="form-control regis_form_add" id="pwds" name="cpass" placeholder="Enetr Your password">
                                    <span class="text-danger font-weigth-bold" id="cPwd"></span>
                                </div>
                                <label for="email">Country Name *</label>
                                <select class="form-control" id="coutry" name="countryname">
                                    <option value="Please Select">--Select Your Country--</option>
                                    <option value="india">India</option>
                                    <option value="nepal">Nepal</option>
                                    <option value="australia">Australia</option>
                                    <option value="america">America</option>
                                    <option value="Sri Lanka">Sri Lanka</option>
                                </select>
                                <span class="text-danger font-weigth-bold" id="coutryError"></span>
                                <div class="form-group">
                                    <label for="pwd">City Name *</label>
                                    <input type="text" class="form-control regis_form_add" id="city" name="cityname" placeholder="Enter Your City Name">
                                    <span class="text-danger font-weigth-bold" id="cityError"></span>
                                </div>
                                <div class="form-group">
                                    <label for="pwd" >City Name *</label><br>
                                    <input type="radio"  id="genderCheck" name="gender" value="male">Male
                                    <input type="radio"  id="genderCheck1" name="gender" value="female">Female
                                    <span class="text-danger font-weigth-bold" id="genderError"></span>
                                </div>
                                <button type="submit" class="btn btn_check btn-default">Register User</button>
                            </form>
                        </div>
                    </div>
                     
                </div>
                
            </div>
        </section>
        
        <%@include file="footer.jsp"  %>
        <script type="text/javascript">
                        function validation(){
                            var name = document.getElementById("name").value;
                            var age = document.getElementById("age").value;
                            var email = document.getElementById("email_id").value;
                            var phone = document.getElementById("phone").value;
                            var pwd = document.getElementById("pwds").value;
                            var location = document.getElementById('coutry');
                            var invalid = location.value === "Please Select";
                            var city=document.getElementById("city").value;
                            var namePattern=/^[A-Za-z. ]{3,40}$/;
                            var test_email=/^[A-Za-z._0-9]{3,}@[A-za-z]{3,}[.]{1}[A-Za-z.]{2,6}/;
                            var phonePattern=/^[6789][0-9]{9}$/;
                            var pwdPattern=/(?=^.{8}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$/;
                            var cityPattern=/^[A-Za-z. ]{3,20}$/;
                            if(namePattern.test(name))
                            {
                                document.getElementById('nameError').innerHTML="";
                                
                            }else{
                                document.getElementById('nameError').innerHTML="* Invalid Name Length Must Be Between 3 To 20 !";
                                return false;
                            }
                            if(age>=18 && age<=61)
                            {
                                document.getElementById('ageError').innerHTML="";
                                
                            }else{
                                document.getElementById('ageError').innerHTML="* Invalid Age Length Must Be Age Between 18 To 60 !";
                                return false;
                            }
                            
                            
                            if(test_email.test(email))
                            {
                                document.getElementById('emailError').innerHTML="";
                                
                            }else{
                                document.getElementById('emailError').innerHTML="* Invalid Email ID !";
                                return false;
                            }
                            
                            if(phonePattern.test(phone))
                            {
                                document.getElementById('phoneError').innerHTML="";
                                
                            }else{
                                document.getElementById('phoneError').innerHTML="* Invalid Mobile Number !";
                                return false;
                            }
                            
                            if(pwdPattern.test(pwd)){
                                document.getElementById('cPwd').innerHTML="";
                            }else{
                                document.getElementById('cPwd').innerHTML="* Invalid Password <br>(Please use the password with one special character,Upper case,lower case,Numeric and legth 8) !";
                                return false;
                            }
                            if(invalid)
                            {
                                document.getElementById('coutryError').innerHTML="* Please select your country!";
                                return false;
                            }else{
                                document.getElementById('coutryError').innerHTML="";
                                
                            }
                            if(cityPattern.test(city))
                            {
                                document.getElementById('cityError').innerHTML="";
                                
                            }else{
                                document.getElementById('cityError').innerHTML="* Please enter your city in Alphabet only!";
                                return false;
                            }
                            if(document.getElementById('genderCheck').checked)
                            {
                                document.getElementById('genderError').innerHTML="";
                                
                            }else if(document.getElementById('genderCheck1').checked){
                                document.getElementById('genderError').innerHTML="";
                            }
                            else{
                                document.getElementById('genderError').innerHTML="* Please Select gender";
                                return false;
                            }

                            }
                </script>
        
    </body>
</html>
