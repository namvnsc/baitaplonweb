<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>danh sách contest</title>
        <link rel="stylesheet" href="../css/list_contest.css" type="text/css">
    </head>
    <body>
        <jsp:include page="div_header.jsp"></jsp:include>
        <div class="list_contest">
            <h1> DANH SÁCH CONTEST </h1>
            <table id="table_contend">
            </table>
        </div>
        <jsp:include page="div_footer.jsp"></jsp:include>
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
                                
                                var txt =   "<tr>"+
                                                "<td > NAME </td>"+
                                                "<td >START</td>"+
                                                "<td >LENGTH</td>"+
                                                "<td >STATE</td>"+
                                                "<td >ENTER</td>"+
                                            "</tr>";
                                for (x in myObj) {
                                    txt +=  "<tr>"+
                                                "<td>" + myObj[x].ten + "</td>"+
                                                "<td>" + new Date(myObj[x].thoiDiemBatDau) + "</td>" +
                                                "<td>" + myObj[x].thoiGian + "</td>" +
                                                "<td>" + myObj[x].trangThai + "</td>";
                                    if(myObj[x].trangThai=="Đã kết thúc" || myObj[x].trangThai=="Đang diễn ra"){
                                        txt +=      "<td><a href=\"contest.jsp?maContest=" + myObj[x].ma + "\"> tham gia </a></td>"+
                                            "</tr>";
                                    } else {
                                        txt +=      "<td><a href=\"register.jsp?maContest=" + myObj[x].ma + "\"> Đăng ký </a></td>"+
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
