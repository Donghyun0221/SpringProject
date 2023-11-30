<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
   <link href="${pageContext.request.contextPath}/resources/css/footer.css" rel="stylesheet" type="text/css">
</head> 
<div class="container">
  <footer class="py-5">
    <div class="row">


        <div class="container">
            <footer class="py-5">
                <div class="row">
                    <!-- 첫 번째 열 -->
                    <div class="col-md-4">
                        <h5>Section</h5>
                        <ul class="nav flex-column">
                            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">DashBoard</a></li>
                            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">KeyWord</a></li>
                            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">News</a></li>
                        </ul>
                    </div>
    
                    <!-- 두 번째 열 -->
                    <div class="col-md-4">
                        <form>
                            <h5>출처</h5>
                            <ul class="nav flex-column">
                                <li class="nav-item mb-2"><a href="https://securities.koreainvestment.com/main/Main.jsp" class="nav-link p-0 text-body-secondary">한국 투자증권</a></li>
                                <li class="nav-item mb-2"><a href="https://news.daum.net/" class="nav-link p-0 text-body-secondary">다음 뉴스</a></li>
                                <li class="nav-item mb-2"><a href="https://trends.google.co.kr/trends/" class="nav-link p-0 text-body-secondary">Google Trends</a></li>
                                <li class="nav-item mb-2"><a href="https://trends.google.co.kr/trends/" class="nav-link p-0 text-body-secondary">네이버 랩</a></li>
                            </ul>
                        </form>
                    </div>
    
                    <!-- 세 번째 열 -->
                    <div class="col-md-4">
                        <h5>접속 시간</h5>
                        ${serverTime}
                    </div>
                </div>
            </footer>
        </div>
    </div>    
  </footer>
</div>
        <!-- Bootstrap core JS-->
           <script src="https://code.jquery.com/jquery-3.7.0.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>