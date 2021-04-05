<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>App Layers</title>
        <link rel="shortcut icon" type="image/x-icon" href="RemoteAccess/images/logo_hotel.PNG">
        <!-- Bootstrap CSS -->
        <link href="RemoteAccess/css/bootstrap.min.css" rel="stylesheet">
        <!-- CSS Custom -->
        <link rel="stylesheet" type="text/css" href="RemoteAccess/css/style.css">
        <script src="https://www.w3schools.com/lib/w3.js"></script>
        <script src="RemoteAccess/js/jquery-1.12.4.min.js"></script>
        <!-- favicon Icon -->
        <!--<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
            <link rel="icon" href="images/favicon.ico" type="image/x-icon">-->
        <!-- CSS Plugins -->
        <link href="RemoteAccess/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="RemoteAccess/css/animate.min.css">
        <!-- Google Fonts -->
        <link href='' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script src="RemoteAccess/js/bootstrap.min.js"></script>
        <%@include file="popup.jsp"  %>
    </head>
     <header class="navbar-fixed-top">
            <div class="container">
                <div class="row">
                    <div class="header_top">
                        <div class="col-md-2">
                            <div class="logo_img">
                                <a href="home.jsp"><img class="bg" src="RemoteAccess/images/logo_hotel.PNG" alt="logoimage"></a>
                            </div>
                        </div>

                        <div class="col-md-10">
                            <div class="menu_bar">	
                                <nav role="navigation" class="navbar navbar-default">
                                    <div class="navbar-header">
                                        <button id="menu_slide"  aria-controls="navbar" aria-expanded="false" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>
                                    </div>

                                    <div class="collapse navbar-collapse" id="navbar">

                                        <ul class="nav navbar-nav">
                                            <li><a href="#home" class="js-target-scroll">Home</a></li>
                                            <li  class="dropdown"><a href="#"  class="dropdown-toggle js-target-scroll" data-toggle="dropdown"> Services</a>
                                                <ul class="dropdown-menu"> 
                                                    <li><a href="wedding.jsp">Wedding</a></li><hr>  
                                                    <li><a href="catering.jsp">Catering</a></li><hr>  
                                                    <li><a href="gastro.jsp">Gastro</a></li>
                                                   
                                                </ul>
                                            </li>
                                            <li><a href="#check_Availability" class="js-target-scroll">Check Availability</a></li>
                                            <li><a href="#gallery" class="js-target-scroll">Gallery</a></li>
                                            <li><a href="#about" class="js-target-scroll">About</a></li>
                                            <li><a href="#contact" class="js-target-scroll">Contact</a></li>
                                            <li><a  href="customerLogin.jsp">Login</a></li>
                                            <li  class="dropdown"><a href="#"  class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i> Profile  </a>
                                                <ul class="dropdown-menu dropdown_position"> 
                                                    <li>Hello</li>
                                                    <hr>
                                                    <li>admin@gmail.com</li>
                                                    <hr>                                           
                                                    <li><a href="editProfile.jsp?userName=editpage">My Profile</a></li> <hr>
                                                    <li><a href="#">logOut</a></li>
                                                </ul>
                                            </li>
                                        </ul>      
                                    </div>



                                </nav>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </header>

</head>


<!-- The Modal -->


<script type="text/javascript">
                        function validation(){
                            var email = document.getElementById("email_id").value;
                            var pwd = document.getElementById("pwd").value;
                            if(email===null)
                            {
                                document.getElementById('emailError').innerHTML="* Please provider email I'd !";
                                return false;
                                
                            }else{
                                document.getElementById('emailError').innerHTML="";
                                
                            }
                            
                            
                            if(pwd===null)
                            {
                                document.getElementById('pwdError').innerHTML="* please provide password !";
                                return false;
                                
                            }else{
                                document.getElementById('pwdError').innerHTML="";
                                
                            }

                            }
                </script>
  
