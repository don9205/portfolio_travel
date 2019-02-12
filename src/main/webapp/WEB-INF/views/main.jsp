<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>메인 페이지</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/main.css"">
</head>
<body>
	<div class="top-up">
		메 인 페 이 지
	<div class="log-box">
		<a href="<%=request.getContextPath()%>/member/login">로그인</a>
		<a href="<%=request.getContextPath()%>/member/register">회원가입</a>
		<a href="#">마이페이지</a>
	</div>	
	</div>
	<div class="top-down">
		<div class="country in-country"><a href="#">국 내</a></div>
		<div class="country out-country"><a href="#">해 외</a></div>
	</div>
	<div>
		<div>
			<a href="<%=request.getContextPath()%>/bbs/travel_board"">여행게시판</a>
		</div>
	</div>
	<div class="main">
		<div class="main-left"></div>
		<div class="main-middle"></div>
		<div class="main-right"></div>
	</div>
	<div class="bottom">
		@Copyright L
	</div>
	
</body>
</html>
