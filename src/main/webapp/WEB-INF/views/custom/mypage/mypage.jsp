<%@page import="com.yourplace.custom.login.vo.UserVO" %>
<%@page import="com.yourplace.custom.login.dao.impl.LoginDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/user-register.css" />" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>	
<title>Yourplace MyPage</title>
</head>
<body>
	<!-- 세션에 아이디 값이 존재 한다면 마이페이지를 불러주어라. -->
	<c:if test="${userId != null}"></c:if>
	<!-- Header -->
	<%@ include file="../header.jsp" %>
	<!-- Header End -->
	<div id="main_vue" class="h_column_center" style="min-height: 1000px; margin-top: 100px">
        <div style="width: 1160px;">
            <div style="margin-top: 20px;">
                <p style="font-size: 32px;font-weight: bold;font-stretch: normal;font-style: normal;line-height: 1.31;letter-spacing: -0.3px;text-align: center;color: #1b1d1f;">
                    게스트 프로필
                </p>
            </div>
        </div>
        <div style="margin-top: 50px; width: 100%; height: 1px; background-color: #e7eaee;"></div>
        <div class="h_row" style="margin-top: 60px; margin-bottom: 200px;">
            <div class="h_column_center" style="width: 360px;">
                <div style="width: 360px;border-radius: 10px;border: solid 1px #dfe2e7;background-color: #ffffff;">
                    <div class="h_column_center">
                        <div style="position:relative; margin-top: 50px; width: 120px; height: 120px; border-radius: 60px; overflow:hidden;"
                             onclick="">
                            <img src="https://s3.hourplace.co.kr/web/images/icon/elements_image_empty_guest.png"
                                style="width: 100%; height: 100%; position: absolute;"></div>
                        <p style="padding: 0 20px; margin-top: 20px; font-size: 16px;font-weight: bold;font-stretch: normal;font-style: normal;line-height: 1.38;letter-spacing: -0.1px;text-align: center;color: #1b1d1f;">
                        	${user.userNickName}
                        </p>
                    </div>
                    <div style="margin: 30px 30px 40px;">
                        <div class="h_row_center" style="height: 34px;">
                            <p style="font-size: 16px; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.38; letter-spacing: -0.1px; color: rgb(27, 29, 31);">
                            	상세 정보
                            </p>
                        </div>
                        <div class="h_row_center" style="position: relative; height: 48px;">
                            <p style="font-size: 14px; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.43; letter-spacing: normal; color: #72787f;">
                            	이름
                            </p>
                            <p class="h_ellipsis_1" style="position: absolute; right: 0px; left: 110px; text-align: right; font-size: 14px; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.29; letter-spacing: normal; color: #1b1d1f">
                            	${user.userName}
                            </p>
                        </div>
                        <div class="h_row_center" style="position: relative; height: 48px;">
                            <p style="font-size: 14px; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.43; letter-spacing: normal; color: #72787f;">
                            	이메일
                            </p>
                            <p class="h_ellipsis_1" style="position: absolute; right: 0px; left: 110px; text-align: right; font-size: 14px; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.29; letter-spacing: normal; color: #1b1d1f">
                            	${user.userEmail}
                            </p>
                        </div>
                    </div>
                </div>
                <div onclick="window.location.href='/guest/edit'" class="h_center h_hover_button"
                    style="margin-top: 30px; width: 141px; height: 52px; border-radius: 8px; border: 1px solid rgb(223, 226, 231); cursor: pointer;">
                    <p style="font-size: 16px; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.38; text-align: center; letter-spacing: -0.1px; color: rgb(27, 29, 31);">
                    	프로필 편집
                    </p>
                </div>
                <p onclick="leave_vue.show()" class="h_hover_text" style="margin-top: 30px; text-decoration: underline; font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.33; letter-spacing: normal; text-align: center; color: rgb(27, 29, 31); cursor: pointer;">
                	회원 탈퇴
                </p>
            </div>
            <div style="margin-left: 60px; width: 580px;">
                <p style="font-size: 24px;font-weight: 500;font-stretch: normal;font-style: normal;line-height: 1.33;letter-spacing: -0.3px;color: #1b1d1f;">
                	소개
                </p>
                <p id="Intro" style ="margin-top: 20px; font-size: 16px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.38; letter-spacing: -0.1px; color: rgb(27, 29, 31);">
                    ${user.userIntro}
                </p>
                <div style="margin-top: 40px; height: 1px; background-color: rgb(231, 234, 238);"></div>
                <div style="margin-top: 40px;">
                    <div
                        style="position: relative; height: 34px; display: flex; flex-direction: row; align-items: center; margin-bottom: 10px;">
                        <p style="font-size: 24px; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.33; letter-spacing: -0.3px; color: rgb(27, 29, 31);">
                        	호스트에게 받은 리뷰
                            <label
                                style="font-size: 20px; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 0.7; letter-spacing: -0.67px; text-align: center; color: rgb(36, 111, 248);">
                                1
                            </label>
                        </p>
                        <div style="display: flex; flex-direction: row; align-items: center; position: absolute; right: 0px;">
                            <img src="https://s3.hourplace.co.kr/web/images/icon/review_star.svg"
                                style="width: 24px; height: 24px;">
                            <p style="font-size: 15px; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: -0.1px; color: rgb(27, 29, 31);">
                                5.0
                            </p>
                        </div>
                    </div>
                    <div style="padding-top: 16px; padding-bottom: 28px;">
                        <div style="margin-top: 18px; display: flex; flex-direction: row; align-items: center;">
                        	<img src="https://s3.hourplace.co.kr/web/images/icon/review_star.svg" style="width: 24px; height: 24px;">
                            <p style="font-size: 15px; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: -0.1px; color: rgb(27, 29, 31);">
                                5
                            </p>
                        </div>
                        <p style="font-size: 16px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.38; letter-spacing: -0.1px; color: rgb(114, 120, 127);">
                        	좋은 촬영 되셨길 바랍니다 :)</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
	<%@ include file="../footer.jsp" %>
	<!-- Footer 끝 -->
	<script>
	 $(document).ready(function(){
		if(document.getElementById('Intro').value == null){
			document.getElementById('Intro').innerHTML='안녕하세요. ${user.userNickName}입니다.'
		} 
	 });
	</script>
</body>
</html>