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
        <div id="all1" style="height: 700px;">
            <div id="headerone">
                <div  id="headerone11"></div>
                <div id="headerone1">
                    <img class="contactIcon" src="../../Views/resources/e-learning1-1.png" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 5px 5px;">
                </div>
                <div id="headerLH" style="margin: 0px">
                    <div class="DivMenu">
                        
                        <a href="../../Views/TinTuc.jsp" class="button-back-next1"><b>Tin tức</b></a>
                        <a href="list_contest.jsp" class="button-back-next1"><b>Luyện tập</b></a>
                        <a href="../../Views/khoahoc.jsp" class="button-back-next1"><b>Khóa học<b></a>
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
                    
                    <%  }%>
                   
                </div>
                
                <div id="headerone3">
                    <img class="contactIcon" src="../../Views/resources/396311.svg" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 10px 10px;">
                </div>
            </div>
            
                    <div  style="height: 200px; background-color: whitesmoke">
                       

            </div>       

                        
            <div id="body" style="height: 400px; background-color: whitesmoke;">
                <div style="height: 100%; width: 35%;  float: left;">
                    <br>
                </div>
                    <div style="height: 100%; width: 40%; float: left;">
                    <div class="list_contest">
                            <h1 id="thongbao"> Đang yêu cầu đăng ký </h1>
                            <h1> Đếm ngược </h1>
                            <h1 id="clock"></h1>
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

        <link rel="stylesheet" href="../css/list_contest.css" type="text/css">
    </head>
    <script>
        var data = {
                    Username: '<%=session.getAttribute("username")%>',
                    MaContest: '<%=request.getParameter("maContest")%>'
//                    ThoiDiemDangKy: new String(new Date().getTime())
                }
                var x = JSON.stringify(data);
//                alert(x);
                fetch('../../register', {
                    method: 'POST', // *GET, POST, PUT, DELETE, etc.
                    //mode: 'cors', // no-cors, *cors, same-origin
                    //cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
                    //credentials: 'same-origin', // include, *same-origin, omit
                    headers: {
                        'Content-Type': 'application/json'
//                                 'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    //redirect: 'follow', // manual, *follow, error
                    //referrer: 'no-referrer', // no-referrer, *client
                    body : x // body data type must match "Content-Type" header
                }).then(
                        function (response) {
                            if (response.status !== 200) {
                                console.log('lỗi: ' + response.status);
                                return;
                            }
                            response.json().then(function (data) {
                                if (data.ThongBao == 'Register thành công') {
                                    document.getElementById('thongbao').innerHTML="Bạn đã đăng ký thành công";
                                } else {
                                    document.getElementById('thongbao').innerHTML="Bạn đã đăng ký không thành công";
                                }
                            });
                        }
                )
                        .catch(function (err) {
                            console.log('Fetch Error :-S', err);
                        });
        var h = 0, s = 0, m = 0;
        fetch('../../contest?maContest=<%=request.getParameter("maContest")%>')
                .then(
                        function (response) {
                            if (response.status !== 200) {
                                console.log('lỗi: ' + response.status);
                                return;
                            }
                            response.json().then(function (data) {
                                var t = data.thoiDiemBatDau;
                                t = t-(new Date()).getTime();
                                t = Math.floor(t/1000);
                                h = Math.floor(t/(60*60));
                                t = t-h*60*60;
                                m = Math.floor(t/60);
                                t = t-m*60;
                                s = Math.floor(t);
//                                alert(h+" : "+ m +" : "+s);
                            });
                        }
                )
                .catch(function (err) {
                    console.log('Fetch Error :-S', err);
                });
        function demNguoc(){
            if(s<=-1){
                s=59;
                m = m-1;
                if(m<=-1){
                    m=59;
                    h = h-1;
                    if(h<=-1){
                        clearTimeout(false);
                        window.location.href = "contest.jsp?maContest=<%=request.getParameter("maContest")%>";
                    }
                }
            }
            document.getElementById('clock').innerHTML = h+" : "+ m +" : "+s;
        }
        setInterval(function(){
            s--;
            demNguoc();
        }, 1000);
    </script>
</html>




