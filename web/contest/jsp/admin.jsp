<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/table.css" type="text/css">
        <title>Admin Page</title>
    </head>
    <body>
        <h1> Quản lý bài tập </h1>
        <button><a href="editbaitap.jsp?command=add">Thêm bài tập</a></button>
        <br>
        <button onclick="_load_bai_tap()">Xem danh sách bài tập</button>
        <br>
        <table id="tblbaitap"></table>
        <br>
        <h1>Quản lý Contest</h1>
        <br>
        <button><a href="editcontest.jsp?command=add">Thêm contest</a></button>
        <br>
        <button onclick="_load_contest()">Xem danh sách contest</button>
        <br>
        <table id='tblcontest'></table>
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
