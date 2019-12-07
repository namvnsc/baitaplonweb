<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="css/loginstyle.css">
        <link rel="stylesheet" href="css/basestyle.css">
    </head>
    <body>
        <div id="all1" style="height: 1000px;">
            <div id="headerone">
                <div  id="headerone11"></div>
                <div id="headerone1">
                  
                    <img class="contactIcon" src="resources/e-learning1-1.png" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 5px 5px;">
                    
                </div>
                <div id="headerone22">
                    <div class="DivMenu">
                       
                        <a href="TinTuc.jsp" class="button-back-next1"><b>News</b></a>
                        <a href="contest/jsp/list_contest.jsp" class="button-back-next1"><b>List Contest</b></a>
                        <a href="khoahoc.jsp" class="button-back-next1"><b>Courses</b></a>
                        <a href="login.jsp" class="button-back-next1"><b>Home Page</b></a>
                    </div> 
                </div>
                <div id="headerone2">
                  
                    <a href="" class="button-back-next1" style="padding: 10px 10px 10px;"><b>Đăng Nhập</b></a>
                    <a href="signUp.jsp" class="button-back-next1" style="padding: 10px;"><b>Đăng Ký</b></a>
                    
                </div>
                
                <div id="headerone3">
                    <img class="contactIcon" src="resources/396311.svg" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 10px 10px;">
                </div>
            </div>
            
            <div id="header1" style="height: 800px">
                <div id="h11" >
                    <h1 style="padding: 200px 0px 0px 120px;font-size: 50px; margin: 0px;">Đăng Nhập Ngay Để Trải Nghiệm</h1>
                    <h1 style="padding: 0px 50px 0px 250px;font-size: 50px; margin: 0px">Cùng Chúng Tôi</h1>
                    <h2><i style="padding: 0px 250px;">**** Bắt Đầu Ngay Nào ****</i></h2>
                    <img class="contactIcon1" src="resources/muitenn.png" style="background-image: none; padding-left: 300px "alt=ttps://www.flaticon.com/premium-icon/icons/svg/510/510808.svg" st""/>

                </div>
                <div id="h12" >
                    <h1 style="font-family: inherit; padding: 200px 90px 0px 90px; margin: 0px;">Đăng Nhập Ngay</h1>
                    <br><br>
                  
                        <form action="login" method="POST" style="margin-left:0%; margin-top: 5px;">
                        <label style="font-size: 25px">Tài khoản</label>
                        <input id="username" type="text" name="username" size="35" style="margin-left: 22px">
                        <!--<br>-->
                        <br>
                        <br>
                        <label style="font-size: 25px">Mật khẩu</label>
                        <input id="password" type="password" name="password" size="35" style="margin-left:25px">
                        <!--<br>-->
                        <br>
                        <br>
                        <input class="button-header" type="submit" size="25" value="Đăng nhập" style="margin-left: 45%" onclick="return checkSQL();"/>
                        <br>
                        <br>
                        <span style="font-size: 25px;">
                            <% if (request.getParameter("access") != null) { %>
                            <span style="color: red;">Thất bại</span>
                            <% } %>Chưa có tài khoản?<a href="signUp.jsp" style="padding: 10px; color: #CAFF70">Đăng ký ngay</a></span>
                    
                    </form>
                   
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
                    <a href="" style="color: white">Privacy & Security</a> | <a href="" style="color: white">Terms of Use</a> |
                    <a href="" style="color: white">Trademarks</a> | <a href="" style="color: white">Legal</a>
                </div>
                <div style="width: 20%; height: 100%;float: left; text-align: end">
                </div>
            </div>

            <script src="Views/script/detectSQLinjection.js"></script>
    </body>
</html>
