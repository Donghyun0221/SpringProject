<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
   <link href="${pageContext.request.contextPath}/resources/css/header.css" rel="stylesheet" type="text/css">
</head> 
  <body>
  <div class="b-example-divider"></div>
  <header class="p-3 text-bg-dark">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>
        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="${pageContext.request.contextPath}/home" style="color: white; text-decoration: none; font-size: 40px; margin-left: -300px;">나만의 대시보드</a></li>
        </ul>
         <div class="text-end" style="margin-left: 15px;">
        <c:if test="${sessionScope.login == null }">
          <button type="button" class="btn btn-outline-light me-2" ><a href="${pageContext.request.contextPath}/loginView" style="text-decoration: : none; ">Login</a></button>
          <button type="button" class="btn btn-outline-light me-2"> <a href="${pageContext.request.contextPath}/registView" style="text-decoration: none;">SignUp</a></button>
        </c:if>
        <c:if test="${sessionScope.login != null }">
          <li><a href="#" style="color: white; text-decoration: none; font-size: 20px; text-align: right; border:5px solid">${sessionScope.login.memNm}님</a></li>
          <br>
          <li><a href="${pageContext.request.contextPath}/mydashboard" style="color: white; text-decoration: none; font-size: 20px;  text-align: right; border:5px solid">MyDashBoard</a></li>
          <br>
          <li><a href="${pageContext.request.contextPath}/logoutDo" style="color: white; text-decoration: none; font-size: 20px; text-align: right; border:5px solid">로그아웃</a></li>
			         
         </c:if> 
          </div>
      </div>
    </div>
  </header>
<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
    </body>
        