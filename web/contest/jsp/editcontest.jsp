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
        <link rel="icon" href="../../Views/resources/e-learning1-1.png">

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
            
             <div id="Theader4">
<!--                <h1 style="padding: 100px 0px 0px 450px;  margin: 0; font-size: 200px; font-family: inherit;"></h1>
                <i style="padding-left: 300px; font-size: 50px; font-family: inherit;"></i>
                -->
            </div>       
          
            <div id="body" style="height: 500px; background-color: whitesmoke;">
                <div style="height: 100%; width: 35%; float: left">
                     <br>
                    <br>
                    <br>
                </div>
                <div style="height: 100%; width: 50%; float:left">
                    <br>
                    <br>
                    <br>
                    <h1>THÊM CONTEST</h1>

                    Mã contest<br>
                    <input type="text" id='txtma' size="40" required><br>
                    Tên contest<br><r>
                        <input type="text" id='txtten' size="40" required><br>
                    Bắt đầu(format yyyy-MM-dd hh:mm:ss) <br>
                    <input type="text" id='txtthoidiembatdau' size="40" required><br>
                    Thời gian<br>
                    <input type="text" id='txtthoigian' size="40" required><br><br>
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
                    </div>  <br>
                    <button onclick="submit();">Submit</button>
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






