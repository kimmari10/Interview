<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
<title>Home</title>
<style>
	.container{width:520px;	}
	input{margin-bottom:10px;}
	.join{float:left;}
	.find{float:right;}
</style>

</head>
<body>
	<div class="container">
		<form class="form-signin" action="loginProc" method="post">
			<h2 class="form-signin-heading">로그인해주세요.</h2>
			<input type="text" class="form-control" placeholder="이메일"	autofocus name="email"> 
			<input type="password"	class="form-control" placeholder="비밀번호" name="password">
			<button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
		</form>
		<a href="join" class="join">회원가입</a>
	<a href="#" onClick="javascript:window.open('findPwd','findPwd','width=760,height=300,left=100,top=50')" class="find">비밀번호 찾기</a>
	</div>
</body>
</html>
