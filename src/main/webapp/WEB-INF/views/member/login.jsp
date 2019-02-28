<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<script src="//code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
</head>
<style>
	
	body {
	background-color: rgb(242, 251, 255);
	text-align:center;
	}
	
	.form-group .imagebox {
	width:300px;

	}
	
	.form-horizontal .loginbox {
	background-color: rgb(242, 251, 255);
	width:300px;
	margin:0 auto;
	}
</style>
<body>
	<div class="form-group">
		<a href="<%=request.getContextPath()%>/"><img src="<%=request.getContextPath()%>/resources/image/logo.jpg" class="imagebox"></a>
	</div>
	<form method="post" action="<%=request.getContextPath()%>/member/login"
		class="form-horizontal">
		

					
		<div class="loginbox">
		<div class="form-group">
			<p>
				<input type="text" name="id"
					placeholder="아이디를 입력해주세요." class="form-control">
			</p>
		</div>
		<div class="form-group">
			<p>
				<input type="password" name="pw" 
					placeholder="비밀번호를 입력하세요." class="form-control">
			</p>
		</div>
		
	
		
		<button type="submit" class="btn btn-primary">로그인</button>
		</div>

	</form>




</body>
</html>