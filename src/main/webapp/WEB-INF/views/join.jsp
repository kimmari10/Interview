<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
<title>JOIN !</title>
<style>
	.container{width:520px;	}
	input{margin-bottom:10px;}
	.home{float:left;}
	.find{float:right;}
</style>
</head>
<body>
	<div class="container">
		<form class="form-signin" action="joinProc" method="post">
			<h2 class="form-signin-heading">가입할 정보를 입력해주세요.</h2>
			<input id="email" type="text" class="form-control" placeholder="이메일을 입력해주세요"	autofocus name="email"> 
			<input id="password" type="password"	class="form-control" placeholder="비밀번호를 입력해주세요(6-12자)" name="password">
			<input id="phone" type="text" class="form-control" placeholder="전화번호(-없이)를 입력해주세요"	name="phone"> 
			<button class="btn btn-lg btn-primary btn-block" type="submit">회원가입</button>
		</form>
		<a href="/test/" class="home">홈으로</a>
	<a href="#" onClick="javascript:window.open('findPwd','findPwd','width=760,height=300,left=100,top=50')" class="find">비밀번호 찾기</a>
	</div>
	
<script type="text/javascript">
//<![CDATA[
jQuery( function($) { 

	var re_email = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; // 이메일 검사식
	var re_pwd = /^[a-zA-Z0-9_-]{6,12}$/; // 비밀번호 검사식
	var re_phone = /^[0-9]{10,11}$/; // 전화번호 검사식
	
	var 
		form = $('form'), 
		pwd = $('#password'), 
		phone = $('#phone'),
		email = $('#email'); 
		
	form.submit( function() {
		if(re_pwd.test(pwd.val()) != true) { // 비밀번호 검사
			alert('[PW 입력 오류] 유효한 PW를 입력해 주세요.');
			pwd.focus();
			return false;
		} else if(re_email.test(email.val()) != true) { // 이메일 검사
			alert('[Email 입력 오류] 유효한 이메일 주소를 입력해 주세요.');
			email.focus();
			return false;
		} else if(re_phone.test(phone.val()) != true) { // 전화번호 검사
			alert('[Phone 입력 오류] 유효한 전화번호를 입력해 주세요.');
			phone.focus();
			return false;
		}
	});
});
// ]]>
</script>
</body>
</html>
