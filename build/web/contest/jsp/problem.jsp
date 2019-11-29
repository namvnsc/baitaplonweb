<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/problem.css" rel="stylesheet" type="text/css">
        <link href="../css/basestyle.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <jsp:include page="div_header.jsp"></jsp:include>
        <div class="DivMenu">
                <a href="history_submission.jsp?username=<%=session.getAttribute("username")%>&maContest=<%=request.getParameter("maContest")%>" class="ItemMenu">History submission</a>
                <a href="score_board.jsp?maContest=<%=request.getParameter("maContest")%>" class="ItemMenu">Score Board</a>
                <a href="contest.jsp?maContest=<%=request.getParameter("maContest")%>" class="ItemMenu">List Problem</a>
                <a href="list_contest.jsp" class="ItemMenu">List Contest</a>
            </div>
            <div class="list_contest">
                <h1 id="tenbaitap"></h1>
                <pre id="debai"></pre>
                <!--<div id="vidu"></div>-->
                <h2>Online Code C Editor</h2>
                <textarea id="CodeEditorArea" id="input">
#include <stdio.h>
int main()
{
   //do your code here
   return 0;
}
                </textarea>
                <br>
                <input type="file" onclick="submitCode()"> chọn file </button> 
                <button onclick="submitCode()"> submit </button>
            </div>
        <jsp:include page="div_footer.jsp"></jsp:include>
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
                    body : x // body data type must match "Content-Type" header
                }).then(
                        function (response) {
                            if (response.status !== 200) {
                                console.log('lỗi: ' + response.status);
                                return;
                            }
                            response.json().then(function (data) {
                                if (data.ThongBao == 'submit thành công') {
                                    window.location.href="history_submission.jsp?username="+'<%=session.getAttribute("username")%>'+"&maContest=<%=request.getParameter("maContest")%>";
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
