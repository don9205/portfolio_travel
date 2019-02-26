<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게 시 글</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
</head>
<body>

	<div class="form-group">
		<label for="title">제목:</label> <input type="text" class="form-control"
			id="title" name="title" readonly value="${board.title}">
	</div>
	<div class="form-group">
		<label for="writer">작성자:</label> <input type="text"
			class="form-control" id="id" name="id" readonly
			value="${board.id}">
	</div>
	<div class="form-group">
		<label for="content">내용:</label>
		<textarea class="form-control" id="contents" name="contents" readonly>${board.contents}</textarea>
	</div>
	
		<c:if test="${user.id == board.id}">
		<a href="<%= request.getContextPath()%>/bbs/travel_board_delete?num=${board.num}">
			<button class="btn btn-primary">글 삭제하기</button>
		</a>
	</c:if>
	<c:if test="${user.id == board.id}">
		<a href="<%= request.getContextPath()%>/bbs/travel_board_update?num=${board.num}">
			<button class="btn btn-primary">글 수정하기</button>
		</a>
	</c:if>
	
	<a href="<%= request.getContextPath()%>/bbs/travel_board">
			<button class="btn btn-primary">여행 게시판으로 돌아가기</button>
		</a>
	
	

</body>
</html>