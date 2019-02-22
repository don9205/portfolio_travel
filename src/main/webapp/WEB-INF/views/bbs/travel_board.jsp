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
	* {
	margin:0 auto;
	}
	
	.search {
	text-align:center;
	}
	
</style>
</head>
<body>
	<table border="1px solid black">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>글쓴이</td>
			<td>추천</td>
			<td>조회수</td>
			<td>날짜</td>
		</tr>
	</table>
	<form method="post">
	<div class="search">
		<select>
			<option>제목</option>
			<option>글쓴이</option>
			<option>번호</option>
		</select>
		<!-- from 데이터베이ㅡ where id like concat('%김%'); 
		%김, 김%, %김% => ~김, 김~ ~김~ 
		-->
		<input type="text" placeholder="검색어를 입력해주세요." name="search">
		<button>검색</button> 
	</div>
	</form>
	<a href="<%=request.getContextPath()%>/bbs/travel_board_register"><button>게시글 등록</button></a>
</body>
</html>