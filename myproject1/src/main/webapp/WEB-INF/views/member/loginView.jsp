<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link href="${pageContext.request.contextPath }/css/login.css"
	rel="stylesheet" />
</head>
 <body class="text-center">
    <!--  html 전체 영역을 지정하는 container -->
    <div id="container">
      <!--  login 폼 영역을 : loginBox -->
      <div id="loginBox">
      
        <!-- 로그인 페이지 타이틀 -->
        <div id="loginBoxTitle">MY ACCOUNT</div>
         <form method="post" action="<c:url value="/loginDo" />" >
        <!-- 아이디, 비번, 버튼 박스 -->
        <div id="inputBox">
          <div class="input-form-box">
          	<span>아이디 </span>
          	<input type="text" name="memId" class="form-control" placeholder="아이디를 입력해주세요" value="${cookie.rememberId.value }"/>
          	
          </div>
          <div class="input-form-box">
          	<span>비밀번호 </span>
          	<input type="password" name="memPw" class="form-control" placeholder="비밀번호를 입력해주세요"/>
            
          </div>
          <div class="form-floating mb-3">
		아이디 기억하기 <input class="form-check-input" id="remember" type="checkbox"
								      ${cookie.rememberId.value==null ? "":"checked" } />
					<input name="fromUrl" type="hidden" value="${fromUrl }" />
		  </div>
          <div class="button-login-box" >
            <button type="submit" class="btn btn-primary btn-xs" style="width:100%">로그인</button>
          </div>
        </div>
        </form>
      </div>
    </div>

    <!-- Bootstrap Bundle with Popper -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->
	<%@include file="/WEB-INF/inc/footer.jsp" %>    
  </body>
</html>