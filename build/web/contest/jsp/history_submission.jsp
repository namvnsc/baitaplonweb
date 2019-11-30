<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/list_contest.css" type="text/css">
        <link href="../css/history_submission.css" rel="stylesheet" type="text/css">
        <link href="../css/basestyle.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div id="body" style="height: 700px;">
        <div id="header">
            <a href="../../Views/login.jsp"><div id="headerEmp1">
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
                        <a href="../../Views/mainpage.jsp" style="color: brown">Trang cá nhân</a> |
                        <a href="../../Views/logout" style="color: brown">Đăng xuất</a></span>

                </div>
                <% } else { %>
                <form action="../../Views/login" method="POST" style="margin-left:37%; margin-top: 5px;">
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
                    <span style="font-size: 16px;margin-left: 20%;">Chưa có tài khoản? <a href="../../Views/signUp.jsp"> Đăng ký ngay</a></span>
                </form>
                <%  }%>
            </div>
        </div>
        <jsp:include page="div_header.jsp"></jsp:include>
            <div class="DivMenu">
                <a href="history_submission.jsp?username=<%=session.getAttribute("username")%>&maContest=<%=request.getParameter("maContest")%>" class="ItemMenu">History submission</a>
            <a href="score_board.jsp?maContest=<%=request.getParameter("maContest")%>" class="ItemMenu">Score Board</a>
            <a href="contest.jsp?maContest=<%=request.getParameter("maContest")%>" class="ItemMenu">List Problem</a>
            <a href="list_contest.jsp" class="ItemMenu">List Contest</a>
        </div>
        <div class="list_contest">
            <table id="table_history_submission">
            </table>
            <pre id="code"></pre>
        </div>
        <jsp:include page="div_footer.jsp"></jsp:include>
        </body>
    <% int i = 0;%>
    <script>
        function _load() {
            fetch('../../submission?Username=<%=session.getAttribute("username")%>&MaContest=<%=request.getParameter("maContest")%>')
                    .then(
                            function (response) {
                                if (response.status !== 200) {
                                    console.log('lỗi: ' + response.status);
                                    return;
                                }
                                response.json().then(function (data) {
//                                        alert(data);
                                    var txt = "<tr>" +
                                            "<td class=\"ProblemColumn\">Problem</td>" +
                                            "<td class=\"TrangThaiColumn\">Trạng thái</td>" +
                                            "<td class=\"ThoiDiemSubmitColumn\">Thời điểm submit</td>" +
                                            "<td class=\"ViewCodeColmn\"> Xem code </td>" +
                                            "</tr>";
                                    for (x in data) {
                                        txt += "<tr>" +
                                                "<td>" + data[x].baiTap.ten + "</td>" +
                                                "<td>" + data[x].trangThai + "</td>" +
                                                "<td>" + data[x].thoiDiemSubmit + "</td>" +
                                                "<td><button onclick=\"showCode('id" + data[x].id + "')\">  Xem Code </button></td>" +
                                                "</tr>" +
                                                "<tr id=\"id" + data[x].id + "\" style=\"display: none\">" +
                                                "<td colspan=\"4\">" + data[x].code + "</td>" +
                                                "</tr>";
                                    }
                                    document.getElementById("table_history_submission").innerHTML = txt;
                                });
                            }
                    )
                    .catch(function (err) {
                        console.log('Fetch Error :-S', err);
                    });
        }
        _load();
        setInterval(_load(), 5000);
        function showCode(id) {
            var e1 = document.getElementById(id);
            if (e1.style.display == "none")
                e1.style.display = "block";
            else
                e1.style.display = "none";
        }
    </script>
</html>
