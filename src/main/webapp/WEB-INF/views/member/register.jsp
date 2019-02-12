<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="//code.jquery.com/jquery-3.3.1.js"></script>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
	<div>회원가입</div>
	<form method="post" action="<%=request.getContextPath()%>/member/register">
	<table border="1px solid black">
		<tr>
			<td>이름</td>
			<td><input type="text"></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id"></td>
			<td><button id="btnOk">중복확인</button>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" id="pw" name="pw"></td>
		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td><input type="password" id="pwc"></td>
			<td><button id="btnPwOk">비밀번호 확인</button>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				<label for="male">남성</label> <input type="radio" name="gender" value="male">
				<label for="female">여성</label> <input type="radio" name="gender" value="female">
			</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="email" name="email" id="email1">@
			<select id="email2">
				<option>com</option>
				<option>net</option>
			</select>
			</td>
		</tr>
		<tr>
			<td><button type="submit">회원가입</button></td>
			<td><a href="<%=request.getContextPath()%>/">메인으로 돌아가기</a></td>
		</tr>
	</table>
	</form>
</body>
<script type="text/javascript">
	$(document).ready(function() {
			
			var pw = $('#pw');
			var pwc = $('#pwc');
			$('#btnPwOk').click(function() {
				console.log(pw);
				if(pw.val().length == 0 || pw.val() != pwc.val()) {
					alert("비밀번호가 입력이 안되어있거나 불일치합니다.");
					return false;
				}else
					alert("비밀번호가 일치합니다.");
					return true;

		});
	
	});
</script>
</html>