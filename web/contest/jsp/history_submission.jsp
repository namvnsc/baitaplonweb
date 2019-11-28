<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/history_submission.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <jsp:include page="div_header.jsp"></jsp:include>
            <div class="list_contest">
                <table id="table_history_submission">
                </table>
                <pre id="code"></pre>
            </div>
        <jsp:include page="div_footer.jsp"></jsp:include>
        </body>
        <% int i = 0;%>
        <script>
            function _load() {
                fetch('../../submission?Username=<%=session.getAttribute("username")%>&MaContest=<%=request.getParameter("maContest")%>')
                        .then(
                                function (response) {
                                    if (response.status !== 200) {
                                        console.log('lỗi: ' + response.status);
                                        return;
                                    }
                                    response.json().then(function (data) {
//                                        alert(data);
                                        var txt = "<tr>"+
                                                        "<td class=\"ProblemColumn\">Problem</td>"+
                                                        "<td class=\"TrangThaiColumn\">Trạng thái</td>"+
                                                        "<td class=\"ThoiDiemSubmitColumn\">Thời điểm submit</td>"+
                                                        "<td class=\"ViewCodeColmn\"> Xem code </td>"+
                                                  "</tr>";
                                        for (x in data) {
                                            txt += "<tr>"+
                                                        "<td>" + data[x].baiTap.ten + "</td>"+
                                                        "<td>" + data[x].trangThai + "</td>"+
                                                        "<td>" + data[x].thoiDiemSubmit+"</td>"+
                                                        "<td><button onclick=\"showCode('id"+data[x].id+"')\">  Xem Code </button></td>"+
                                                    "</tr>"+
                                                    "<tr id=\"id"+data[x].id+"\" style=\"display: none\">"+
                                                        "<td colspan=\"4\">"+ data[x].code+"</td>"+
                                                    "</tr>";
                                        }
                                        document.getElementById("table_history_submission").innerHTML = txt;
                                    });
                                }
                        )
                        .catch(function (err) {
                            console.log('Fetch Error :-S', err);
                        });
            }
            _load();
            function showCode(id){
                var e1 = document.getElementById(id);
                if(e1.style.display=="none") e1.style.display="block";
                else e1.style.display="none";
            }
    </script>
</html>
