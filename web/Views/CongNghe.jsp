<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Learning PTIT</title>
        <link rel="stylesheet" href="css/loginstyle.css">
        <link rel="stylesheet" href="css/basestyle.css">
        <link rel="stylesheet" href="css/tintuc.css">
        <link rel="icon" href="resources/e-learning1-1.png">
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
                       
                        <a href="TinTuc.jsp" class="button-back-next1">Tin tức</a>
                        <a href="../contest/jsp/contest.jsp" class="button-back-next1">Luyện tập</a>
                        <a href="" class="button-back-next1">Khóa học</a>
                        <a href="login.jsp" class="button-back-next1">Trang chủ</a>
                    </div> 
                </div>
                <div id="headerLH1">
                    
                    <% if (session.getAttribute("username") != null) {%>
                        <div id="headerHoten">
                            <br>
                            <span style="font-size: 15px">Xin chào, <span style="font-weight: bolder"><%= session.getAttribute("hoten")%></span>
                        </div>
                        <div id="headerLuaCHon">
                            <a href="logout" class="button-back-next1" style="padding: 20px 10px 10px 10px;">Đăng Xuất</a>
                            <a href="mainpage.jsp" class="button-back-next1" style="padding: 20px 10px 10px 10px;">Trang Cá Nhân</a>
                            
                        </div>
                    <% }  else { %>
                        <a href="login.jsp" class="button-back-next1" style="padding: 20px 10px 10px 10px;">Trợ Giúp</a>
                        <a href="login.jsp" class="button-back-next1" style="padding: 20px 10px 10px;">Đăng Nhập</a>
                        <a href="signUp.jsp" class="button-back-next1" style="padding: 20px;">Đăng Ký</a>
                    
                    <%  }%>
                   
                </div>
                
                <div id="headerone3">
                    <img class="contactIcon" src="resources/396311.svg" style="border-radius: 5px; height: 70px; width: 70px;  padding: 0px 0px 10px 10px;">
                </div>
            </div>
            
            <div id="Theader">
                <h1 style="padding: 100px 0px 0px 450px;  margin: 0; font-size: 200px; font-family: inherit;"> Tin tức</h1>
                <i style="padding-left: 300px; font-size: 50px; font-family: inherit;">Các tin tức mới nhất được cấp nhật tại đây</i>
                
            </div>       
            
            <div id="body" style="height: 2300px; background-color: whitesmoke;">
                <br>
                <br>
                <br>
                <div id="conten">
                    <div id="conten1"></div>
                    <div class="conten2">
                        <div id="conten21">
                            <br>
                            <br>
                            
                            <img src="resources/iphone.png" style="width: 200px; height: 200px" alt=""/>
                        </div>
                        <div id="conten22">
                            <br><br>
                            <h2>So sánh cấu hình iPhone 11, 11 Pro, 11 Pro Max và iPhone XR, XS, XS Max. Có đáng để lên đời?</h2>
                            <a href="https://quantrimang.com/so-sanh-cau-hinh-iphone-11-11-pro-11-pro-max-va-iphone-xr-xs-xs-max-166581" style="padding: 20px; color: black; text-decoration: none;">Sau bao ngày chờ đợi, iPhone 11, 11 Pro, 11 Pro Max (tạm gọi tắt là iPhone 2019) đã chính thức được ra mắt và thu hút sự quan tâm của cả thế giới như thường lệ. 3 mẫu iPhone 2019 đều sở hữu khá nhiều thay đổi cũng như cải tiến đáng giá cả về cấu hình phần cứng lẫn tính năng. Có thể kể đến như bộ xử lý A13 Bionic mới sở hữu hiệu năng "mạnh nhất từng có trên smartphone", cụm camera sau nhiều cảm biến hơn, và một loạt các tính năng nhiếp ảnh - quay video thông minh như Night Mode, smartHDR, Deep Fusion, Cinematic Stabilization, và Audio Zoom</a>
                        </div>
                    </div>
                </div>
                
                <div id="conten">
                    <div id="conten1"></div>
                    <div class="conten2">
                        <div id="conten21">
                            <br>
                            <br>
                            
                            <img src="resources/iphone12.jpg" style="width: 200px; height: 200px" alt=""/>
                        </div>
                        <div id="conten22">
                            <br><br>
                            <h2>Không phải ba, Apple sẽ ra mắt lên tới bốn model iPhone 12 vào năm sau với hai model hỗ trợ kết nối 5G mmWave</h2>
                            <a href="https://www.thegioididong.com/tin-tuc/apple-se-ra-mat-len-toi-bon-model-iphone-12-vao-nam-sau-1224444" style="padding: 20px; color: black; text-decoration: none;">Theo báo cáo mới nhất từ các nhà phân tích JPMorgan, Apple có thể sẽ ra mắt 4 mẫu iPhone 12 vào năm sau, bao gồm 1 phiên bản có kích thước màn hình 5.4 inch, 1 phiên bản 6.7 inch và 2 phiên bản còn lại có cùng kích thước là 6.1 inch.
                                Bên cạnh đó, bốn chiếc iPhone mới này sẽ bao gồm một phiên bản là iPhone SE 2 dự kiến sẽ ra mắt vào Q1 năm 2020.</a>
                        </div>
                    </div>
                </div>
               
                <div id="conten">
                       <div id="conten1"></div>
                       <div class="conten2">
                           <div id="conten21">
                               <br>
                               <br>

                               <img src="resources/samsung.jpg" style="width: 200px; height: 200px" alt=""/>
                           </div>
                           <div id="conten22">
                               <br><br>
                               <h2>10 điện thoại Samsung đáng mua nhất tháng 12, giảm giá ngon, tặng sạc dự phòng, Galaxy Fit e...</h2>
                               <a href="https://www.thegioididong.com/tin-tuc/dien-thoai-samsung-giam-gia-thang-moi-1224222" style="padding: 20px; color: black; text-decoration: none;">
                                   Mùa mua sắm cuối năm, tranh thủ rinh ngay những mẫu điện thoại Samsung chính hãng đang có nhiều ưu đãi cực tốt. Không chỉ giảm giá còn tặng thêm quà như phiếu mua hàng, vòng đeo tay thông minh, sạc dự phòng Samsung...
                               </a>
                           </div>
                       </div>
                </div>
                
                <div id="conten">
                       <div id="conten1"></div>
                       <div class="conten2">
                           <div id="conten21">
                               <br>
                               <br>

                               <img src="resources/cuocduaso.jfif" style="width: 200px; height: 200px" alt=""/>
                           </div>
                           <div id="conten22">
                               <br><br>
                               <h2>Cuộc đua số 2019 - 2020 chính thức khởi động, công bố giải thưởng 2,2 tỷ đồng</h2>
                               <a href="https://ictnews.vn/cntt/cuoc-dua-so-2019-2020-chinh-thuc-khoi-dong-cong-bo-giai-thuong-2-2-ty-dong-191398.ict" style="padding: 20px; color: black; text-decoration: none;">
                                  Ngày 10/10/2019, FPT và VTV chính thức phát động cuộc thi lập trình xe tự hành quốc tế - Cuộc đua số mùa 2019 - 2020 với tổng giá trị giải thưởng hơn 2,2 tỷ đồng. Năm nay, cuộc thi dự kiến bổ sung 2 điểm thi vòng loại  quốc tế.
                               </a>
                           </div>
                       </div>
                </div>
                
                <div id="conten">
                       <div id="conten1"></div>
                       <div class="conten2">
                           <div id="conten21">
                               <br>
                               <br>

                               <img src="resources/acm.png" style="width: 200px; height: 200px" alt=""/>
                           </div>
                           <div id="conten22">
                               <br><br>
                               <h2>Tin tức Olympic / ACM ICPC Asia Danang 2019</h2>
                               <a href="http://www.olp.vn/tin-tuc/olympic-acm" style="padding: 20px; color: black; text-decoration: none;">
                                   Chào mừng các Đội tuyển, các Trường đến với Đại học Bách Khoa, Đại học Đà Nẵng tham dự OLP'19, Kỳ thi PROCON và Kỳ thi ICPC Asia Đà Nẵng từ 3-7/12/2019!
                               </a>
                           </div>
                       </div>
                </div>
                
                <div id="conten">
                       <div id="conten1"></div>
                       <div class="conten2">
                           <div id="conten21">
                               <br>
                               <br>

                               <img src="resources/zalo.jpg" style="width: 200px; height: 200px" alt=""/>
                           </div>
                           <div id="conten22">
                               <br><br>
                               <h2>Zalo tái khởi động cuộc thi trí tuệ nhân tạo lớn nhất Việt Nam</h2>
                               <a href="https://news.zing.vn/zalo-tai-khoi-dong-cuoc-thi-tri-tue-nhan-tao-lon-nhat-viet-nam-post1000273.html" style="padding: 20px; color: black; text-decoration: none;">
                                   Cổ vũ nghiên cứu, thực hành trí tuệ nhân tạo ở Việt Nam, Zalo AI Challenge 2019 trở lại với các đề thi được làm mới hoàn toàn, thực tiễn, bắt trend thế giới và giải thuởng lớn
                               </a>
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
                    <a href="" style="color: white">Privacy & Security</a> | <a href="" style="color: white">Terms of Use</a> |
                    <a href="" style="color: white">Trademarks</a> | <a href="" style="color: white">Legal</a>
                </div>
                <div style="width: 20%; height: 100%;float: left; text-align: end">
                </div>
            </div>

            <script src="Views/script/detectSQLinjection.js"></script>
    </body>
</html>
