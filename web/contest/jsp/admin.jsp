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
    </head>
    <body>
        <div id="all1" style="height: 800px;">
            <div id="headerone">
                <div  id="headerone11"></div>
                <div id="headerone1">
                    <img class="contactIcon" src="../../Views/resources/e-learning1-1.png" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 5px 5px;">
                </div>
                <div id="headerLH" style="margin: 0px">
                    <div class="DivMenu">
                        
                     
                        <a href="qlContest.jsp" class="button-back-next1"><b>Quản Lý Contest</b></a>
                        <a href="qlBaitap.jsp" class="button-back-next1"><b>Quản Lý Bài Tập<b></a>
                        <a href="admin.jsp" class="button-back-next1"><b>Trang chủ</b></a>
                    </div> 
                </div>
                <div id="headerLH1">
                    
                    <% if (session.getAttribute("username") != null) {%>
                        <div id="headerHoten" >
                        </div>
                        <div id="headerLuaCHon">
                            <a href="../../Views/logout" class="button-back-next1" style="padding: 20px 10px 10px 10px;"><b>Đăng Xuất</b></a>

                            
                        </div>
                    <% }  else { %>
                    <a href="../../Views/index.jsp" class="button-back-next1" style="padding: 20px 10px 10px;"><b>Đăng Nhập</b></a>
                    
                    <%  }%>
                   
                </div>
                
                <div id="headerone3">
                    <img class="contactIcon" src="../../Views/resources/396311.svg" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 10px 10px;">
                </div>
            </div>
            
                    <div id="Theader4" style="height: 600px">
<!--                <h1 style="padding: 100px 0px 0px 450px;  margin: 0; font-size: 200px; font-family: inherit;"></h1>
                <i style="padding-left: 300px; font-size: 50px; font-family: inherit;"></i>
                -->
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
        function _load_bai_tap(){
            fetch('../../baitap')
                .then(
                        function (response) {
                            if (response.status !== 200) {
                                console.log('lỗi: ' + response.status);
                                return;
                            }
                            response.json().then(function (data) {
                                myObj = data;

                                var txt = "<tr>" +
                                        "<td > Mã </td>" +
                                        "<td > Tên </td>" +
                                        "<td class='_w40'>Đề</td>" +
                                        "<td >Input</td>" +
                                        "<td >Output</td>" +
                                        "<td >Giới hạn time</td>" +
                                        "</tr>";
                                for (x in myObj) {
                                    txt += "<tr>" +
                                            "<td>" + myObj[x].ma + "</td>" +
                                            "<td>" + myObj[x].ten + "</td>" +
                                            "<td>" + myObj[x].deBai + "</td>" +
                                            "<td>" + myObj[x].fileInput + "</td>"+
                                            "<td>" + myObj[x].fileOutput + "</td>"+
                                            "<td>" + myObj[x].gioiHanThoiGian + "</td>";
                                            
                                }
                                document.getElementById("tblbaitap").innerHTML = txt;
                            });
                        }
                )
                .catch(function (err) {
                    console.log('Fetch Error :-S', err);
                });
        }
        function _load_contest(){
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
                                        "<td > Mã </td>" +
                                        "<td > Tên </td>" +
                                        "<td > Thời điểm bắt đầu</td>" +
                                        "<td > Thời gian</td>" +
                                        "<td > Trạng thái</td>" +
                                        "</tr>";
                                for (x in myObj) {
                                    txt += "<tr>" +
                                            "<td>" + myObj[x].ma + "</td>" +
                                            "<td>" + myObj[x].ten + "</td>" +
                                            "<td>" + new Date(myObj[x].thoiDiemBatDau) + "</td>" +
                                            "<td>" + myObj[x].thoiGian + "</td>" +
                                            "<td>" + myObj[x].trangThai + "</td>";
                                }
                                document.getElementById("tblcontest").innerHTML = txt;
                            });
                        }
                )
                .catch(function (err) {
                    console.log('Fetch Error :-S', err);
                });
        }
    </script>
</html>



