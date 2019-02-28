
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>메인 페이지</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.css">

</head>
<style>
.container {
	width: 100%;
	height: 1500px;
}

.container-fluid {
	width: 100%;
	height: 600px;
}

.row {
	margin: 20px auto;
	font-size: 30px;
}

.inline-box {
	display:inline-block;
	margin-top:20px;
	width:500px;
	height:150px;
	
}
</style>
<body>


	<nav class="navbar navbar-expand navbar-light"
		style="background-color: rgb(242, 251, 255);">
		<a class="navbar-brand" href="<%=request.getContextPath()%>/">FestiGo</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<ul class="navbar-nav">

				<li><a class="nav-item nav-link"
					href="<%=request.getContextPath()%>/bbs/travel_board"><button
							class="btn btn-default">여행 게시판</button></a></li>

				<li><a class="nav-item nav-link" href="#"><button
							class="btn btn-default">축제 정보</button></a></li>

				<li><a class="nav-item nav-link" href="#"><button
							class="btn btn-default">베스트 소감</button></a></li>

				<li><a class="nav-item nav-link" href="#"><button
							class="btn btn-default">핫딜</button></a></li>

				<li><a class="nav-item nav-link" href="#"><button
							class="btn btn-default">사진 게시판</button></a></li>

				<li><a class="nav-item nav-link" href="#"><button
							class="btn btn-default">이벤트</button></a></li>

			</ul>

		</div>
		<div class="collapse navbar-collapse justify-content-end"
			id="navbarNavAltMarkup">
			<ul class="nav navbar-nav navbar-right">
				<li><c:if test="${user != null}">
						<a class="nav-item nav-link"
							href="<%=request.getContextPath()%>/signout"><button
								class="btn btn-primary">로그아웃</button></a>
					</c:if></li>
				<li><c:if test="${user == null}">
						<a class="nav-item nav-link"
							href="<%=request.getContextPath()%>/member/login"><button
								class="btn btn-primary">로그인</button></a>
					</c:if></li>
				<li><c:if test="${user == null}">
						<a class="nav-item nav-link" href="#"><button
								class="btn btn-warning">마이페이지</button></a>

					</c:if></li>
				<li><c:if test="${user == null}">
						<a class="nav-item nav-link"
							href="<%=request.getContextPath()%>/member/register"><button
								class="btn btn-success">회원가입</button></a>
					</c:if></li>
			</ul>
		</div>
	</nav>


	<div class="container">

		<div class="container-fluid">

			<div>
				<a href="#">국 내</a>
			</div>

			<div class="row">올해의 축제</div>

			<div class="row">
				<div class="col">
					<span>중부</span>
					<div>
						<img
							src="<%=request.getContextPath()%>/resources/image/chungpyeong2.jpg"
							width="500px" height="300px">
					</div>
					<div>청평 눈꽃 축제</div>

				</div>
				<div class="col">
					<span>남부</span>
					<div>
						<img
							src="<%=request.getContextPath()%>/resources/image/chungpyeong1.jpg"
							width="500px" height="300px">
					</div>
					<div>청평 송어빙어 축제</div>
				</div>

			</div>
		</div>

		<div class="container-fluid">

			<div>
				<a href="#">해 외</a>
			</div>

			<div class="row">올해의 축제</div>

			<div class="row">
				<div class="col">
					<span>유럽</span>
					<div>
						<img
							src="<%=request.getContextPath()%>/resources/image/benechia.jpg"
							width="500px" height="300px">

					</div>
					<div>베네치아 축제</div>
				</div>
				<div class="col">
					<span>아시아</span>
					<div>
						<img
							src="<%=request.getContextPath()%>/resources/image/hukuoka.jpg"
							width="500px" height="300px">
					</div>
					<div>후쿠오카 축제</div>
				</div>

			</div>


			<div class="row">

				<div class="col">
					<a href="#">최근 많이 본 글</a>

					<div class="inline-box"><img src="<%=request.getContextPath()%>/resources/image/logo.jpg" width="300px" height="150px"></div>
					<div class="inline-box"><img src="<%=request.getContextPath()%>/resources/image/logo.jpg" width="300px" height="150px"></div>
				</div>
				
				
				<div class="col">
					<a href="#">추천수가 높은 글</a>
					
					<div class="inline-box"><img src="<%=request.getContextPath()%>/resources/image/logo.jpg" width="300px" height="150px"></div>
					<div class="inline-box"><img src="<%=request.getContextPath()%>/resources/image/logo.jpg" width="300px" height="150px"></div>
				</div>
				

			</div>


		</div>
	</div>





	<div class="bottom">@Copyright L</div>
</body>
</html>
