<%-- 
    Document   : register
    Created on : Nov 28, 2019, 9:20:57 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register contest</title>
        <link rel="stylesheet" href="../css/list_contest.css" type="text/css">
    </head>
    <body>
        <jsp:include page="div_header.jsp"></jsp:include>
        <div class="list_contest">
            <h1 id="thongbao"> Đang yêu cầu đăng ký </h1>
            <h1> Đếm ngược </h1>
            <h1 id="clock"></h1>
        </div>
        <jsp:include page="div_footer.jsp"></jsp:include>
    </body>
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
            if(s===-1){
                s=59;
                m = m-1;
                if(m===-1){
                    m=59;
                    h = h-1;
                    if(h===-1){
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
