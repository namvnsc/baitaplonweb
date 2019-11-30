<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>danh sách contest</title>
        <link rel="stylesheet" href="../css/list_contest.css" type="text/css">
    </head>
    <body>
        <div id="body" style="height: 700px;">
        <div id="header">
            <a href="../../Views/login.jsp"><div id="headerEmp1"></div>
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
                        <a href="../../Views/mainpage.jsp" style="color: brown">Trang cá nhân</a> |
                        <a href="../../Views/logout" style="color: brown">Đăng xuất</a></span>

                </div>
                <% } else { %>
                <form action="../../Views/login" method="POST" style="margin-left:37%; margin-top: 5px;">
                    <label>Tài khoản</label>
                    <input id="username" type="text" name="username" style="margin-left: 20px">
                    <br>
                    <br>
                    <label>Mật khẩu</label>
                    <input id="password" type="password" name="password" style="margin-left:25px">
                    <br>
                    <br>
                    <input class="button-header" type="submit" value="Đăng nhập" style="margin-left: 45%" onclick="return checkSQL();"/>
                    <br>
                    <span style="font-size: 16px;margin-left: 15%;">Chưa có tài khoản? <a href="../../Views/signUp.jsp"> Đăng ký ngay</a></span>
                </form>
                <%  }%>
            </div>
        </div>
        <jsp:include page="div_header.jsp"></jsp:include>
        
            <div class="list_contest">
                <h1> DANH SÁCH CONTEST </h1>
                <table id="table_contend">
                </table>
            </div>
        <jsp:include page="div_footer.jsp"></jsp:include>
        </div>
    </body>
    <script>
        fetch('../../listcontest')
                .then(
                        function (response) {
                            if (response.status !== 200) {
                                console.log('lỗi: ' + response.status);
                                return;
                            }
                            response.json().then(function (data) {
                                myObj = data;

                                var txt = "<tr>" +
                                        "<td > NAME </td>" +
                                        "<td >START</td>" +
                                        "<td >LENGTH</td>" +
                                        "<td >STATE</td>" +
                                        "<td >ENTER</td>" +
                                        "</tr>";
                                for (x in myObj) {
                                    txt += "<tr>" +
                                            "<td>" + myObj[x].ten + "</td>" +
                                            "<td>" + new Date(myObj[x].thoiDiemBatDau) + "</td>" +
                                            "<td>" + myObj[x].thoiGian + "</td>" +
                                            "<td>" + myObj[x].trangThai + "</td>";
                                    if (myObj[x].trangThai == "Đã kết thúc" || myObj[x].trangThai == "Đang diễn ra") {
                                        txt += "<td><a href=\"contest.jsp?maContest=" + myObj[x].ma + "\"> tham gia </a></td>" +
                                                "</tr>";
                                    } else {
                                        txt += "<td><a href=\"register.jsp?maContest=" + myObj[x].ma + "\"> Đăng ký </a></td>" +
                                                "</tr>";
                                    }
                                }
                                document.getElementById("table_contend").innerHTML = txt;
                            });
                        }
                )
                .catch(function (err) {
                    console.log('Fetch Error :-S', err);
                });
    </script>
</html>
