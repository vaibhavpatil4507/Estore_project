package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ulogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>ulogin</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"bootstrap.css\">\n");
      out.write("        <script src=\"validation.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            .div1\n");
      out.write("            {\n");
      out.write("                background-color: white;\n");
      out.write("                height: 610px;\n");
      out.write("                width: 32%;\n");
      out.write("                border-radius: 5px 5px 5px 5px;\n");
      out.write("                margin-left: 950px;\n");
      out.write("                margin-top: 70px;\n");
      out.write("                margin-bottom: 100px;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            h3\n");
      out.write("            {\n");
      out.write("                font-family:algerian;\n");
      out.write("                font-size: 45px;\n");
      out.write("                color: purple;\n");
      out.write("                margin-left: 68px;\n");
      out.write("                margin-top: 15px\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            input[type=text]\n");
      out.write("            {\n");
      out.write("                height: 40px;\n");
      out.write("                width: 250px;\n");
      out.write("                border:none;\n");
      out.write("                border-bottom:1px #00ffff; \n");
      out.write("                background: none;\n");
      out.write("                    \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            input[type=password]\n");
      out.write("            {\n");
      out.write("                height: 40px;\n");
      out.write("                width: 250px;\n");
      out.write("                border:none;\n");
      out.write("                background: none;\n");
      out.write("            }\n");
      out.write("              \n");
      out.write("            input[type=submit]\n");
      out.write("            {\n");
      out.write("                border: 1px solid purple;\n");
      out.write("                color: purple;\n");
      out.write("                font-family: elephant;\n");
      out.write("                font-size: 30px;\n");
      out.write("                background: none;\n");
      out.write("                border-radius: 5px 5px 5px 5px;\n");
      out.write("                width: 150px;\n");
      out.write("               \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("             input[type=button]:hover\n");
      out.write("             {\n");
      out.write("                color: white;\n");
      out.write("                background-color: purple;\n");
      out.write("             }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("          \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-image: url(images/greenwall.jpg); background-size: cover\">\n");
      out.write("        <form name=\"ab\" action=\"userlogin\" method=\"post\">\n");
      out.write("            \n");
      out.write("        <div class=\"div1\">\n");
      out.write("        <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-1\"></div>\n");
      out.write("        <div class=\"col-sm-12\">\n");
      out.write("        <h3><u>Online E-store</u></h3></div>\n");
      out.write("        </div><br>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        <div class=\"col-sm-9\">\n");
      out.write("        <label>Requires an active seller account</label>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("                        \n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-7\"></div>\n");
      out.write("        <div class=\"col-sm-5\">\n");
      out.write("        <a href=\"registration.jsp\">Forgot password?</a></div>\n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-12\">\n");
      out.write("        <hr style=\"background-color:purple;width: 350px;height: 2px;margin-left: 70px\"></hr></div>\n");
      out.write("        </div><br>\n");
      out.write("            \n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        <div class=\"col-sm-1\">\n");
      out.write("        <img src=\"images/user.png\" height=\"33px\" width=\"33px\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-1\">\n");
      out.write("        <input type=\"text\" class=\"form-control\" placeholder=\"username\" name=\"username\" required>\n");
      out.write("        </div>\n");
      out.write("        </div> \n");
      out.write("        <br>    \n");
      out.write("                        \n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        <div class=\"col-sm-1\">\n");
      out.write("        <img src=\"images/key.png\" height=\"31px\" width=\"31px\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-sm-1\">\n");
      out.write("        <input type=\"password\" class=\"form-control\" placeholder=\"Password\" name=\"Rpass\" required >\n");
      out.write("        </div>    \n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-12\">\n");
      out.write("        <hr style=\"background-color:purple;width: 350px;height: 2px;margin-left: 70px\"></hr></div>\n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("        <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-2\"></div>\n");
      out.write("        <div class=\"col-sm-4\">\n");
      out.write("        <input type=\"checkbox\" required>Remember me</div>            \n");
      out.write("        </div>            \n");
      out.write("        <br><br><br>\n");
      out.write("                             \n");
      out.write("         <div class=\"row\">\n");
      out.write("         <center><div class=\"col-sm-12\">\n");
      out.write("         <u><input type=\"submit\"  value=\"Login\" name=\"btn\"></u>\n");
      out.write("         </div></center>\n");
      out.write("         </div><br><br>\n");
      out.write("        \n");
      out.write("         <div class=\"row\">\n");
      out.write("         <div class=\"col-sm-2\"></div>\n");
      out.write("         <div class=\"col-sm-10\">\n");
      out.write("         <label>---------------------New to Online E-store------------------</label></div></div>\n");
      out.write("         <br>\n");
      out.write("         <div class=\"row\">\n");
      out.write("         <div class=\"col-sm-5\"></div> \n");
      out.write("         <div class=\"col-sm-6\">\n");
      out.write("         <a href=\"registration.jsp\">Register Here</a></div>\n");
      out.write("         </div>\n");
      out.write("         </div>\n");
      out.write("       \n");
      out.write("         </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
