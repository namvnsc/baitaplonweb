<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Learning PTIT</title>
        <link rel="stylesheet" href="../../Views/css/loginstyle.css">
        <link rel="stylesheet" href="../../Views/css/basestyle.css">
        <link rel="stylesheet" href="../../Views/css/tintuc.css">
        <link href="../css/problem.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="../css/list_contest.css" type="text/css">
        <link rel="icon" href="../../Views/resources/e-learning1-1.png">
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
                    <% }  else { %>
                    <a href="../../Views/index.jsp" class="button-back-next1" style="padding: 20px 10px 10px;"><b>Đăng Nhập</b></a>
                    <a href="../../Views/signUp.jsp" class="button-back-next1" style="padding: 20px;"><b>Đăng Ký</b></a>
                    
                    <%  }%>
                   
                </div>
                
                <div id="headerone3">
                    <img class="contactIcon" src="../../Views/resources/396311.svg" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 10px 10px;">
                </div>
            </div>
            
            <div id="Theader1">
<!--                <h1 style="padding: 100px 0px 0px 450px;  margin: 0; font-size: 200px; font-family: inherit;"></h1>
                <i style="padding-left: 300px; font-size: 50px; font-family: inherit;"></i>
                -->
            </div>       
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
            <div id="body" style="height: 1300px; background-color: whitesmoke; padding-left: 50px">
                
                <br>
                <br>
                <div class="list_contest" style="height: 700px">
                    <h1 id="tenbaitap" style="font-family: inherit; text-align: center; "></h1>
                    <pre id="debai" style="font-family: inherit; font-size: 20px; border-radius: 15px;  background-color: #CDC8B1; padding: 10px"></pre>
                    <h3>Online Code C/C++ Editor</h3>
                    <textarea id="CodeEditorArea" style="width: 100%" id="input" onkeydown="insertTab(this, event);">
#include <stdio.h>
int main()
{
   //do your code here
   return 0;
}
                    </textarea>
                    <br>
                    <input type="file" onclick="submitCode()"> Chọn file </button> 
                    <button onclick="submitCode()"> Nộp bài </button>
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
            <script src="../../Views/script/executecode.js"></script>
    </body>
    <script>
                    function submitCode() {
                        var data = {
                            Username: '<%=session.getAttribute("username")%>',
                            MaBaiTap: '<%=request.getParameter("maBaiTap")%>',
                            Code: document.getElementById("CodeEditorArea").value,
                            ThoiDiemSubmit: new Date()
                        }
                        var x = JSON.stringify(data);
                        //                alert(x);
                        fetch('../../submission', {
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
                            body: x // body data type must match "Content-Type" header
                        }).then(
                                function (response) {
                                    if (response.status !== 200) {
                                        console.log('lỗi: ' + response.status);
                                        return;
                                    }
                                    response.json().then(function (data) {
                                        if (data.ThongBao == 'submit thành công') {
                                            window.location.href = "history_submission.jsp?username=" + '<%=session.getAttribute("username")%>' + "&maContest=<%=request.getParameter("maContest")%>";
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
            <script>
                fetch('../../problem?maBaiTap=<%=request.getParameter("maBaiTap")%>')
                        .then(
                                function (response) {
                                    if (response.status !== 200) {
                                        console.log('lỗi: ' + response.status);
                                        return;
                                    }
                                    response.json().then(function (data) {
                                        document.getElementById("tenbaitap").innerHTML = data.ten;
                                        document.getElementById("debai").innerHTML = data.deBai;
                                    });
                                }
                        )
                        .catch(function (err) {
                            console.log('Fetch Error :-S', err);
                        });
            </script>
</html>



