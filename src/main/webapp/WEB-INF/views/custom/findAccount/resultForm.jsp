<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Find My Id - yourplace</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/user-register.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/user-register-style.css" />">
<body class="bg-primary">
<%@ include file="../header.jsp" %>
	<!--body-->
	<!-- Main Body -->
	<div
		style="flex-direction: row; display: flex; justify-content: center; background-color: white; margin-top: 100px;">
		<!-- header 가 100px 이라 margin-top = header height-->
		<div class="h_center" id="test_body"
			style="width: 1160px; height: 100%">
			<div style="position: absolute; width: 100%; height: 100%"></div>
			<div id="main" class="h_column_center"
				style="width: 100%; margin-top: 50px; margin-bottom: 200px">
				<div class="h_column_center" style="margin-top: 20px">
					<p
						style="font-size: 32px; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.31; letter-spacing: -0.3px; text-align: center; color: #1b1d1f;">
						아이디 찾기</p>
				</div>
				<c:choose>
				<!-- 서버로부터 전달 받은 아이디가 있다면 전달받은 정보를 보여준다. -->
					<c:when test="${userId != null}">
						<div id="main_vue" class="h_column_center"
							style="width: 100%; margin-top: 30px; margin-bottom: 200px"
							v-cloak>
							<div
								style="width: 580px; border-radius: 10px; border: solid 1px #dfe2e7; background-color: #ffffff; padding: 40px 50px;">
								<div class="h_column_center" style="margin: 10px 10px">
									<p align="center">
										가입하신 날짜는<strong>${userRegDate}</strong> 이며,<br /> 가입하신 아이디는 <strong>${userId}</strong> 입니다.
									</p>
								</div>
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<div id="main_vue" class="h_column_center"
							style="width: 100%; margin-top: 30px; margin-bottom: 200px"
							v-cloak>
							<div
								style="width: 580px; border-radius: 10px; border: solid 1px #dfe2e7; background-color: #ffffff; padding: 40px 50px;">
								<div class="h_column_center" style="margin: 10px 10px">
									<p align="center">
										입력하신 번호와 일치하는 아이디가 없습니다.
									</p>
								</div>
							</div>
						</div>
					</c:otherwise>
				</c:choose>

			</div>
		</div>
	</div>
	<%@ include file="../footer.jsp" %>
</body>
</html>