<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
<title>password?</title>
<style>
	.container{width:520px;	}
	input{margin-bottom:10px;}
</style>

</head>
<body>
	<div class="container">
		<form class="form-signin" action="findPwdProc" method="post">
			<h2 class="form-signin-heading">비밀번호 찾기</h2>
			<input type="text" class="form-control" placeholder="이메일"	autofocus name="email"> 
			<input type="text" class="form-control" placeholder="전화번호(-없이)" name="phone">
			<button class="btn btn-lg btn-primary btn-block" type="submit">비밀번호 찾기</button>
		</form>
	</div>
</body>
</html>
