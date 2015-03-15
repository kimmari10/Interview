<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/resources/ext-theme-crisp-all.css" />">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">

<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="<c:url value="/resources/ext-all.js" />"></script>
<!-- extjs example -->
<script>
	Ext.onReady(function(){
		/* Ext.Msg.alert("타이틀영역","헬로월드"); */
		
		Ext.create('Ext.window.Window',{
			title: 'layer Window sample',
			height: 200,
			width: 400,
			autoShow: true,
			closable : true,
			maximizable : true,
			modal : true,
			resizable : true,
			layout: 'fit',
			bbar: [
			       {xtype: 'button', text:'하단'}
			       ],
			  	fbar: [{type:'button', text:'툴바'}],
			  	lbar:[{xtype:'button', text:'상단'}]
		}).show();
		/* 
		Ext.create('Ext.Viewport',{
			layout : 'border',
			items : [
			         {
			        	collapsible:true,
			        	split : true,
			        	flex : 1,
			        	region : 'west',
			        	border:true
			         },
			         {
			        	 collapsible:true,
			        	 split : true,
			        	 flex : 1,
			        	 region: 'east',
			        	 layout: 'fit',
		        		 border:true
			         },
			         {
			        	 collapsible:true,
			        	 split : true,
			        	 flex : 1,
			        	 region: 'south',
		        		 border:true
			         },
			         {
			        	 collapsible:true,
			        	 split : true,
			        	 flex : 1,
			        	 region: 'center',
		        		 border:true
			         },
			         {
			        	 collapsible:true,
			        	 split : true,
			        	 title:'title',
			        	 flex : 1,
			        	 region: 'north',
		        		 border:true
			         }
			         ]
		})
	}); */
</script>

<title>Home</title>
<style>
	.container{width:520px;	}
	input{margin-bottom:10px;}
	.join{float:left;}
	.find{float:right;}
</style>

</head>
<body>
<!-- 	<div class="container">
		<form class="form-signin" action="loginProc" method="post">
			<h2 class="form-signin-heading">로그인해주세요.</h2>
			<input id="email" type="text" class="form-control" placeholder="이메일"	autofocus name="email">
			<input id="emailcheck" name="emailcheck" type="button" value="아이디 중복체크" />  
			<input id="password" type="password"	class="form-control" placeholder="비밀번호" name="password">
			<button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
		</form>
		<a href="join" class="join">회원가입</a>
	<a href="#" onClick="javascript:window.open('findPwd','findPwd','width=760,height=300,left=100,top=50')" class="find">비밀번호 찾기</a>
	</div>
 -->
<script type="text/javascript">
//<![CDATA[
jQuery( function($) { 

	var re_email = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; // 이메일 검사식
	var re_pwd = /^[a-zA-Z0-9_-]{6,12}$/; // 비밀번호 검사식
	var re_phone = /^[0-9]{10,11}$/; // 전화번호 검사식
	
	var 
		form = $('form'), 
		pwd = $('#password'), 
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
		} 
	});
});
// ]]>
</script>
</body>
</html>
