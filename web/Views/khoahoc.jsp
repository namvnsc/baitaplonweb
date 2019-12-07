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
        <div id="all1" style="height: 2300px;">
            <div id="headerone">
                <div  id="headerone11"></div>
                <div id="headerone1">
                    <img class="contactIcon" src="resources/e-learning1-1.png" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 5px 5px;">
                </div>
                <div id="headerLH">
                    <div class="DivMenu">
                   
                        <a href="TinTuc.jsp" class="button-back-next1"><b>News</b></a>
                        <a href="../contest/jsp/list_contest.jsp" class="button-back-next1"><b>List Contest</b></a>
                        <a href="khoahoc.jsp" class="button-back-next1"><b>Courses</b></a>
                        <a href="login.jsp" class="button-back-next1"><b>Home Page</b></a>
                    </div> 
                </div>
                <div id="headerLH1">
                    
                    <% if (session.getAttribute("username") != null) {%>
                        <div id="headerHoten">
                            <br>
                            <span style="font-size: 15px">Hi, <span style="font-weight: bolder"><%= session.getAttribute("hoten")%></span>
                        </div>
                        <div id="headerLuaCHon">
                            <a href="logout" class="button-back-next1" style="padding: 20px 10px 10px 10px;"><b>Đăng Xuất</b></a>
                            <a href="mainpage.jsp" class="button-back-next1" style="padding: 20px 10px 10px 10px;"><b>Trang Cá Nhân</b></a>
                            
                        </div>
                    <% }  else { %>
                        
                    <a href="index.jsp" class="button-back-next1" style="padding: 20px 10px 10px;"><b>Đăng Nhập</b></a>
                    <a href="signUp.jsp" class="button-back-next1" style="padding: 20px;"><b>Đăng Ký</b></a>
                    
                    <%  }%>
                   
                </div>
                
                <div id="headerone3">
                    <img class="contactIcon" src="resources/396311.svg" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 10px 10px;">
                </div>
            </div>
            
            <div id="header3">
                <div id="h21" style="font-family: inherit; font-size: 30px">
                    <h1 style="margin-top: 150px">L</h1>
                    <h1>E</h1>
                    <h1>A</h1>
                    <h1>R</h1>
                    <h1>N</h1>
                </div>
               
                <div id="h23" style="font-family: inherit; font-size: 30px"> 
                    <h1 style="margin-top: 150px">Programing</h1>
                    <h1><i>try hard</i></h1>
                    
                </div>
            </div>
                
            <div id="body" style="height: 1500px; background-color: white;">
         
                
                <div id="Secondcontent" >
                    <div id="oneleft21"></div>
                    <div id="onecenter22">
                        <h1>CÁC KHÓA HỌC MỚI</h1>
                        <hr>
                        <br>
                        <div class="center1" >
                             <div id="center21" >
                                <a href="hocCcoban.jsp" style="color: black; text-decoration: none"><img class="contactIcon1" style="width: 100%; height: 100%" src="resources/ltC.jpg"></a>
                            </div>
                            <div id="center22" >
                                <a href="hocCcoban.jsp" style="color: black; text-decoration: none"><h2>Lập Trình C</h2></a>
                        
                            </div>
                        </div>
                        <div id="center2" ></div>
                        <div class="center3">
                            <div id="center21" >
                                <a href="thuattoan.jsp" style="color: black; text-decoration: none"><img class="contactIcon1" style="width: 100%; height: 100%" src="resources/ctdl.jpeg"></a>
                            </div>
                            <div id="center22" >
                                <a href="thuattoan.jsp" style="color: black; text-decoration: none"><h2>Nhập Môn Giải Thuật</h2></a>
                            </div>

                        </div>
                        <div id="center4" ></div>
                        <div class="center5" >
                            <div id="center21" >
                                <img class="contactIcon1" style="width: 100%; height: 100%" src="resources/html.jpg">
                            </div>
                            <div id="center22" >
                                <h2>HTML/CSS</h2>
                            </div>
                            
                        </div>
                        
                    </div>
                    <div id="oneright23" ></div>
                </div>
                <br>
                <br>
                <div id="Secondcontent" >
                    <div id="oneleft21"></div>
                    <div id="onecenter22">
                        <h1>CÁC KHÓA HỌC ĐANG ĐƯỢC XÂY DỰNG</h1>
                        <hr>
                        <br>
                        <div class="center1" >
                            <div id="center21" >
                                <img class="contactIcon1" style="width: 100%; height: 100%" src="resources/js.jpg">
                            </div>
                            <div id="center22" >
                                <h2>JavaScript</h2>
                            </div>
                        </div>
                        <div id="center2" ></div>
                        <div class="center3">
                            <div id="center21" >
                                <img class="contactIcon1" style="width: 100%; height: 100%" src="resources/php.jfif">
                            </div>
                            <div id="center22" >
                                <h2>PHP Cơ Bản</h2>
                            </div>
                        </div>
                        <div id="center4" ></div>
                        <div class="center5" >
                            <div id="center21" >
                                <img class="contactIcon1" style="width: 100%; height: 100%" src="resources/cc.jfif">
                            </div>
                            <div id="center22" >
                                <h2>Lập Trình C#</h2>
                            </div>
                        </div>
                        
                    </div>
                    <div id="oneright23" ></div>
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
