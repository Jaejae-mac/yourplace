<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 세션에 아이디 값이 존재 한다면 마이페이지를 불러주어라. -->
	<c:if test="${userId != null}">
		MY Page - ${userId }		
	</c:if>
</body>
</html>