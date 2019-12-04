<%-- 
    Document   : hocCcoban
    Created on : Nov 20, 2019, 7:25:34 PM
    Author     : ABC
--%>

<%@page import="DAO.NoiDungDAOImpl"%>
<%@page import="Entities.NoiDung"%>
<%@page import="DAO.PhanDAOImpl"%>
<%@page import="Entities.Phan"%>
<%@page import="java.util.List"%>
<%@page import="DAO.BaiHocDAOImpl"%>
<%@page import="Entities.BaiHoc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Học C cơ bản</title>
        <link rel="stylesheet" href="css/hocCcobanstyle.css">
        <link rel="stylesheet" href="css/basestyle.css">
        <link href="css/loginstyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/editorstyle.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <% String ma = request.getParameter("ma");
            List<BaiHoc> baiHocs = new BaiHocDAOImpl().findByMaKhoaHoc("KH01");
            BaiHoc baiHoc = new BaiHoc();
            if (ma == null) {
                ma = "LC01";
            }
            String back = "";
            String next = "";
            baiHoc = new BaiHocDAOImpl().find(ma);
            for (int i = 0; i < baiHocs.size(); i++) {
                if (baiHocs.get(i).getMa().equals(ma)) {
                    if (i == 0) {
                        back = baiHocs.get(i).getMa();
                        next = baiHocs.get(i + 1).getMa();
                    } else if (i == baiHocs.size() - 1) {
                        back = baiHocs.get(i - 1).getMa();
                        next = baiHocs.get(i).getMa();
                    } else {
                        back = baiHocs.get(i - 1).getMa();
                        next = baiHocs.get(i + 1).getMa();
                    }
                }
            }
        %>
    </head>
    <body>
        <div id="all">
            <div id="headerone">
                <div  id="headerone11"></div>
                <div id="headerone1">
                    <img class="contactIcon" src="resources/e-learning1-1.png" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 5px 5px;">
                </div>
                <div id="headerLH">
                    <div class="DivMenu">
                   
                        <a href="TinTuc.jsp" class="button-back-next1">News</a>
                        <a href="../contest/jsp/list_contest.jsp" class="button-back-next1">List Contest</a>
                        <a href="khoahoc.jsp" class="button-back-next1">Courses</a>
                        <a href="login.jsp" class="button-back-next1">Home Page</a>
                    </div> 
                </div>
                <div id="headerLH1">
                    
                    <% if (session.getAttribute("username") != null) {%>
                        <div id="headerHoten">
                            <br>
                            <span style="font-size: 15px">Hi, <span style="font-weight: bolder"><%= session.getAttribute("hoten")%></span>
                        </div>
                        <div id="headerLuaCHon">
                            <a href="logout" class="button-back-next1" style="padding: 20px 10px 10px 10px;">Đăng Xuất</a>
                            <a href="mainpage.jsp" class="button-back-next1" style="padding: 20px 10px 10px 10px;">Trang Cá Nhân</a>
                            
                        </div>
                    <% }  else { %>
                        
                        <a href="index.jsp" class="button-back-next1" style="padding: 20px 10px 10px;">Đăng Nhập</a>
                        <a href="signUp.jsp" class="button-back-next1" style="padding: 20px;">Đăng Ký</a>
                    
                    <%  }%>
                   
                </div>
                
                <div id="headerone3">
                    <img class="contactIcon" src="resources/396311.svg" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 10px 10px;">
                </div>
            </div>
                    <div id="headerC"></div>
            <div id="body"  style="height: 2000px;">
                
                <div id="menu11">
                    <div id="menu-name"><h2 style="text-align: center;">Học C cơ bản</h2></div>
                    <div id="list">
                        <ul>
                            <% for (BaiHoc i : baiHocs) {%>
                            <li><a href="<%= "hocCcoban.jsp?ma=" + i.getMa()%>"><%= i.getTen()%></a></li>                                
                                <% }%>
                        </ul>
                    </div>
                </div>
                <div id="menu12"></div>
               
                <div id="content11">
                    <br>
                    <br>
                    <div class="back-next">
                        <div style="width: 17%;float: left"><a href="<%= "hocCcoban.jsp?ma=" + back%>"><button class="button-back-next">Bài trước</button></a></div>
                        <div style="width: 66%;float: left;"><h2 style="margin-left: 10%"><%= "Lập trình C cơ bản - " + baiHoc.getTen()%></h2></div>
                        <div style="width: 17%;float: left"><a href="<%= "hocCcoban.jsp?ma=" + next%>"><button class="button-back-next" style="float: right">Bài tiếp theo</button></a></div>
                    </div>
                    <div id="main-content">
                        <% List<Phan> phans = new PhanDAOImpl().findByMaBaiHoc(ma);
                            for (Phan i : phans) {%>
                        <h3><%= i.getTen()%></h3>
                        <% List<NoiDung> noiDungs = new NoiDungDAOImpl().findByMaPhan(i.getMa());
                            for (NoiDung j : noiDungs) {
                                if (j.getLoai().equals("img")) {
                                    String imgUrl = "/Web/Views/img?url=" + j.getNoiDung();%>
                        <img src="<%= imgUrl%>">
                        <% } else if (j.getLoai().equals("text")) {%>
                        <%= j.getNoiDung()%>
                        <% }
                                }
                            }%>
                    </div>
                    <div id="code-editor">
                        <h2>Online Code C Editor</h2>
                        <textarea id="input" onkeydown="insertTab(this, event);">#include <stdio.h>
int main()
{
   //do your code here
   return 0;
}</textarea>
                        <textarea id="question" readonly=""></textarea>
                        <br>
                        <br>
                        <button id="run" onclick="">Run >></button>
                        <br>
                        <br>
                        <textarea id="output" readonly=""></textarea>
                    </div>
                    <div class="back-next">
                        <div style="width: 17%;float: left"><a href="<%= "hocCcoban.jsp?ma=" + back%>"><button class="button-back-next">Bài trước</button></a></div>
                        <div style="width: 66%;float: left;"><h2 style="margin-left: 27%"><%= "C cơ bản - " + baiHoc.getTen()%></h2></div>
                        <div style="width: 17%;float: left"><a href="<%= "hocCcoban.jsp?ma=" + next%>"><button class="button-back-next" style="float: right">Bài tiếp theo</button></a></div>
                    </div>
        
                </div>
              
            </div>
            <div id="footer">
                <div id="beginfooter"></div>
                <div id="contact">
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    Contact Us:
                    <a href="https://www.facebook.com/hoa.rubi.39"><img class="contactIcon" src="https://cdn.pixabay.com/photo/2015/05/17/10/51/facebook-770688_960_720.png" style="border-radius: 5px"></a>
                    <a href="https://github.com/LeHoa98ptit?fbclid=IwAR3yKK_JYQrhbvvpapQM8rI_p_C6puw-0bzyIC16GzTpKhT6viNtgK4Virs"><img class="contactIcon" src="https://cdn.iconscout.com/icon/free/png-512/github-160-734866.png"></a>
                    <a href="https://www.instagram.com/hrb1198/?fbclid=IwAR38hbeUQjvdNfVtxxt2lTXoQdtOdwzE3Peq3VuDz3zow92MTgtxbb3ygUA"><img class="contactIcon" src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/599px-Instagram_icon.png"></a>
                   <br>
                    <br>
                    <a href="" style="color: white">Privacy & Security</a> | <a href="" style="color: white">Terms of Use</a> |
                    <a href="" style="color: white">Trademarks</a> | <a href="" style="color: white">Legal</a>
                </div>
                <div style="width: 20%; height: 100%;float: left; text-align: end">
                </div>
            </div>
        </div>
        <script src="script/executecode.js"></script>
        <script src="script/detectSQLinjection.js"></script>
    </body>
</html>
