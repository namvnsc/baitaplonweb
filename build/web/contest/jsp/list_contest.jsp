<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Learning PTIT</title>
        <link rel="stylesheet" href="../../Views/css/loginstyle.css">
        <link rel="stylesheet" href="../../Views/css/basestyle.css">
        <link rel="stylesheet" href="../../Views/css/tintuc.css">
        <link rel="stylesheet" href="../css/list_contest.css" type="text/css">
        <link rel="stylesheet" href="../css/table.css" type="text/css">
        <link rel="icon" href="../../Views/resources/e-learning1-1.png">
    </head>
    <body>
        <div id="all1" style="height: 1500px">
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
                    <% }  else { %>
                    <a href="../../Views/index.jsp" class="button-back-next1" style="padding: 20px 10px 10px;"><b>Đăng Nhập</b></a>
                    <a href="../../Views/signUp.jsp" class="button-back-next1" style="padding: 20px;"><b>Đăng Ký</b></a>
                    
                    <%  }%>
                   
                </div>
                
                <div id="headerone3">
                    <img class="contactIcon" src="../../Views/resources/396311.svg" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 10px 10px;">
                </div>
            </div>
            
            <div id="Theader" style="height: 400px">
                <h1 style="padding: 100px 0px 0px 400px;  margin: 0; font-size: 150px; font-family: inherit;"> Luyện tập</h1>
                <i style="padding-left: 200px; font-size: 50px; font-family: inherit;">Những contest hàng tuần, hàng tháng liên tục được cập nhật</i>
                
            </div>      
            
            <div id="body" style="height: 1500px; background-color: whitesmoke; padding-left: 50px">
          
                <br><br>
            <div class="list_contest" style="height: 500px">
                    <h1> DANH SÁCH CONTEST </h1>
                    <br><br><br>
                    <table id="table_contend">
                    </table>
            </div>
            <br>
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
        fetch('../../listcontest')
                .then(
                        function (response) {
                            if (response.status !== 200) {
                                console.log('lỗi: ' + response.status);
                                return;
                            }
                            response.json().then(function (data) {
                                myObj = data;
                                var txt = "<thead><tr>" +
                                        "<th class='_w30'> Tên </th>" +
                                        "<th class='_w30'>Thời gian bắt đầu</th>" +
                                        "<th class='_w10'>Giới hạn</th>" +
                                        "<th class='_w15'>Trạng thái</th>" +
                                        "<th class='_w15'>Đăng ký</th>" +
                                        "</tr></thead>";
                                for (x in myObj) {
                                    txt += "<tr>" +
                                            "<td>" + myObj[x].ten + "</td>" +
                                            "<td>" + new Date(myObj[x].thoiDiemBatDau) + "</td>" +
                                            "<td>" + myObj[x].thoiGian + " hours"+ "</td>";
                                    if(myObj[x].trangThai=="Đang diễn ra"){
                                        txt += "<td class='green'>" + myObj[x].trangThai + "</td>";
                                    }else{
                                            if(myObj[x].trangThai=="Chưa diễn ra"){
                                            txt += "<td class='cyan'>" + myObj[x].trangThai + "</td>";
                                        }else{
                                            txt += "<td>" + myObj[x].trangThai + "</td>";
                                        }
                                        
                                    }
                                    if (myObj[x].trangThai == "Đã kết thúc" || myObj[x].trangThai == "Đang diễn ra") {
                                        txt += "<td><a href=\"contest.jsp?maContest=" + myObj[x].ma + "&username="+'<%=(String)session.getAttribute("username")%>'+"\"> tham gia </a></td>" +
                                                "</tr>";
                                    } else {
                                        txt += "<td><a href=\"register.jsp?maContest=" + myObj[x].ma + "&username="+'<%=(String)session.getAttribute("username")%>'+"\"> Đăng ký </a></td>" +
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








