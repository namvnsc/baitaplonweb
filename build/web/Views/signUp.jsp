
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
                        <form action="signup" method="POST"">
                            <input id="usernamer" type="text" name="username"">
                            <br>
                            <br>
                            <input id="passwordr" type="password" name="password"">
                            <br>
                            <br>
                            <input id="hoten" type="text" name="hoten"">
                            <br>
                            <br>
                            <input id="email" type="text" name="email"">
                            <br>
                            <br>
                            <input id="sdt" type="text" name="sdt"">
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
                    <a href="https://www.facebook.com/thangbook94"><img class="contactIcon" src="https://cdn.pixabay.com/photo/2015/05/17/10/51/facebook-770688_960_720.png" style="border-radius: 5px"></a>
                    <button><img class="contactIcon" src="data:image/png;base64,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"></button>
                    <button><img class="contactIcon" src="data:image/png;base64,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"></button>
                    <button><img class="contactIcon" src="data:image/png;base64,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"></button>
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
