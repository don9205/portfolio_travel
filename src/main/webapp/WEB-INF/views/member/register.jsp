<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="//code.jquery.com/jquery-3.3.1.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/validate.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<style>

* {
	font-size: 20px;
	font-weight:bold;	
}



.member {
	margin: 20px auto;
	text-align: center;
	font-size:20px;
}

.w3-btn w3-blue
 {
	
	display:inline-block;
}

.w3-btn w3-indigo {
	display:inline-block;
}


label.error {
	color: red;
	display: block;
}
</style>
</head>
<body>
	<div class="member">회원가입</div>
	<form method="post"
		action="<%=request.getContextPath()%>/member/register" id="myform" class="w3-container">

				<p><label class="w3-text-blue">이 름</label>
				<input type="text" name="name" class="w3-input w3-border"></p>

				<p><label class="w3-text-blue">아 이 디</label>
				<input type="text" name="id" class="w3-input w3-border"></p>
			
				<p><label class="w3-text-blue">비 밀 번 호</label>
				<input type="password" id="pw" name="pw" class="w3-input w3-border"></p>
				
				<p><label class="w3-text-blue">비 밀 번 호 확인</label>
				<input type="password" id="pwc" name="pwc" class="w3-input w3-border"></p>
	
				<p><label class="w3-text-blue">성 별</label></p>
				<label for="male">남 성</label> <input type="radio"
					name="gender" value="male"> <label for="female">여 성</label>
					<input type="radio" name="gender" value="female">
				
				<p><label class="w3-text-blue">이 메 일</label>
				<input type="email" name="email" id="email" class="w3-input w3-border"></p>
				
				
				<button type="submit" class="w3-btn w3-blue">회원가입</button>
				
			
		
	</form>
	
	<a href="<%=request.getContextPath()%>/"><button  class="w3-btn w3-indigo">메인으로 돌아가기</button></a>
</body>
<script type="text/javascript">
	$(document).ready(function() {
			
			var pw = $('#pw');
			var pwc = $('#pwc');
			$('#pwc').change(function() {
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