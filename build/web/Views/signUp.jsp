
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <link rel="stylesheet" href="css/basestyle.css">
        <link rel="stylesheet" href="css/loginstyle.css">
        <link rel="stylesheet" href="css/tintuc.css">
    </head>
    <body>
        <div id="all">
            <div id="header1" style="height: 800px">
                <div id="h11" >
                    <h1 style="padding: 200px 0px 0px 150px;font-size: 50px; margin: 0px;">Đăng Ký Ngay!!!</h1>
                    <h1 style="padding: 0px 50px 0px 250px;font-size: 50px; margin: 0px"></h1>

                    <img class="contactIcon1" src="resources/muitenn.png" style="background-image: none; padding-left: 300px "alt=ttps://www.flaticon.com/premium-icon/icons/svg/510/510808.svg" st""/>

                </div>
                <div id="h12" >
                    <br>
                    <br>
                    <h1 style="font-family: inherit; margin-top: 170px" >Hãy nhập các thông tin cần thiết để đăng ký</h1>
                    <div style="align-items: left; float: left; font-size: 17px">
                        <label>Tên đăng nhập</label>
                        <br>
                        <br>
                        <label>Mật khẩu</label>
                        <br>
                        <br>
                        <label>Họ và tên</label>
                        <br>
                        <br>
                        <label>Email</label>
                        <br>
                        <br>
                        <label>Số điện thoại</label>
                    </div>
                    <div style="align-items: right; float: left">
                        <form action="signup" method="POST">
                            <input id="usernamer" type="text" size="40" name="username" style="margin-left: 10px">
                            <br>
                            <br>
                            <input id="passwordr" type="password" size="40" name="password" style="margin-left: 10px">
                            <br>
                            <br>
                            <input id="hoten" type="text" size="40" name="hoten"style="margin-left: 10px">
                            <br>
                            <br>
                            <input id="email" type="text" size="40" name="email"style="margin-left: 10px">
                            <br>
                            <br>
                            <input id="sdt" type="text" size="40" name="sdt" style="margin-left: 10px">
                            <br>
                            <br>
                            <input class="button-header" type="submit" size="40" value="Sign up" style="margin-left: 15%" onclick="return checkValid();"/>
                        </form></div>
                    
                </div>
            <div id="headerone">
                <div  id="headerone11"></div>
                <div id="headerone1">
                  
                    <img class="contactIcon" src="resources/e-learning1-1.png" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 5px 5px;">
                    
                </div>
                <div id="headerone22">
                    <div class="DivMenu">
                       
                        <a href="TinTuc.jsp" class="button-back-next1"><b>News</b></a>
                        <a href="../contest/jsp/list_contest.jsp" class="button-back-next1"><b>List Contest</b></a>
                        <a href="khoahoc.jsp" class="button-back-next1"><b>Courses</b></a>
                        <a href="login.jsp" class="button-back-next1"><b>Home Page</b></a>
                    </div> 
                </div>
                <div id="headerone2">
                   
                    <a href="index.jsp" class="button-back-next1" style="padding: 10px 10px 10px;"><b>Đăng Nhập</b></a>
                    <a href="signUp.jsp" class="button-back-next1" style="padding: 10px;"><b>Đăng Ký</b></a>
                    
                </div>
                
                <div id="headerone3">
                    <img class="contactIcon" src="resources/396311.svg" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 10px 10px;">
                </div>
            </div>    
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
                    <br>
                    <a href="" style="color: white">Privacy & Security</a> | <a href="" style="color: white">Terms of Use</a> |
                    <a href="" style="color: white">Trademarks</a> | <a href="" style="color: white">Legal</a>
                </div>
                <div style="width: 20%; height: 100%;float: left; text-align: end">
                </div>
            </div>
        </div>
        <script src="script/detectSQLinjection.js"></script>
    </body>
</html>
