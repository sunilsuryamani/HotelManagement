package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.*;
import hotelDAO.*;
import java.util.*;

public final class paymentForm_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/popup.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <title>App Layers</title>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link href=\"RemoteAccess/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- CSS Custom -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"RemoteAccess/css/style.css\">\n");
      out.write("        <script src=\"https://www.w3schools.com/lib/w3.js\"></script>\n");
      out.write("        <script src=\"RemoteAccess/js/jquery-1.12.4.min.js\"></script>\n");
      out.write("        <!-- favicon Icon -->\n");
      out.write("        <!--<link rel=\"shortcut icon\" href=\"images/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("            <link rel=\"icon\" href=\"images/favicon.ico\" type=\"image/x-icon\">-->\n");
      out.write("        <!-- CSS Plugins -->\n");
      out.write("        <link href=\"RemoteAccess/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"RemoteAccess/css/animate.min.css\">\n");
      out.write("        <!-- Google Fonts -->\n");
      out.write("        <link href='' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>\n");
      out.write("        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("            <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("            <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("        <script src=\"RemoteAccess/js/bootstrap.min.js\"></script>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Modal -->\n");
      out.write("        <div id=\"myModal\" class=\"modal fade\" role=\"dialog\">\n");
      out.write("            <div class=\"modal-dialog\">\n");
      out.write("                <div class=\"modal-content\">\n");
      out.write("                    <div class=\"modal-header\">\n");
      out.write("                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\n");
      out.write("                        <h4 class=\"modal-title\">Modal Header</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"modal-body\">\n");
      out.write("                        <form action=\"hall.jsp\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"email\">Email address:</label>\n");
      out.write("                                <input type=\"email\" class=\"form-control\" id=\"email\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"pwd\">Password:</label>\n");
      out.write("                                <input type=\"password\" class=\"form-control\" id=\"pwd\">\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"checkbox\">\n");
      out.write("                                <label><input type=\"checkbox\"> Remember me</label>\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("\n");
      out.write("                            <div class=\"modal-footer\">\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-success\">Confirm</button>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("     <header class=\"navbar-fixed-top\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"header_top\">\n");
      out.write("                        <div class=\"col-md-2\">\n");
      out.write("                            <div class=\"logo_img\">\n");
      out.write("                                <a href=\"home.jsp\"><img class=\"bg\" src=\"RemoteAccess/images/logo_hotel.PNG\" alt=\"logoimage\"></a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"col-md-10\">\n");
      out.write("                            <div class=\"menu_bar\">\t\n");
      out.write("                                <nav role=\"navigation\" class=\"navbar navbar-default\">\n");
      out.write("                                    <div class=\"navbar-header\">\n");
      out.write("                                        <button id=\"menu_slide\"  aria-controls=\"navbar\" aria-expanded=\"false\" data-toggle=\"collapse\" class=\"navbar-toggle collapsed\" type=\"button\">\n");
      out.write("                                            <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                            <span class=\"icon-bar\"></span>\n");
      out.write("                                            <span class=\"icon-bar\"></span>\n");
      out.write("                                            <span class=\"icon-bar\"></span>\n");
      out.write("                                        </button>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"collapse navbar-collapse\" id=\"navbar\">\n");
      out.write("\n");
      out.write("                                        <ul class=\"nav navbar-nav\">\n");
      out.write("                                            <li><a href=\"#home\" class=\"js-target-scroll\">Home</a></li>\n");
      out.write("                                            <li  class=\"dropdown\"><a href=\"#\"  class=\"dropdown-toggle js-target-scroll\" data-toggle=\"dropdown\"> Services</a>\n");
      out.write("                                                <ul class=\"dropdown-menu\"> \n");
      out.write("                                                    <li><a href=\"wedding.jsp\">Wedding</a></li><hr>  \n");
      out.write("                                                    <li><a href=\"catering.jsp\">Catering</a></li><hr>  \n");
      out.write("                                                    <li><a href=\"gastro.jsp\">Gastro</a></li>\n");
      out.write("                                                   \n");
      out.write("                                                </ul>\n");
      out.write("                                            </li>\n");
      out.write("                                            <li><a href=\"#check_Availability\" class=\"js-target-scroll\">Check Availability</a></li>\n");
      out.write("                                            <li><a href=\"#gallery\" class=\"js-target-scroll\">Gallery</a></li>\n");
      out.write("                                            <li><a href=\"#about\" class=\"js-target-scroll\">About</a></li>\n");
      out.write("                                            <li><a href=\"#contact\" class=\"js-target-scroll\">Contact</a></li>\n");
      out.write("                                            <li><a  href=\"#\">Login</a></li>\n");
      out.write("                                            <li  class=\"dropdown\"><a href=\"#\"  class=\"dropdown-toggle\" data-toggle=\"dropdown\"><i class=\"fa fa-user\" aria-hidden=\"true\"></i> Profile  </a>\n");
      out.write("                                                <ul class=\"dropdown-menu dropdown_position\"> \n");
      out.write("                                                    <li>Hello</li>\n");
      out.write("                                                    <hr>\n");
      out.write("                                                    <li>admin@gmail.com</li>\n");
      out.write("                                                    <hr>                                           \n");
      out.write("                                                    <li><a href=\"editProfile.jsp?userName=editpage\">My Profile</a></li> <hr>\n");
      out.write("                                                    <li><a href=\"#\">logOut</a></li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </li>\n");
      out.write("                                        </ul>      \n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                </nav>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- The Modal -->\n");
      out.write("\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("                        function validation(){\n");
      out.write("                            var email = document.getElementById(\"email_id\").value;\n");
      out.write("                            var pwd = document.getElementById(\"pwd\").value;\n");
      out.write("                            if(email===null)\n");
      out.write("                            {\n");
      out.write("                                document.getElementById('emailError').innerHTML=\"* Please provider email I'd !\";\n");
      out.write("                                return false;\n");
      out.write("                                \n");
      out.write("                            }else{\n");
      out.write("                                document.getElementById('emailError').innerHTML=\"\";\n");
      out.write("                                \n");
      out.write("                            }\n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                            if(pwd===null)\n");
      out.write("                            {\n");
      out.write("                                document.getElementById('pwdError').innerHTML=\"* please provide password !\";\n");
      out.write("                                return false;\n");
      out.write("                                \n");
      out.write("                            }else{\n");
      out.write("                                document.getElementById('pwdError').innerHTML=\"\";\n");
      out.write("                                \n");
      out.write("                            }\n");
      out.write("\n");
      out.write("                            }\n");
      out.write("                </script>\n");
      out.write("  \n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write(" \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
   String roomType="nonAc";//request.getParameter("roomType");
             RoomDetails r=RoomDataAccess.getAllRoomDetailsTypeBy(roomType);
             int availableRoom=r.getAvailableRoom();
             int singleBedprice=r.getSingleRoomPrice();
             int doublebedprice=r.getDoubleRoomPrice();
             String roomFacility=r.getRoomFacility();
//             String typeBed=request.getParameter("typeBed");
//             int totalAmount;
//             String noRoom=request.getParameter("noRoom");
//             int noOfRoom=Integer.parseInt(noRoom);
             out.println(availableRoom);
             out.println(singleBedprice);
             out.println(doublebedprice);
             out.println(roomFacility);
             
//             if(availableRoom>0)
//             {
//                 if(typeBed.equals("singleBed"))
//                 {
//                     totalAmount=singleBedprice*noOfRoom;
//                     out.println(totalAmount);
//                 }
//                 else{
//                     totalAmount=doublebedprice*noOfRoom;
//                 }
//             }
//             else{
//                 out.println("sorry Room not avalable");
//             }
        
      out.write("\n");
      out.write("        ");

//            String book=request.getParameter("book");
//            String checkIn=request.getParameter("check-in");
//            String checkOut=request.getParameter("check-out");
            //String roomType=request.getParameter("roomType");
//            String typeBed=request.getParameter("typeBed");
//            String noRoom=request.getParameter("noRoom");
//            
            String email = (String) session.getAttribute("email");

                //redirect user to login page if not logged in
//                if (email == null) {
//                    session.setAttribute("book", book);
//                    response.sendRedirect("customerLogin.jsp");
//                }
        
      out.write("\n");
      out.write("        <section class=\"payment-event payment-methods-page\">\n");
      out.write("             <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-xs-12 col-md-4 offset-md-4\">\n");
      out.write("            <div class=\"card \">\n");
      out.write("                <div class=\"card-header\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <h3 class=\"text-xs-center\">Payment Details</h3>\n");
      out.write("                        <img class=\"img-fluid cc-img\" src=\"http://www.prepbootstrap.com/Content/images/shared/misc/creditcardicons.png\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"card-block\">\n");
      out.write("                    <form action=\"Test\" method=\"post\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-xs-12\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label>CARD NUMBER</label>\n");
      out.write("                                    <div class=\"input-group\">\n");
      out.write("                                        <input type=\"number\" class=\"form-control\" placeholder=\"Valid Card Number\" />\n");
      out.write("                                        <span class=\"input-group-addon\"><span class=\"fa fa-credit-card\"></span></span>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-xs-7 col-md-7\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label><span class=\"hidden-xs\">EXPIRATION</span><span class=\"visible-xs-inline\">EXP</span> DATE</label>\n");
      out.write("                                    <input type=\"tel\" class=\"form-control\" placeholder=\"MM / YY\" />\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-xs-5 col-md-5 float-xs-right\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label>CV CODE</label>\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" placeholder=\"CVC\" />\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-xs-12\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label>CARD OWNER</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" placeholder=\"Card Owner Names\" />\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-footer\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-xs-12\">\n");
      out.write("                                    <button class=\"btn btn-primary btn-lg btn-block\">Payment 1800 Rs.</button>\n");
      out.write("                                    <button class=\"btn btn-warning btn-lg btn-block\">Pay Now</button>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("       \n");
      out.write(" <footer class=\"third-bg\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <div class=\"col-md-3 footer_grid\">\n");
      out.write("                            <div class=\"footer_page\">\n");
      out.write("                                    <span>Pages</span>\n");
      out.write("                                </div>\n");
      out.write("                            <div class=\"member_footer_details\">\n");
      out.write("                                \n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"home.jsp\" class=\"footer_link\"> Home</a></li>\n");
      out.write("                                    <li><a href=\"#\" class=\"footer_link\"> Service</a></li>\n");
      out.write("                                    <li><a href=\"#\" class=\"footer_link\"> Check Availability</a></li>\n");
      out.write("                                    <li><a href=\"gallery.jsp\" class=\"footer_link\"> Gallery</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3 footer_grid\">\n");
      out.write("                            <div class=\"footer_page\">\n");
      out.write("                                    <span>Information</span>\n");
      out.write("                                </div>\n");
      out.write("                            <div class=\"member_footer_details\">\n");
      out.write("                                \n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"about.jsp\" class=\"footer_link\">About</a></li>\n");
      out.write("                                    <li><a href=\"#contact\" class=\"js-target-scroll footer_link\">Contact</a></li>\n");
      out.write("                                    <li><a href=\"registrationPage.jsp\" class=\"footer_link\">Register</a></li>\n");
      out.write("                                    <li><a href=\"logoutUser.jsp\" class=\"footer_link\">LogOut</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3 footer_grid\">\n");
      out.write("                            <div class=\"footer_name\">\n");
      out.write("                                    <span>Address</span>\n");
      out.write("                                </div>\n");
      out.write("                            <div class=\"member_footer_details\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li>400605 Thane Road,Thane, India</li>\n");
      out.write("                                    <li>contact.nilesh@gmail.com</li>\n");
      out.write("                                    <li>(123) 123-45678</li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3 footer_grid\">\n");
      out.write("                            <div class=\"footer_name\">\n");
      out.write("                                <span>Social Media</span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"footer_top\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li> <a href=\"http://facebook.com/\"> <i class=\"fa fa-facebook\" aria-hidden=\"true\"></i> </a> </li>\n");
      out.write("                                    <li> <a href=\"http://twitter.com/\"> <i class=\"fa fa-twitter\" aria-hidden=\"true\"></i> </a> </li>\n");
      out.write("                                    <li> <a href=\"http://linkedin.com/\"> <i class=\"fa fa-linkedin\" aria-hidden=\"true\"></i> </a> </li>\n");
      out.write("                                    <li> <a href=\"http://google.com/\"> <i class=\"fa fa-google-plus\" aria-hidden=\"true\"></i> </a> </li>\n");
      out.write("                                    <li> <a href=\"http://youtu.be/\"> <i class=\"fa fa-youtube-square\" aria-hidden=\"true\"></i> </a> </li>\n");
      out.write("                                    <li> <a href=\"https://www.instagram.com\"> <i class=\"fa fa-instagram\" aria-hidden=\"true\"></i> </a> </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"footer_bottom fourth-bg\">\n");
      out.write("                <!-- Keep Footer Credit Links Intact -->\n");
      out.write("                <p> 2016 &copy; Copyright Nilesh company. All rights Reserved. Powered By Free </p>\n");
      out.write("                <a href=\"#\" class=\"backtop\"> ^ </a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </footer>\n");
      out.write("        <script src=\"RemoteAccess/js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"RemoteAccess/js/bootstrap.js\"></script>\n");
      out.write("        <script src=\"RemoteAccess/js/interface.js\"></script> \n");
      out.write("       <script src=\"RemoteAccess/js/jquery.plugin.min.js\"></script> \n");
      out.write("       \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $(\"#menu_slide\").click(function () {\n");
      out.write("                    $(\"#navbar\").slideToggle('normal');\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>");
      out.write(" \n");
      out.write("<style>\n");
      out.write("    .cc-img {\n");
      out.write("        margin: 0 auto;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
