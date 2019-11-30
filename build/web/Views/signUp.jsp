
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <link rel="stylesheet" href="css/basestyle.css">
    </head>
    <body>
        <div id="all">
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
                        <br>
                        <br>
                        <label>Mật khẩu</label>
                        <input id="password" type="password" name="password" style="margin-left:25px">
                        <br>
                        <br>
                        <input class="button-header" type="submit" value="Đăng nhập" style="margin-left: 45%" onclick="return checkSQL();"/>
                        <br>
                        <span style="font-size: 16px;margin-left: 20%;">Chưa có tài khoản?<a href="signUp.jsp">Đăng ký ngay</a></span>
                    </form>
                    <%  }%>
                </div>
            </div>
            <div id="body" style="height: 45%;">
                <div style="width: 35%; height: 100%; float: left"></div>
                <div style="width: 35%; height: 100%; float: left">
                    <h2>Hãy nhập các thông tin cần thiết để đăng ký</h2>
                    <div style="align-items: left; float: left; font-size: 17px">
                        <label>Tên đăng nhập</label>
                        <br>
                        <br>
                        <label>Mật khẩu</label>
                        <br>
                        <br>
                        <label>Họ và tên</label>
                        <br>
                        <br>
                        <label>Email</label>
                        <br>
                        <br>
                        <label>Số điện thoại</label>
                    </div>
                    <div style="align-items: right; float: left">
                        <form action="signup" method="POST">
                            <input id="usernamer" type="text" name="username">
                            <br>
                            <br>
                            <input id="passwordr" type="password" name="password">
                            <br>
                            <br>
                            <input id="hoten" type="text" name="hoten">
                            <br>
                            <br>
                            <input id="email" type="text" name="email">
                            <br>
                            <br>
                            <input id="sdt" type="text" name="sdt">
                            <br>
                            <br>
                            <input class="button-header" type="submit" value="Sign up" style="margin-left: 15%" onclick="return checkValid();"/>
                        </form></div>
                </div>
                <div style="width: 30%; height: 100%; float: left"></div>
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
