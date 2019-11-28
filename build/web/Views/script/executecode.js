/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $("#run").click(function () {
        alert("Code của bạn đang được thực thi...");
        var y = btoa($.trim($("#input").val()));
        $.ajax({
            url: "https://localhost:8443/Web/run-code",
            type: "POST",
            dataType: "text",
            data: y,
            processData: false,
            success: function (result) {
                $("#output").text(result);
            }
        });
    });
});

function insertTab(o, e) {
    var kC = e.keyCode ? e.keyCode : e.charCode ? e.charCode : e.which;
    if (kC == 9 && !e.shiftKey && !e.ctrlKey && !e.altKey) {
        var oS = o.scrollTop;
        if (o.setSelectionRange) {
            var sS = o.selectionStart;
            var sE = o.selectionEnd;
            o.value = o.value.substring(0, sS) + "    " + o.value.substr(sE);
            o.setSelectionRange(sS + 1, sS + 1);
            o.focus();
        } else if (o.createTextRange) {
            document.selection.createRange().text = "    ";
            e.returnValue = false;
        }
        o.scrollTop = oS;
        if (e.preventDefault) {
            e.preventDefault();
        }
        return false;
    }
    return true;
}