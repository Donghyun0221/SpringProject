<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<!DOCTYPE html>
<html>
<head>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap1.css"
	rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.bi {
	display: inline-block;
	width: 1rem;
	height: 1rem;
}

@media ( min-width : 768px) {
	.sidebar .offcanvas-lg {
		position: -webkit-sticky;
		position: sticky;
		top: 48px;
	}
	.navbar-search {
		display: block;
	}
}

.sidebar .nav-link {
	font-size: .875rem;
	font-weight: 500;
}

.sidebar .nav-link.active {
	color: #2470dc;
}

.sidebar-heading {
	font-size: .75rem;
}

.navbar-brand {
	padding-top: .75rem;
	padding-bottom: .75rem;
	background-color: rgba(0, 0, 0, .25);
	box-shadow: inset -1px 0 0 rgba(0, 0, 0, .25);
}

.navbar .form-control {
	padding: .75rem 1rem;
}
</style>
<body>
	<h2 style="text-align: center;">뉴스 기사</h2>
	<div class="table-responsive small">
		<table class="table table-striped table-sm"
			style="text-align: center;">
			<thead>
				<tr>
					<th scope="col">뉴스 제목</th>
					<th scope="col">뉴스 링크</th>
					<th scope="col">뉴스 출처 및 날짜</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${newsList}" var="news">
					<tr>
						<td>${news.title}</td>
						<td><a href="${news.href}" target="_blank">링크</a></td>
						<td>${news.datencite}</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
</body>
</html>