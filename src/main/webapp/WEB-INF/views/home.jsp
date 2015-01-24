<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
	<title>Main !</title>
	<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
</head>
<body>
<header>
	<ul>
		<li><a href="join">회원가입</a>
		<c:if test="${empty sessionScope.uid }">
        	<li><a href="<c:url value="login"/>">로그인</a></li>
       	</c:if>
       	<c:if test="${not empty sessionScope.uid }">
        	<li><a href="<c:url value="logoutProc"/>">로그아웃</a></li>
       	</c:if>
	</ul>
</header>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/test/">Home</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
		<li><a href="join">회원가입</a>
		<c:if test="${empty sessionScope.uid }">
        	<li><a href="<c:url value="login"/>">로그인</a></li>
       	</c:if>
       	<c:if test="${not empty sessionScope.uid }">
        	<li><a href="<c:url value="logoutProc"/>">로그아웃</a></li>
       	</c:if>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">
		<c:if test="${empty sessionScope.uid }">
      <div class="starter-template">
        <h1>로그인을 하면 이곳에 정보가 출력됩니다.</h1>
      </div>
      </c:if>
      <c:if test="${not empty sessionScope.uid }">
      <div class="starter-template">
        <h1>지원자의 프로필</h1>
        <ul class="list-group">
		  <li class="list-group-item">이름 : 김종성</li>
		  <li class="list-group-item">나이 : 26세</li>
		  <li class="list-group-item">사는 곳 : 서울시 마포구</li>
		  <li class="list-group-item">연락처 : 010 4449 1116</li>
		</ul>
        
        <h1>사용된 기술</h1>
        <ul class="list-group">
		  <li class="list-group-item">Java8</li>
		  <li class="list-group-item">Tomcat8</li>
		  <li class="list-group-item">mysql</li>
		  <li class="list-group-item">spring framework</li>
		  <li class="list-group-item">mybatis</li>
		  <li class="list-group-item">bootstrap</li>
		  <li class="list-group-item">AWS EC2(ubuntu 14.04)</li>
		  <li class="list-group-item">ftp</li>
		</ul>
        <h1>만들면서...</h1>
        <ul class="list-group">
		  <li class="list-group-item">
		 	기존에 웹어플리케이션 소스를 잘못 보관하는 바람에 지금 작성중인 소스로 AWS에 배포하여 보았습니다.<br />
		 	처음 배포해보면서 수차례 시행착오를 거듭했지만 새로운점을 많이 알 수 있었습니다.<br />
		 	단기간내에 제작하다보니 미흡한 점이 많더라도 재밌게 봐주셨으면 합니다. 감사합니다
		  </li>
		</ul>
      </div>
      </c:if>

    </div>

	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/js/bootstrap.min.js"></script>
</body>
</html>
