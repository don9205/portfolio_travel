<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
</head>
<style>
.board-regist {
	margin: 0 auto;
	text-align: center;
	margin-top: 20px;
}

.board-regist>.form-group {
	margin: 0 auto;
	margin-top: 20px;
}
</style>
<body>

	<form action="<%=request.getContextPath()%>/bbs/travel_board_register"
		method="post" enctype="multipart/form-data">
		<div class="board-regist">
			<div class="form-group col-md-6">
				<label for="id">작성자 :</label> <input type="text" readonly name="id"
					class="form-control" value="${user.id}">

			</div>
			<div class="form-group col-md-6">
				<label for="title">제목 :</label> <input type="text" name="title"
					class="form-control">
			</div>

			<div class="form-group col-md-6">
				<label for="contents">내용 :</label>
				<textarea placeholder="내용을 입력해주세요." name="contents"
					class="form-control"></textarea>
			</div>




			<button class="form-group">게시글 등록하기</button>


			<a href="<%=request.getContextPath()%>/bbs/travel_board">게시판으로
				돌아가기</a>


		</div>
	</form>



</body>
</html>