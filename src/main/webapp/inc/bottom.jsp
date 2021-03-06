<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
  
   <!-- footer part start-->
    <footer class="footer-area">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-sm-6 col-md-5">
                    <div class="single-footer-widget">
                        <h4>site map</h4>
                        <ul>
                            <li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
                            <li><a href="<%=request.getContextPath()%>/company/introduce.jsp">회사소개</a></li>
                            <li><a href="#">지점소개</a></li>
                            <li><a href="<%=request.getContextPath()%>/service/service.jsp">서비스소개</a></li>
                            <li><a href="<%=request.getContextPath()%>/eventBoard/list.jsp">이벤트</a></li>
                            <li><a href="<%=request.getContextPath()%>/notice/list.jsp">공지사항</a></li>
                            <li><a href="<%=request.getContextPath()%>/adminsign/signin.jsp">관리자접속</a></li>
                            <li><a href="<%=request.getContextPath()%>/fqa/fqa.jsp">FAQ</a></li>
                            <li><a href="<%=request.getContextPath()%>/qna/list.jsp">Q&A</a></li>
                            <li><a href="<%=request.getContextPath()%>/tip/list.jsp">세탁정보</a></li>
                            <li><a href="<%=request.getContextPath()%>/reviewboards/list.jsp">이용후기</a></li>
                            <li><a href="#">마이페이지</a></li>
                            <li><a href="<%=request.getContextPath()%>/sign/signup.jsp">회원가입</a></li>
                            <li><a href="#">회원탈퇴</a></li>
                        </ul>

                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="single-footer-widget">
                        <h4>Subscribe Newsletter</h4>
                        <div class="form-wrap" id="mc_embed_signup">
                            <form target="_blank"
                                action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                method="get" class="form-inline">
                                <input class="form-control" name="EMAIL" placeholder="Your Email Address"
                                    onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '"
                                    required="" type="email">
                                <button class="click-btn btn btn-default text-uppercase"> <i class="far fa-paper-plane"></i>
                                </button>
                                <div style="position: absolute; left: -5000px;">
                                    <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value=""
                                        type="text">
                                </div>

                                <div class="info"></div>
                            </form>
                        </div>
                        <p>Subscribe our newsletter to get update news and offers</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="single-footer-widget footer_icon">
                        <h4>Contact Us</h4>
                        <p>06129<br>서울특별시 강남구 강남대로428<br>
                                02)3481-1005</p>
                        <span>contact@bbosongdream.com</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="copyright_part_text text-center">
                        <p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="index.jsp" target="_blank">bbosong</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer part end-->

    <!-- jquery plugins here-->
    <script src="<%=request.getContextPath() %>/js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
    <script src="<%=request.getContextPath() %>/js/popper.min.js"></script>
    <!-- bootstrap js -->
    <script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
    <!-- magnific js -->
    <script src="<%=request.getContextPath() %>/js/jquery.magnific-popup.js"></script>
    <!-- swiper js -->
    <script src="<%=request.getContextPath() %>/js/owl.carousel.min.js"></script>
    <!-- masonry js -->
    <script src="<%=request.getContextPath() %>/js/masonry.pkgd.js"></script>
    <!-- masonry js -->
    <script src="<%=request.getContextPath() %>/js/jquery.nice-select.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/gijgo.min.js"></script>
    <!-- contact js -->
    <script src="<%=request.getContextPath() %>/js/jquery.ajaxchimp.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/jquery.form.js"></script>
    <script src="<%=request.getContextPath() %>/js/jquery.validate.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/mail-script.js"></script>
    <script src="<%=request.getContextPath() %>/js/contact.js"></script>
    <!-- custom js -->
    <script src="<%=request.getContextPath() %>/js/custom.js"></script>
</body>

</html>