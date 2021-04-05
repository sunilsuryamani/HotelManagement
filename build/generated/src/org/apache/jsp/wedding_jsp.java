package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.ServiceDetails;
import hotelDAO.ServiceDataAccess;
import java.util.*;
import model.GalleryDetails;
import hotelDAO.GalleyDataAccess;
import java.util.*;

public final class wedding_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/popup.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("                                <a href=\"#\"><img class=\"bg\" src=\"RemoteAccess/images/logo_hotel.PNG\" alt=\"logoimage\"></a>\n");
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
      out.write("                                                    <li><a href=\"editProfile.jsp\">My Profile</a></li> <hr>\n");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

        List<ServiceDetails> list = ServiceDataAccess.getWedding();
        request.setAttribute("list", list);
    
      out.write(" \n");
      out.write("     ");

        List<GalleryDetails> weddinglist = GalleyDataAccess.getAllWeddingGalley();
        request.setAttribute("weddinglist", weddinglist);
    
      out.write("\n");
      out.write("        <section class=\"primary-bg comman_bg_details\">\n");
      out.write("            <div class=\"wedding_text\">Wedding</div>\n");
      out.write("        </section>\n");
      out.write("        <section class=\"primary-bg comman_section__details\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                 \n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"page_direction\">\n");
      out.write("                            <i class=\"fa fa-home\" aria-hidden=\"true\"></i>\n");
      out.write("                            <a href=\"home.jsp\">Home</a>/<span><i class=\"fa fa-check\" aria-hidden=\"true\"></i>Wedding Page</span>\n");
      out.write("                        </div>\n");
      out.write("                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                        <div class=\"col-md-8 wedding_grid\">\n");
      out.write("                            <div col-md-2 wpb_wrapper>\n");
      out.write("                                <h2 style=\"color: #000000;text-align: left\" class=\"vc_custom_heading vc_custom_1532948922873\">Dear Newlyweds!</h2>\n");
      out.write("                                <p style=\"font-size: 16px;color: #a0a0a0;text-align: left\" class=\"vc_custom_heading\">HOTEL GRAND<br>\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-2 wedding_grid\">\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    ");
      if (_jspx_meth_c_forEach_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                    <div class=\"col-md-5 wedding_grid\">\n");
      out.write("                        <div class=\"wpb_wrapper\"><h3 style=\"text-align: left\" class=\"vc_custom\">\n");
      out.write("                                <b><i>CONTACT FURTHER INFORMATION</i></b></h3><strong>MR. NILESH</strong>\n");
      out.write("                            <p><strong>MOB +387 61 107 690</strong></p>\n");
      out.write("                            <p><strong>TEL +387 33 563 445</strong></p>\n");
      out.write("                            <p><strong class=\"email_text\">e-mail: <a href=\"mailto:nilesh@hotelgrand.com\">nilesh@hotelgrand.com</a></strong></p>\n");
      out.write("                            <div class=\"ult-spacer spacer-5e3e38609d2f2\" data-id=\"5e3e38609d2f2\" data-height=\"25\" data-height-mobile=\"25\" data-height-tab=\"25\" data-height-tab-portrait=\"\" data-height-mobile-landscape=\"\" style=\"clear:both;display:block;\">\n");
      out.write("\n");
      out.write("                            </div><h3 style=\"text-align: left\" class=\"vc_custom_heading vc_custom_1532949382664\">We are social</h3>\n");
      out.write("\n");
      out.write("                            <ul class=\"dt-sc-sociable \">\n");
      out.write("                                <li> <a class=\"fa fa-facebook social_icon\" target=\"_blank\" title=\"Facebook\" href=\"https://www.facebook.com/pages/Hotel-Grand-Sarajevo/346376688800937?ref=hl\"> </a> </li>\n");
      out.write("                                <li> <a class=\"fa fa-instagram social_icon\" target=\"_blank\" title=\"Instagram\" href=\"https://www.instagram.com/grand.sarajevo/?hl=bs\"> </a> </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <section id=\"wedding\" class=\"gallery_table_bg\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <div class=\"section_heading section_heading_2\">\n");
      out.write("                            <h2> Wedding Gallery </h2>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            ");
      if (_jspx_meth_c_forEach_3(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                           \n");
      out.write("                        </div>\n");
      out.write("                    </div\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
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
      out.write("                                    <li><a href=\"#\" class=\"footer_link\">LogOut</a></li>\n");
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
      out.write("\n");
      out.write("    </body>\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${list}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("u");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                        <div class=\"col-md-4 wedding_grid\">\n");
          out.write("\n");
          out.write("                            <div class=\"member_wedding_img \">\n");
          out.write("                                <img src=\"RemoteAccess/images/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${u.getImage1()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"image\">\n");
          out.write("\n");
          out.write("                            </div>\n");
          out.write("                        </div>\n");
          out.write("                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${list}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("u");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write(" \n");
          out.write("                                <div class=\"wpb_text_column wpb_content_element f_md gold\">\n");
          out.write("                                    <div class=\"wpb_wrapper\">\n");
          out.write("                                        <p class=\"gold\" style=\"text-align: center;\"><strong><em>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${u.getTitle()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</em></strong><br>\n");
          out.write("                                        \n");
          out.write("                                            ");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${u.getDescription()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\n");
          out.write("                                        \n");
          out.write("\n");
          out.write("                                    </div>\n");
          out.write("                                </div>\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent(null);
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${list}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_2.setVar("u");
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                    <div class=\"col-md-5 wedding_grid\">\n");
          out.write("\n");
          out.write("                        <div class=\"member_wedding_img \">\n");
          out.write("                            <img src=\"RemoteAccess/images/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${u.getImage2()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"image\">\n");
          out.write("\n");
          out.write("                        </div>\n");
          out.write("                    </div>\n");
          out.write("                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_3(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_3 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_3.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_3.setParent(null);
    _jspx_th_c_forEach_3.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${weddinglist}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_3.setVar("u");
    int[] _jspx_push_body_count_c_forEach_3 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_3 = _jspx_th_c_forEach_3.doStartTag();
      if (_jspx_eval_c_forEach_3 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                            <div class=\"col-md-4 service_grid\">\n");
          out.write("                                <div class=\"member_detail1\">\n");
          out.write("                                    <div class=\"member_img1\">\n");
          out.write("                                        <img src=\"RemoteAccess/images/wedding/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${u.getImage()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" style=\"width:100%\" onclick=\"openModal();currentSlide(1)\" class=\"hover-shadow cursor\">\n");
          out.write("                                    </div>                                  \n");
          out.write("                                </div>\n");
          out.write("                            </div>\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_forEach_3.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_3.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_3[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_3.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_3.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_3);
    }
    return false;
  }
}
