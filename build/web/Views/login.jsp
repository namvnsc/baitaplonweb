<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="css/loginstyle.css">
        <link rel="stylesheet" href="css/basestyle.css">
    </head>
    <body>
        <div id="all" style="height: 700px;">
            <div id="header">
                <a href="login.jsp"><div id="headerEmp1">
                    </div>
                </a>
                <div id="headerCenter"></div>
                <div id="headerEmp2">
                    <br>
                    <br>
                    <% if (session.getAttribute("username") != null) {%>
                    <div id="header-menu">
                        <br>
                        <span style="font-size: 20px">Xin chào, <span style="font-weight: bolder"><%= session.getAttribute("hoten")%></span>
                            <br>
                            <a href="mainpage.jsp" style="color: brown">Trang cá nhân</a> |
                            <a href="logout" style="color: brown">Đăng xuất</a></span>

                    </div>
                    <% } else { %>
                    <form action="login" method="POST" style="margin-left:37%; margin-top: 5px;">
                        <label>Tài khoản</label>
                        <input id="username" type="text" name="username" style="margin-left: 22px">
                        <!--<br>-->
                        <br>
                        <label>Mật khẩu</label>
                        <input id="password" type="password" name="password" style="margin-left:25px">
                        <!--<br>-->
                        <br>
                        <input class="button-header" type="submit" value="Đăng nhập" style="margin-left: 45%" onclick="return checkSQL();"/>
                        <br>
                        <span style="font-size: 16px;">
                            <% if ( request.getParameter("access")!=null) { %>
                            <span style="color: red;">Thất bại</span>
                            <% } %>Chưa có tài khoản?<a href="signUp.jsp">Đăng ký ngay</a></span>
                    </form>
                    <%  }%>
                </div>
            </div>
            <a href="../contest/jsp/list_contest.jsp">contest luyện tập</a>
            <div id="body" style="height: 60%;">
                <div id="beforeContent" class="content1">
                    <h4 class="titleCourse">Khóa học Lập trình C/C++ cho người mới bắt đầu</h4>
                    <div>
                        <div class="box">
                            <div class="img-container">
                                <img src="https://aptechvietnam.com.vn/c/assets/img/Layer_15.png">
                            </div>
                            <div>
                                <h6 class="text">Khoá học ngôn ngữ C</h6>
                                <p class="text-justify">Được thiết kế bởi các Chuyên gia đến từ PTIT và được rất nhiều trường đại học sử dụng. Nội dung chương trình được tối ưu, lược bỏ những kiến thức không cần thiết, chỉ tập trung những kiến thức quan trọng để giúp người mới học Lập trình nắm bắt nhanh chóng nền tảng Lập trình.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="content" class="content1">
                    <h4 class="titleCourse">Khóa học Giải thuật cho người mới bắt đầu</h4>
                    <div>
                        <div class="box">
                            <div class="img-container">
                                <img src="https://aptechvietnam.com.vn/c/assets/img/Layer_15.png">
                            </div>
                            <div>
                                <h6 class="text">Khoá học Giải thuật</h6>
                                <p class="text-justify">
                                    Khóa học cung cấp kiến thức về giải thuật: <br>
                                    - Hàm và đệ qui<br>
                                    - Các giải thuật tìm kiếm: Tuyến tính, nhị phân<br>
                                    - Các giải thuật sắp xếp: Bubble Sort, selection sort , quick sort...<br>
                                    - Cơ bản về đánh giá giải thuật<br>
                                    - ...
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="afterContent" class="content1">
                    <h4 class="titleCourse">Khóa học nhập môn về Cấu trúc dữ liệu</h4>
                    <div>
                        <div class="box">
                            <div class="img-container">
                                <img src="https://aptechvietnam.com.vn/c/assets/img/Layer_15.png">
                            </div>
                            <div>
                                <h6 class="text">Khoá học Cấu trúc dữ liệu</h6>
                                <p class="text-justify">Được thiết kế bởi các Chuyên gia đến từ PTIT và được rất nhiều trường đại học sử dụng. Nội dung chương trình được tối ưu, lược bỏ những kiến thức không cần thiết, chỉ tập trung những kiến thức quan trọng để giúp người mới học Lập trình nắm bắt nhanh chóng nền tảng Lập trình.</p>
                            </div>
                        </div>
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
        <script src="script/detectSQLinjection.js"></script>
    </body>
</html>
