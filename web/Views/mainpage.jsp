
<%@page import="DAO.TaiKhoanDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="Entities.KhoaHoc"%>
<%@page import="DAO.KhoaHocDAO"%>
<%@page import="Entities.TaiKhoan"%>
<%@page import="DAO.TaiKhoanDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Learning PTIT</title>
        <link rel="stylesheet" href="css/basestyle.css">
        <link rel="stylesheet" href="css/mainpage.css">
        <link rel="icon" href="resources/e-learning1-1.png">
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

                        <a href="TinTuc.jsp" class="button-back-next1"><b>Tin tức</b></a>
                        <a href="../contest/jsp/list_contest.jsp" class="button-back-next1"><b>Luyện tập</b></a>
                        <a href="khoahoc.jsp" class="button-back-next1"><b>Khóa học</b></a>
                        <a href="login.jsp" class="button-back-next1"><b>Trang chủ</b></a>
                    </div> 
                </div>
                <div id="headerLH1">

                    <% if (session.getAttribute("username") != null) {%>
                    <div id="headerHoten">
                        <br>
                        <span style="font-size: 15px">Xin chào, <span style="font-weight: bolder"><%= session.getAttribute("hoten")%></span>
                    </div>
                    <div id="headerLuaCHon">
                        <a href="logout" class="button-back-next1" style="padding: 20px 10px 10px 10px;"><b>Đăng Xuất</b></a>
                        <a href="mainpage.jsp" class="button-back-next1" style="padding: 20px 10px 10px 10px;"><b>Trang Cá Nhân</b></a>

                    </div>
                    <% } else { %>

                    <a href="index.jsp" class="button-back-next1" style="padding: 20px 10px 10px;"><b>Đăng Nhập</b></a>
                    <a href="signUp.jsp" class="button-back-next1" style="padding: 20px;"><b>Đăng Ký</b></a>

                    <%  }%>

                </div>

                <div id="headerone3">
                    <img class="contactIcon" src="resources/396311.svg" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 10px 10px;">
                </div>
            </div>
            <br>
            <br>
            <br>
            <div id="profile">
                <% TaiKhoanDAOImpl taiKhoanDAOImpl = new TaiKhoanDAOImpl();
                    KhoaHocDAO khoaHocDAO = new KhoaHocDAO();
                    List<KhoaHoc> list = khoaHocDAO.getAll();
                    TaiKhoan a = taiKhoanDAOImpl.getAccByUsername(session.getAttribute("username").toString());
                    String avt = "../resources/avt_test.jpg";
                    if (a != null) {%>
                <br>
                <br>
                <div class="text"><h2 style="font-family: inherit; font-size: 30px">Thông tin học viên</h2></div>
                <div class="box">
                    <div>
                        <img class="img-container1" id="avt" src="resources/avt_test.jpg" style="width: 200px; height: 200px;">
                    </div>

                    <div>
                        <p class="text-justify">
                            <br><span class="title" style="font-weight: bolder;font-size: 20px"><%= a.getUsername()%></span>
                            <br>
                            <br><span class="title" style="text-align: center">Họ và tên:</span>
                            <%= a.getHoten()%>
                            <br><span class="title">Email:</span>
                            <%= a.getEmail()%>
                            <br><span class="title">Số điện thoại:</span>
                            <%= a.getSdt()%>
                        </p>
                    </div>
                    <br>
                    <a href=""><button class="btn-follow" style="size: 100px">Chỉnh sửa thông tin</button></a>
                    <p>~~ Yêu màu tím và ghét sự giả dối <3</p>
                </div>
                <% }
                %>
            </div>
            <div id="profile-content">
                <div id="listsothich">
                    <ul><li><h2>Sở thích</h2></li></ul>
                    <div id="sothich">
                        <div>
                            <div class="box">
                                <div class="img-container">
                                    <img class="hobby" src="resources/hobby_java.png">
                                </div>
                                <h3>Java</h3>
                            </div>
                        </div>
                    </div>
                    <div id="sothich">
                        <div>
                            <div class="box">
                                <div class="img-container">
                                    <img class="hobby" src="resources/hobby_microservices.png">
                                </div>
                                <h3>Microservices</h3>
                            </div>
                        </div>
                    </div>
                    <div id="sothich">
                        <div>
                            <div class="box">
                                <div class="img-container">
                                    <img class="hobby" src="resources/hobby_python.png">
                                </div>
                                <h3>Python</h3>
                            </div>
                        </div>
                    </div>
                    <div id="sothich">
                        <div>
                            <div class="box">
                                <div class="img-container">
                                    <img class="hobby" src="resources/hobby_spring.png">
                                </div>
                                <h3>Spring</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div style="clear: both">
                <hr></div>
                <div id="khoahoc">
                    <ul><li><h2>Các khóa học đang theo</h2></li></ul>

                    <% for (KhoaHoc kh : list) {%>
                    <div id="khoa">
                        <h4 class="titleCourse"><%= kh.getTen()%></h4>
                        <div>
                            <div class="box">
                                <div class="img-container">
                                    <img src="https://aptechvietnam.com.vn/c/assets/img/Layer_15.png">
                                </div>
                                <a href="<%= kh.getUrl()%>">Tiếp tục học</a>
                            </div>
                        </div>
                    </div>
                    <%}%>
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
        <script src="script/detectSQLinjection.js"></script>
    </body>
</html>
