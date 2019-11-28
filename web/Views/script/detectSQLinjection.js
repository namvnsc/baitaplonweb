/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function checkSQL() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    var s = username + "|" + password;
    if (s.includes("select") || s.includes("union") || s.includes("\'") || s.includes("\"") || s.includes("insert")) {
        alert("Username or password invalid");
        return false;
    }
}
function checkValid() {

    var username = document.getElementById("usernamer").value;
    var password = document.getElementById("passwordr").value;
    var hoten = document.getElementById("hoten").value;
    var email = document.getElementById("email").value;
    var sdt = document.getElementById("sdt").value;
    var s = username + "|" + password;
    if (s.includes("select") || s.includes("union") || s.includes("\'") || s.includes("\"") || s.includes("insert")) {
        alert("Username or password invalid");
        return false;
    }
    if (hoten.length == 0 || email.length == 0 || sdt.length == 0) {
        alert("Field is required");
        return false;
    }
    if (!email.includes("@") || !email.includes(".com")) {
        alert("Email is invalid");
        return false;
    }
}
