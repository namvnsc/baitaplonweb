<%-- 
    Document   : editbaitap
    Created on : Dec 2, 2019, 2:54:46 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--<form>-->
            Mã contest<br>
            <input type="text" id='txtma' required><br>
            Tên contest<br>
            <input type="text" id='txtten' required><br>
            Bắt đầu(format yyyy-MM-dd hh:mm:ss) <br>
            <input type="text" id='txtthoidiembatdau' required><br>
            Thời gian<br>
            <input type="text" id='txtthoigian' required><br>
            Danh sách bài<br>
            <div id='dsbai'></div>
            <button onclick='themproblem()'>Thêm bài</button><br>
            <div id='divthembai' style="display: none">
                Bài 
                <select id='selectbaitap'>
                    
                </select>
                Điểm
                <select id='selectdiem'>
                    <option>50</option>
                    <option>100</option>
                    <option>150</option>
                    <option>200</option>
                    <option>250</option>
                </select>
                <button onclick='thembai();'>Thêm</button>
            </div>
            <button onclick="submit();">Submit</button>
        <!--</form>-->
    </body>
    <script>
        loadbaitap();
        var listpro = new Array();
        function loadbaitap(){
            fetch('../../baitap')
                .then(
                        function (response) {
                            if (response.status !== 200) {
                                console.log('lỗi: ' + response.status);
                                return;
                            }
                            response.json().then(function (data) {
                                myObj = data;
                                var txt;
                                for (x in myObj) {
                                    txt += 
                                            "<option>" + myObj[x].ma +" - "+ myObj[x].ten + "</option>";
                                            
                                }
                                document.getElementById("selectbaitap").innerHTML = txt;
                            });
                        }
                )
                .catch(function (err) {
                    console.log('Fetch Error :-S', err);
                });
        }
        function themproblem(){
            document.getElementById("divthembai").style.display = 'block';
        }
        function thembai(){
            var bt = {};
            bt.ma = document.getElementById("selectbaitap").value;
            bt.diem = document.getElementById("selectdiem").value;
            listpro.push(bt);
            document.getElementById("divthembai").style.display = "none";
            document.getElementById("dsbai").innerHTML += "<h3> - " + bt.ma +" - "+ bt.diem + '</h3>';
        }
        function submit(){
            // check sql injection
            var data = {
                    ma: document.getElementById("txtma").value,
                    ten: document.getElementById("txtten").value,
                    thoiDiemBatDau: document.getElementById("txtthoidiembatdau").value,
                    ThoiGian: document.getElementById("txtthoigian").value,
                    danhSachProblem: listpro
                };
                var x = JSON.stringify(data);
                //                alert(x);
                fetch('../../contest', {
                    method: 'POST', // *GET, POST, PUT, DELETE, etc.
                    //mode: 'cors', // no-cors, *cors, same-origin
                    //cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
                    //credentials: 'same-origin', // include, *same-origin, omit
                    headers: {
                        'Content-Type': 'application/json; charset=UTF-8'
                                //                                 'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    //redirect: 'follow', // manual, *follow, error
                    //referrer: 'no-referrer', // no-referrer, *client
                    body: x // body data type must match "Content-Type" header
                }).then(
                        function (response) {
                            if (response.status !== 200) {
                                console.log('lỗi: ' + response.status);
                                return;
                            }
                            response.json().then(function (data) {
                                if (data.ThongBao == 'submit thành công') {
                                    window.location.href = "admin.jsp?";
                                } else {
                                    alert("submit ko thành công");
                                }
                            });
                        }
                )
                        .catch(function (err) {
                            console.log('Fetch Error :-S', err);
                        });
                ;
        }
    </script>
</html>
