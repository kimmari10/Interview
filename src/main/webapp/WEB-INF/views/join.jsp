<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
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
			<input type="text" class="form-control" placeholder="이메일을 입력해주세요"	autofocus name="email"> 
			<input type="password"	class="form-control" placeholder="비밀번호를 입력해주세요" name="password">
			<input type="text" class="form-control" placeholder="전화번호(-없이)를 입력해주세요"	name="phone"> 
			<button class="btn btn-lg btn-primary btn-block" type="submit">회원가입</button>
		</form>
		<a href="/test/" class="home">홈으로</a>
	<a href="#" onClick="javascript:window.open('findPwd','findPwd','width=760,height=300,left=100,top=50')" class="find">비밀번호 찾기</a>
	</div>

</body>
</html>
