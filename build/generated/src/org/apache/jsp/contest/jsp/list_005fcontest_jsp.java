package org.apache.jsp.contest.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class list_005fcontest_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>List contest</title>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../Views/css/loginstyle.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../Views/css/basestyle.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../Views/css/tintuc.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/list_contest.css\" type=\"text/css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/table.css\" type=\"text/css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div id=\"all1\" style=\"height: 1500px;\">\r\n");
      out.write("            <div id=\"headerone\">\r\n");
      out.write("                <div  id=\"headerone11\"></div>\r\n");
      out.write("                <div id=\"headerone1\">\r\n");
      out.write("                    <img class=\"contactIcon\" src=\"../../Views/resources/e-learning1-1.png\" style=\"border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 5px 5px;\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div id=\"headerLH\" style=\"margin: 0px\">\r\n");
      out.write("                    <div class=\"DivMenu\">\r\n");
      out.write("                        \r\n");
      out.write("                        <a href=\"../../Views/TinTuc.jsp\" class=\"button-back-next1\">News</a>\r\n");
      out.write("                        <a href=\"list_contest.jsp\" class=\"button-back-next1\">List Contest</a>\r\n");
      out.write("                        <a href=\"../../Views/khoahoc.jsp\" class=\"button-back-next1\">Courses</a>\r\n");
      out.write("                        <a href=\"../../Views/login.jsp\" class=\"button-back-next1\">Home Page</a>\r\n");
      out.write("                    </div> \r\n");
      out.write("                </div>\r\n");
      out.write("                <div id=\"headerLH1\">\r\n");
      out.write("                    \r\n");
      out.write("                    ");
 if (session.getAttribute("username") != null) {
      out.write("\r\n");
      out.write("                        <div id=\"headerHoten\">\r\n");
      out.write("                            <br>\r\n");
      out.write("                            <span style=\"font-size: 15px\">Hi, <span style=\"font-weight: bolder\">");
      out.print( session.getAttribute("hoten"));
      out.write("</span>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div id=\"headerLuaCHon\">\r\n");
      out.write("                            <a href=\"../../Views/logout\" class=\"button-back-next1\" style=\"padding: 20px 10px 10px 10px;\">Đăng Xuất</a>\r\n");
      out.write("                            <a href=\"../../Views/mainpage.jsp\" class=\"button-back-next1\" style=\"padding: 20px 10px 10px 10px;\">Trang Cá Nhân</a>\r\n");
      out.write("                            \r\n");
      out.write("                        </div>\r\n");
      out.write("                    ");
 }  else { 
      out.write("\r\n");
      out.write("                        <a href=\"../../Views/index.jsp\" class=\"button-back-next1\" style=\"padding: 20px 10px 10px;\">Đăng Nhập</a>\r\n");
      out.write("                        <a href=\"../../Views/signUp.jsp\" class=\"button-back-next1\" style=\"padding: 20px;\">Đăng Ký</a>\r\n");
      out.write("                    \r\n");
      out.write("                    ");
  }
      out.write("\r\n");
      out.write("                   \r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("                <div id=\"headerone3\">\r\n");
      out.write("                    <img class=\"contactIcon\" src=\"../../Views/resources/396311.svg\" style=\"border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 10px 10px;\">\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div id=\"Theader\" style=\"height: 500px\">\r\n");
      out.write("                <h1 style=\"padding: 100px 0px 0px 400px;  margin: 0; font-size: 150px; font-family: inherit;\"> CONTEST</h1>\r\n");
      out.write("                <i style=\"padding-left: 200px; font-size: 50px; font-family: inherit;\">Những contest hàng tuần, hàng tháng liên tục được cập nhật</i>\r\n");
      out.write("                \r\n");
      out.write("            </div>      \r\n");
      out.write("            \r\n");
      out.write("            <div id=\"body\" style=\"height: 1000px; background-color: whitesmoke; padding-left: 50px\">\r\n");
      out.write("                <br>\r\n");
      out.write("                <hr style=\"width: 100%;\">\r\n");
      out.write("                <br><br><br>\r\n");
      out.write("            <div class=\"list_contest\" style=\"height: 500px\">\r\n");
      out.write("                    <h1> DANH SÁCH CONTEST </h1>\r\n");
      out.write("                    <br><br><br>\r\n");
      out.write("                    <table id=\"table_contend\">\r\n");
      out.write("                    </table>\r\n");
      out.write("            </div>\r\n");
      out.write("            <br>\r\n");
      out.write("            </div>   \r\n");
      out.write("            <div id=\"footer\">\r\n");
      out.write("                <div id=\"beginfooter\"></div>\r\n");
      out.write("                <div id=\"contact\">\r\n");
      out.write("                    <br>\r\n");
      out.write("                    <br>\r\n");
      out.write("                    <br>\r\n");
      out.write("                    <br>\r\n");
      out.write("                    <br>\r\n");
      out.write("                    Contact Us:\r\n");
      out.write("                    <a href=\"https://www.facebook.com/hoa.rubi.39\"><img class=\"contactIcon\" src=\"https://cdn.pixabay.com/photo/2015/05/17/10/51/facebook-770688_960_720.png\" style=\"border-radius: 5px\"></a>\r\n");
      out.write("                    <a href=\"https://github.com/LeHoa98ptit?fbclid=IwAR3yKK_JYQrhbvvpapQM8rI_p_C6puw-0bzyIC16GzTpKhT6viNtgK4Virs\"><img class=\"contactIcon\" src=\"https://cdn.iconscout.com/icon/free/png-512/github-160-734866.png\"></a>\r\n");
      out.write("                    <a href=\"https://www.instagram.com/hrb1198/?fbclid=IwAR38hbeUQjvdNfVtxxt2lTXoQdtOdwzE3Peq3VuDz3zow92MTgtxbb3ygUA\"><img class=\"contactIcon\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/599px-Instagram_icon.png\"></a>\r\n");
      out.write("\r\n");
      out.write("                    <br>\r\n");
      out.write("                    <a href=\"\" style=\"color: white\">Privacy & Security</a> | <a href=\"\" style=\"color: white\">Terms of Use</a> |\r\n");
      out.write("                    <a href=\"\" style=\"color: white\">Trademarks</a> | <a href=\"\" style=\"color: white\">Legal</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div style=\"width: 20%; height: 100%;float: left; text-align: end\">\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <script src=\"Views/script/detectSQLinjection.js\"></script>\r\n");
      out.write("    </body>\r\n");
      out.write("    <script>\r\n");
      out.write("        fetch('../../listcontest')\r\n");
      out.write("                .then(\r\n");
      out.write("                        function (response) {\r\n");
      out.write("                            if (response.status !== 200) {\r\n");
      out.write("                                console.log('lỗi: ' + response.status);\r\n");
      out.write("                                return;\r\n");
      out.write("                            }\r\n");
      out.write("                            response.json().then(function (data) {\r\n");
      out.write("                                myObj = data;\r\n");
      out.write("                                var txt = \"<thead><tr>\" +\r\n");
      out.write("                                        \"<th class='_w30'> NAME </th>\" +\r\n");
      out.write("                                        \"<th class='_w30'>START</th>\" +\r\n");
      out.write("                                        \"<th class='_w10'>LENGTH</th>\" +\r\n");
      out.write("                                        \"<th class='_w15'>STATE</th>\" +\r\n");
      out.write("                                        \"<th class='_w15'>ENTER</th>\" +\r\n");
      out.write("                                        \"</tr></thead>\";\r\n");
      out.write("                                for (x in myObj) {\r\n");
      out.write("                                    txt += \"<tr>\" +\r\n");
      out.write("                                            \"<td>\" + myObj[x].ten + \"</td>\" +\r\n");
      out.write("                                            \"<td>\" + new Date(myObj[x].thoiDiemBatDau) + \"</td>\" +\r\n");
      out.write("                                            \"<td>\" + myObj[x].thoiGian + \" hours\"+ \"</td>\";\r\n");
      out.write("                                    if(myObj[x].trangThai==\"Đang diễn ra\"){\r\n");
      out.write("                                        txt += \"<td class='green'>\" + myObj[x].trangThai + \"</td>\";\r\n");
      out.write("                                    }else{\r\n");
      out.write("                                        txt += \"<td>\" + myObj[x].trangThai + \"</td>\";\r\n");
      out.write("                                    }\r\n");
      out.write("                                    if (myObj[x].trangThai == \"Đã kết thúc\" || myObj[x].trangThai == \"Đang diễn ra\") {\r\n");
      out.write("                                        txt += \"<td><a href=\\\"contest.jsp?maContest=\" + myObj[x].ma + \"\\\"> tham gia </a></td>\" +\r\n");
      out.write("                                                \"</tr>\";\r\n");
      out.write("                                    } else {\r\n");
      out.write("                                        txt += \"<td><a href=\\\"register.jsp?maContest=\" + myObj[x].ma + \"\\\"> Đăng ký </a></td>\" +\r\n");
      out.write("                                                \"</tr>\";\r\n");
      out.write("                                    }\r\n");
      out.write("                                }\r\n");
      out.write("                                document.getElementById(\"table_contend\").innerHTML = txt;\r\n");
      out.write("                            });\r\n");
      out.write("                        }\r\n");
      out.write("                )\r\n");
      out.write("                .catch(function (err) {\r\n");
      out.write("                    console.log('Fetch Error :-S', err);\r\n");
      out.write("                });\r\n");
      out.write("    </script>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
