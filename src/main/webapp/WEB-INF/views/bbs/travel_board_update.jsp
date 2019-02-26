<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
</head>
<body>

	<form action="<%=request.getContextPath()%>/bbs/travel_board_update" method="post">
		<input type="hidden" value="${board.num}" name="num">
		<div class="form-group">
			<label for="title">제목:</label> <input type="text"
				class="form-control" id="title" name="title" value="${board.title}">
		</div>
		<div class="form-group">
			<label for="writer">작성자:</label> <input type="text"
				class="form-control" id="id" name="id" value="${board.id}"
				readonly>
		</div>
		<div class="form-group">
			<label for="contents">내용:</label>
			<textarea class="form-control" id="contents" name="contents">${board.contents}</textarea>
		</div>
		<a href="<%= request.getContextPath()%>/bbs/travel_board">
			<button class="btn btn-primary">게시글로 돌아가기</button>
		</a>
		<button class="btn btn-outline-primary">수 정</button>

	</form>

</body>
</html>