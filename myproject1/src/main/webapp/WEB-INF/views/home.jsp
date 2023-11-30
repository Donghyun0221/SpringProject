<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
   <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css">
</head> 
<body>
	  <%@include file="/WEB-INF/inc/header.jsp" %>    
<main>
	<div class="row" style="display: flex; justify-content: space-between;">
        <div class="container" style="width: 300px; height: 200px; text-align: center;">
        	<img src="${pageContext.request.contextPath}/resources/assets/img/samsung.png" onclick="window.location.href='https://www.samsung.com/sec'" style="width: 250px; height: 200px; margin-top: 80px; ">
    	</div>
        <div class="container" style="width: 300px; height: 200px; text-align: center;"> 
            <img src="${pageContext.request.contextPath}/resources/assets/img/lg.png" onclick="window.location.href='https://www.lge.co.kr/'" style="width: 250px; height: 200px; margin-top: 80px; ">
        </div>
        <div class="container" style="width: 300px; height: 200px; text-align: center;">
            <img src="${pageContext.request.contextPath}/resources/assets/img/skhynix.png" onclick="window.location.href='https://www.skhynix.com/'" style="width: 250px; height: 200px; margin-top: 80px; ">
        </div>
        <div class="container" style="width: 300px; height: 200px; text-align: center;">
            <img src="${pageContext.request.contextPath}/resources/assets/img/poscoholdings.png" onclick="window.location.href='https://www.posco-inc.com:4453/poscoinc/v4/kor/index.jsp'" style="width: 250px; height: 200px; margin-top: 80px; ">
        </div>
    </div>
    	<br>
    	<br>
    <div class="row" style="display: flex; justify-content: space-between;">
        <div class="container" style="width: 300px; height: 200px; text-align: center;">
        	<img src="${pageContext.request.contextPath}/resources/assets/img/kakao.png" onclick="window.location.href='https://www.kakaocorp.com'" style="width: 250px; height: 200px; margin-top: 80px; ">
    	</div>
        <div class="container" style="width: 300px; height: 200px; text-align: center;"> 
            <img src="${pageContext.request.contextPath}/resources/assets/img/hynd.png" onclick="window.location.href='https://www.hyundai.com/kr/ko/e'" style="width: 250px; height: 200px; margin-top: 80px; ">
        </div>
        <div class="container" style="width: 300px; height: 200px; text-align: center;">
            <img src="${pageContext.request.contextPath}/resources/assets/img/naver.png" onclick="window.location.href='https://www.naver.com/'" style="width: 250px; height: 200px; margin-top: 80px; ">
        </div>
        <div class="container" style="width: 300px; height: 200px; text-align: center;">
            <img src="${pageContext.request.contextPath}/resources/assets/img/cell.png" onclick="window.location.href='https://www.celltrionbeauty.com/main'" style="width: 250px; height: 200px; margin-top: 80px; ">
        </div>
    </div>
    	<br>
    	<br>
    	<br>
    <div class="row" style="display: flex; justify-content: space-between;">
        <div class="container" style="width: 300px; height: 200px; text-align: center;">
        	<img src="${pageContext.request.contextPath}/resources/assets/img/ktng.png" onclick="window.location.href='https://www.ktng.com'" style="width: 250px; height: 200px; margin-top: 80px; ">
    	</div>
        <div class="container" style="width: 300px; height: 200px; text-align: center;"> 
            <img src="${pageContext.request.contextPath}/resources/assets/img/kt.jpg" onclick="window.location.href='https://www.kt.com'" style="width: 250px; height: 200px; margin-top: 80px; ">
        </div>
        <div class="container" style="width: 300px; height: 200px; text-align: center;">
            <img src="${pageContext.request.contextPath}/resources/assets/img/koreanair.png" onclick="window.location.href='https://www.koreanair.com'" style="width: 250px; height: 200px; margin-top: 80px; ">
        </div>
        <div class="container" style="width: 300px; height: 200px; text-align: center;">
            <img src="${pageContext.request.contextPath}/resources/assets/img/soil.png" onclick="window.location.href='https://www.s-oil.com/Default.aspx'" style="width: 250px; height: 200px; margin-top: 80px; ">
        </div>
    </div>
</main>	
<br>
<br>
<br>

        <%@include file="/WEB-INF/inc/footer.jsp" %>  
</body>
</html>
