package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/popup.jsp");
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
