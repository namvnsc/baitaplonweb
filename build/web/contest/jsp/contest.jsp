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
        <jsp:include page="div_menu.jsp"></jsp:include>
        <div class="list_contest">
            <table id="table_problem_contend">
            </table>
        </div>
        <jsp:include page="div_footer.jsp"></jsp:include>
    </body>
    <script>
        fetch('../../contest?maContest=<%=request.getParameter("maContest")%>')
                .then(
                        function (response) {
                            if (response.status !== 200) {
                                console.log('lỗi: ' + response.status);
                                return;
                            }
                            response.json().then(function (data) {
                                var txt = "<tr><td class=\"STTColumn\"> STT </td> <td class=\"ProblemColumn\">Problem</td> <td class=\"DiemColumn\">Điểm</td><td>link</td></tr>";
                                for (x in data) {
                                    txt += "<tr><td>" + data[x].soThuTu + "</td><td>" + data[x].baiTap.ten + "</td><td>" + data[x].diem + "</td>";
                                    txt += "<td><a href=\"problem.jsp?maBaiTap=" + data[x].baiTap.ma + "&maContest=" + '<%=request.getParameter("maContest")%>' +"\"> làm bài </a></td></tr>";
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
