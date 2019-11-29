<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>score board</title>
        <link rel="stylesheet" href="../css/list_contest.css" type="text/css">
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
        <div >
            <h1> SCORE BOARD </h1>
            <table id="table_score_board_contend">
            </table>
        </div>
        <jsp:include page="div_footer.jsp"></jsp:include>
    </body>
    <script>
        fetch('../../scoreboard?maContest=<%=request.getParameter("maContest")%>')
                .then(
                        function (response) {
                            if (response.status !== 200) {
                                console.log('lỗi: ' + response.status);
                                return;
                            }
                            response.json().then(function (data) {
                                var txt =   "<tr>"+
                                                "<td class=\"STTColumn\"> Rank </td>"+
                                                "<td class=\"ProblemColumn\">Username</td>"+
                                                "<td class=\"DiemColumn\">Score</td>"+
                                            "</tr>";
                                tmp = data.listRsB;
                                for (x in tmp) {
                                    txt +=  "<tr>"+
                                                "<td>" + tmp[x].rank + "</td>"+
                                                "<td>" + tmp[x].taiKhoan.username + "</td>"+
                                                "<td>" + tmp[x].score + "</td>"+
                                                "</tr>";
                                }
                                document.getElementById("table_score_board_contend").innerHTML = txt;
                            });
                        }
                )
                .catch(function (err) {
                    console.log('Fetch Error :-S', err);
                });
    </script>
</html>
