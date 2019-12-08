<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Learning PTIT</title>
        <link rel="stylesheet" href="../../Views/css/loginstyle.css">
        <link rel="stylesheet" href="../../Views/css/basestyle.css">
        <link rel="stylesheet" href="../../Views/css/tintuc.css">
        <link rel="stylesheet" href="../css/table.css" type="text/css">
        <link rel="icon" href="resources/e-learning1-1.png">
    </head>
    <body>
        <div id="all1" style="height: 1500px;">
            <div id="headerone">
                <div  id="headerone11"></div>
                <div id="headerone1">
                    <img class="contactIcon" src="../../Views/resources/e-learning1-1.png" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 5px 5px;">
                </div>
                <div id="headerLH" style="margin: 0px">
                    <div class="DivMenu">

                        <a href="../../Views/TinTuc.jsp" class="button-back-next1"><b>Tin tức</b></a>
                        <a href="list_contest.jsp" class="button-back-next1"><b>Luyện tập</b></a>
                        <a href="../../Views/khoahoc.jsp" class="button-back-next1"><b>Khóa học</b></a>
                        <a href="../../Views/login.jsp" class="button-back-next1"><b>Trang chủ</b></a>
                    </div> 
                </div>
                <div id="headerLH1">

                    <% if (session.getAttribute("username") != null) {%>
                    <div id="headerHoten">
                        <br>
                        <span style="font-size: 15px">Xin chào, <span style="font-weight: bolder"><%= session.getAttribute("hoten")%></span>
                    </div>
                    <div id="headerLuaCHon">
                        <a href="../../Views/logout" class="button-back-next1" style="padding: 20px 10px 10px 10px;"><b>Đăng Xuất</b></a>
                        <a href="../../Views/mainpage.jsp" class="button-back-next1" style="padding: 20px 10px 10px 10px;"><b>Trang Cá Nhân</b></a>

                    </div>
                    <% } else { %>
                    <a href="../../Views/index.jsp" class="button-back-next1" style="padding: 20px 10px 10px;"><b>Đăng Nhập</b></a>
                    <a href="../../Views/signUp.jsp" class="button-back-next1" style="padding: 20px;"><b>Đăng Ký</b></a>

                    <%  }%>

                </div>

                <div id="headerone3">
                    <img class="contactIcon" src="../../Views/resources/396311.svg" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 10px 10px;">
                </div>
            </div>

            <div id="Theader3">

                <img class="contactIcon" src="../../Views/resources/cursor.png" style="border-radius: 5px; height: 50px; width: 50px;  padding: 250px 0px 0px 450px; "/>
                <img class="contactIcon" src="../../Views/resources/cursor.png" style="border-radius: 5px; height: 50px; width: 50px;  padding: 0px 0px 150px 400px; "/>
                <img src="../../Views/resources/networking.png" style="border-radius: 5px; height: 50px; width: 50px;  padding: 0px 50px 0px 0px;  "/>
                <!--                <h1 style="padding: 100px 0px 0px 450px;  margin: 0; font-size: 200px; font-family: inherit;"></h1>
                                <i style="padding-left: 300px; font-size: 50px; font-family: inherit;"></i>
                -->
            </div>  
                    <br>
            <div id="mm">
                <div id="mm1"></div>
                <div id="mm2">
                    <div class="DivMenu" style="border: px solid green;" > 
                        <a href="history_submission.jsp?username=<%=session.getAttribute("username")%>&maContest=<%=request.getParameter("maContest")%>" class="button-back-next1" style="text-decoration: none; color: black; padding: 15px; text"><b style="font-family: inherit; font-size: 20px">Lịch sử làm bài</b></a>
                        <a href="score_board.jsp?maContest=<%=request.getParameter("maContest")%>" style="text-decoration: none; color: black; padding: 15px" class="button-back-next1"><b style="font-family: inherit; font-size: 20px">Bảng điểm</b></a>
                        <a href="contest.jsp?maContest=<%=request.getParameter("maContest")%>" style="text-decoration: none; color: black; padding: 15px" class="button-back-next1"><b style="font-family: inherit; font-size: 20px">Danh sách bài tập</b></a>

                    </div>
                </div>
            </div>
            <div id="body" style="height: 1500px; background-color: whitesmoke; padding-left: 50px">
           
                <br>
                <div style="width: 90%; margin-left: 50px">
                    <h2> History submission </h2>
                    <br>
                <div id="table_history_submission">
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
                    <a href="" style="color: white">Privacy & Security</a> | <a href="" style="color: white">Terms of Use</a> |
                    <a href="" style="color: white">Trademarks</a> | <a href="" style="color: white">Legal</a>
                </div>
                <div style="width: 20%; height: 100%;float: left; text-align: end">
                </div>
            </div>

            <script src="Views/script/detectSQLinjection.js"></script>
    </body>
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
                                    var txt = "<table><thead><tr>" +
                                            "<th class='_w30'>Problem</th>" +
                                            "<th class='_w20'>Trạng thái</th>" +
                                            "<th class='_w35'>Thời điểm submit</th>" +
                                            "<th class='_w25'> Xem code </th>" +
                                            "</tr></thead></table>";
                                    for (x in data) {
                                        txt += "<table><tr>" +
                                                "<td class='_w30'><a href='problem.jsp?maBaiTap=" + data[x].baiTap.ma + "&maContest=" + '<%=request.getParameter("maContest")%>' + "'>" + data[x].baiTap.ten + "</a></td>";
                                        
                                        if(data[x].trangThai=="Accept")
                                            txt += "<td class='_w20' style='color: green'>" + data[x].trangThai + "</td>";
                                        else 
                                            txt += "<td class='_w20' style='color: red'>" + data[x].trangThai + "</td>";
                                        
                                        txt += "<td class='_w35'>" + new Date(data[x].thoiDiemSubmit) + "</td>" +
                                                "<td class='_w25'><button onclick=\"showCode('id" + data[x].id + "')\">  Xem Code </button></td>" +
                                                "</tr></table><br>" +
                                                "<pre id=\"id" + data[x].id + "\" style=\"padding: 15px; width: 95%; border-radius: 10px; background-color: pink; display: none\">" 
                                                + data[x].code + 
                                                "</pre>";
                                    }
                                    document.getElementById("table_history_submission").innerHTML = txt+"<table>";
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



