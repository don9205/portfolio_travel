<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/main.css"">
<html>
<head>
<meta charset="UTF-8">
<title>여행 게시판</title>
<style>
#pagination {
	display: table;
	margin: 10px auto;
}

.board_table {
	margin: 10px auto;
}

.form-inline {
	display: table;
	margin: 10px auto;
}
</style>
</head>
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
					href="<%=request.getContextPath()%>/bbs/travel_board"><button class="btn btn-default">여행게시판</button></a></li>
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
						<a class="nav-item nav-link" href="#"><button class="btn btn-warning">마이페이지</button></a>

					</c:if></li>
				<li><c:if test="${user == null}">
						<a class="nav-item nav-link"
							href="<%=request.getContextPath()%>/member/register"><button
								class="btn btn-success">회원가입</button></a>
					</c:if></li>
			</ul>
		</div>
	</nav>



	<table class="table table-hover">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>글쓴이</td>
			<td>추천</td>
			<td>조회수</td>
			<td>날짜</td>
		</tr>

		<c:forEach items="${list}" var="list">
			<tr>
				<td>${list.num}</td>
				<td><a
					href="<%= request.getContextPath()%>/bbs/travel_board_detail?num=${list.num}">${list.title}</a></td>
				<td>${list.id}</td>
				<td>${list.recommend}</td>
				<td>${list.view}</td>
				<td>${list.registered_date}</td>
			</tr>
		</c:forEach>

	</table>
	<form name="searchForm" method="get" class="form-inline">
		<div class="form-group search">
			<select name="type" class="form-control">
				<option value="0"
					<c:if test="${pageMaker.criteria.type == 0 }">selected</c:if>>제목</option>
				<option value="1"
					<c:if test="${pageMaker.criteria.type == 1 }">selected</c:if>>글쓴이</option>
				<option value="2"
					<c:if test="${pageMaker.criteria.type == 2 }">selected</c:if>>번호</option>
			</select>
			<!-- from 데이터베이ㅡ where id like concat('%김%'); 
		%김, 김%, %김% => ~김, 김~ ~김~ 
		-->
			<input type="text" placeholder="검색어를 입력해주세요." name="search"
				value="${pageMaker.criteria.search }" class="form-control col-xs">
			<input type="submit" value="검색" class="btn btn-primary">
		</div>
	</form>

	<%-- 페이징처리 시작 --%>

	<div id="pagination">

		<ul class="pagination">
			<li
				class="page-item <c:if test="${!(pageMaker.prev)}">disabled</c:if>">
				<a class="page-link"
				href="<%=request.getContextPath() %>/bbs/travel_board?page=${pageMaker.startPage-1}">Prev</a>
			</li>

			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
				var="i">
				<li
					class="page-item <c:if test="${pageMaker.criteria.page == i}">active</c:if>">
					<a class="page-link"
					href="<%=request.getContextPath()%>/bbs/travel_board?page=${i}">${i}</a>
				</li>
			</c:forEach>

			<li
				class="page-item <c:if test="${!(pageMaker.next)}">disabled</c:if>">
				<a class="page-link"
				href="<%=request.getContextPath() %>/bbs/travel_board?page=${pageMaker.endPage+1}">Next</a>
			</li>
		</ul>
	</div>

	<%-- 페이징처리 끝 --%>



	<a href="<%=request.getContextPath()%>/"><button
			class="btn btn-info">메인으로 이동</button></a>

	<a href="<%=request.getContextPath()%>/bbs/travel_board_register"><button
			class="btn btn-primary float-right">게시글 등록</button></a>


</body>
</html>