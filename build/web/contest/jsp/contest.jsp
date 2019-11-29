<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../css/basestyle.css" rel="stylesheet" type="text/css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>danh sách contest</title>
        <link rel="stylesheet" href="../css/list_contest.css" type="text/css">
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
                <h1 id="tenContest"> CONTEST </h1>
                <h2 > List problem </h2>
                <table id="table_problem_contend">
                </table>
            </div>
        <jsp:include page="div_footer.jsp"></jsp:include>
        </body>
        <script>
        fetch('../../contest?maContest=<%=request.getParameter("maContest")%>&username=<%=session.getAttribute("username")%>')
                .then(
                        function (response) {
                            if (response.status !== 200) {
                                console.log('lỗi: ' + response.status);
                                return;
                            }
                            response.json().then(function (data) {
                                document.getElementById("tenContest").innerHTML = "Contest "+data.contest.ten;
                                var txt = "<tr>" +
                                        "<td class=\"STTColumn\"> STT </td>" +
                                        "<td class=\"ProblemColumn\">Problem</td>" +
                                        "<td class=\"DiemColumn\">Score</td>" +
                                        "<td class=\"DiemColumn\">Solve</td>" +
                                        "<td>Enter</td>" +
                                        "</tr>";
                                tmp = data.listRs
                                for (x in tmp) {
                                    txt += "<tr>" +
                                            "<td>" + tmp[x].problem.soThuTu + "</td>" +
                                            "<td>" + tmp[x].problem.baiTap.ten + "</td>" +
                                            "<td>" + tmp[x].problem.diem + "</td>" +
                                            "<td>" + tmp[x].trangThai + "</td>" +
                                            "<td><a href=\"problem.jsp?maBaiTap=" + tmp[x].problem.baiTap.ma + "&maContest=" + '<%=request.getParameter("maContest")%>' + "\"> làm bài </a></td>" +
                                            "</tr>";
                                }
                                document.getElementById("table_problem_contend").innerHTML = txt;
                            });
                        }
                )
                .catch(function (err) {
                    console.log('Fetch Error :-S', err);
                });
    </script>
</html>
