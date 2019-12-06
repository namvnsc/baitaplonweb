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
        <title>Edit Page</title>
    </head>
    <body>
        <!--<form>-->
            Mã<br>
            <input type="text" id='txtma' required><br>
            Tên<br>
            <input type="text" id='txtten' required><br>
            Đề bài(format yyyy-MM-dd hh:mm:ss) <br>
            <textarea type="text" id='txtde' required> </textarea><br>
            Giới hạn thời gian<br>
            <input type="text" id='txtthoigian' required><br>
            Input<br>
            <textarea type="text" id='txtin' required> </textarea><br>
            Output<br>
            <textarea type="text" id='txtout' required> </textarea><br>
            <button onclick="submit();">Submit</button>
        <!--</form>-->
    </body>
    <script>
       
        function submit(){
            // check sql injection
            var data = {
                    ma: document.getElementById("txtma").value,
                    ten: document.getElementById("txtten").value,
                    de: document.getElementById("txtde").value,
                    gioiHanThoiGian: document.getElementById("txtthoigian").value,
                    input: document.getElementById("txtin").value,
                    output: document.getElementById("txtout").value
                };
                var x = JSON.stringify(data);
                //                alert(x);
                fetch('../../baitap', {
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
