<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">
<title>password</title>

</head>
<body>
<c:if test="${pwd == null}">정보를 잘못 입력하셨습니다.</c:if>
<c:if test="${pwd != null}">비밀번호 : ${pwd }</c:if>

</body>
</html>
