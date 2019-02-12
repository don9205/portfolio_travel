<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<div>로그인 페이지</div>
	<form method="post" action="<%=request.getContextPath()%>/member/login">
	<table border="1px solid black">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" placeholder="아이디를 입력해주세요."></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pw" placeholder="비밀번호를 입력하세요."></td>
		</tr>
		<tr>
			<td><button type="submit">로그인</button></td>
			<td><a href="<%=request.getContextPath()%>/">메인으로 돌아가기</a></td>
		</tr>
	</table>
	</form>
</body>
</html>