<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/css/regist.css" rel="stylesheet"/>
</head>
<body>
      <%@include file="/WEB-INF/inc/header.jsp" %> 
      <br>
      <br>   
<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원가입</h4>
        <form method="post" action="<c:url value="/registDo" />" >
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">아이디</label>
              <input type="text" class="form-control" name="id" placeholder="아이디를 입력해주세요(조건없음)" value="" required>
              <div class="invalid-feedback">
                아이디를 입력해주세요.
              </div>
            </div>
          </div>
          <div class="mb-3">
            <label for="email">이메일</label>
            <input type="email" class="form-control" name="addr" placeholder="이메일을 입력해주세요" required>
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
          <div class="mb-3">
            <label for="address">비밀번호</label>
            <input type="text" class="form-control" type="password" name="pw" placeholder="최대한 어렵게~" required>
            <div class="invalid-feedback">
              비밀번호를 입력해주세요.
            </div>
          </div>
          <div class="mb-3">
            <label for="address">이름</label>
            <input type="text" class="form-control" name="nm" placeholder="본인 이름을 작성해주세요" required>
            <div class="invalid-feedback">
              이름을 입력해주세요.
            </div>
          </div>
          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <br>
          <div class="mb-4">
          <button class="but" type="submit">가입 완료</button>
          </div>
        </form>
      </div>
    </div>
  </div>
        <%@include file="/WEB-INF/inc/footer.jsp" %>    
</body>
</html>