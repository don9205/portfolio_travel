$(document).ready(function () { 
	$("#myform").validate({
		rules: {
			id: {
				required: true, // 필수항목:입력하지 않으면 실패
				minlength: 4, // 최소 글자수
				regex: /^(?=\w{8,20}$)\w*(\d[A-z]|[A-z]\d)\w*$/
			},
			pw: {
				required: true,
				minlength: 8,
				regex: /^(?=\w{8,20}$)\w*(\d[A-z]|[A-z]\d)\w*$/
			},
			pwc: {
				required: true,
				minlength: 8,
				equalTo: pw
			},
			name: {
				required: true,
				minlength: 2
			},
			email: {
				required: true,
				minlength: 2,
				email: true
			},
			gender: {
				required: true
			},
		},
		//규칙체크 실패시 출력될 메시지
		messages: {
			id: {
				required: "필수로입력하세요",
				minlength: "최소 {0}글자이상이어야 합니다",
				regex: "영문자, 숫자로 이루어져있으며 최소 하나이상 포함"
			},
			pw: {
				required: "필수로입력하세요",
				minlength: "최소 {0}글자이상이어야 합니다",
				regex: "영문자, 숫자로 이루어져있으며 최소 하나이상 포함"
			},
			pwc: {
				required: "필수로입력하세요",
				minlength: "최소 {0}글자이상이어야 합니다",
				equalTo: "비밀번호가 일치하지 않습니다."
			},
			name: {
				required: "필수로입력하세요",
				minlength: "최소 {0}글자이상이어야 합니다"
			},
			email: {
				required: "필수로입력하세요",
				minlength: "최소 {0}글자이상이어야 합니다",
				email: "메일규칙에 어긋납니다"
			},
			gender: {
				required: "성별을 눌러주세요"
			}
		}
	});
	
	$.validator.addMethod(
			"regex",
			function (value, element, regexp) {
				var re = new RegExp(regexp);
				return this.optional(element) || re.test(value);
			},
			"Please check your input."
		);
	
});