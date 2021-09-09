<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.jsdelivr.net/npm/vue"></script>
<link rel="stylesheet"
	href="<c:url value="/resources/css/sample.css" />" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<title>Login</title>
<style>
#login_host, #login_guest, #login_kakao {
	display: none;
}

.login_host_lb, .login_guest_lb {
	font-size: 18px;
	font-weight: 500;
	font-stretch: normal;
	font-style: normal;
	line-height: 1.38;
	letter-spacing: -0.1px;
	text-align: center;
	color: lightslategray;
	width: 100%;
	cursor: pointer;
}

.login_kakao {
	color: darkslategray;
	font-size: 18px;
	font-weight: 500;
	font-stretch: normal;
	font-style: normal;
	line-height: 1.38;
	letter-spacing: -0.1px;
	text-align: center;
	width: 100%;
	cursor: pointer;
}
</style>

</head>
<body>

	<!-- Header -->
	<!-- Header End -->
	<!-- Main Body -->
	<div
		style="flex-direction: row; display: flex; justify-content: center; background-color: azure; margin-top: 100px">
		<!-- header 가 100px 이라 margin-top = header height-->
		<div class="h_center" id="test_body"
			style="width: 1160px; height: 100%; padding-top: 100px;">
			<div
				style="position: absolute; min-width: 300px; padding-top: 40px; height: 100%;"></div>

			<div id="main" class="h_column_center"
				style="width: 100%; margin-top: 50px; margin-bottom: 200px;">

				<div class="h_column_center"
					style="width: 580px; border-radius: 10px; border: solid 1px #dfe2e7; background-color: #ffffff; padding: 40px 50px;">
					<div class="h_column_center"
						style="margin-bottom: 72px; width: 100%;">
						<img src="<c:url value="/resources/img/logo_examp.png" />"
							style="width: 150px; height: 38px; object-fit: contain;" />
					</div>

					<!-- Login -->
					<div style="width: 100%; padding-right: 40px; padding-left: 40px;">

						<!-- id 입력 -->
						<form id="form_login" method="POST">
							<input type="hidden" name="_token"
								value="CO5NSkoOWiPrEihilmn86B2BXu2M6ulfg3KoaUuk">
							<div class="input_container2 bottom"
								style="width: 480px; margin-left: 50px;"
								v-bind:class="{'focus':idfocus===true}">
								<input type="id" placeholder="아이디" value="" id="id" name="id"
									v-model="id" required>
								<div class="delete" v-show="id.length > 0" v-on:click="id"= ''">
									<img
										src="https://s3.hourplace.co.kr/web/images/icon/round_delete_g.svg"
										style="width: 16px; height: 16px;" />
								</div>
							</div>

							<!-- pw 입력 -->
							<div class="input_container2 bottom"
								style="width: 480px; margin-top: 10px; margin-left: 50px;"
								v-bind:class="{'focus':passwordfocus===true}">
								<input type="password" placeholder="비밀번호" value="" id="password"
									name="password" v-model="password" required>
								<div class="delete" style="margin-left: 50px;"
									v-show="password.length > 0" v-on:click="password = ''">
									<img
										src="https://s3.hourplace.co.kr/web/images/icon/round_delete_g.svg"
										style="width: 16px; height: 16px;" />
								</div>
							</div>


							<!-- 로그인 버튼 -->
							<!-- Login v-on:click="login()" -->
							<div
								style="margin-top: 40px; height: 52px; border-radius: 8px; background-color: var(- -blue-020); display: flex; flex-direction: column; align-items: center; justify-content: center; cursor: pointer; background: paleturquoise;">
								<label for="login_guest" class="login_guest_lb">로그인</label> <input
									type="button" id="login_guest" onclick="login_guest_do()">
							</div>

							<div
								style="margin-top: 20px; height: 52px; border-radius: 8px; background-color: var(- -blue-020); display: flex; flex-direction: column; align-items: center; justify-content: center; cursor: pointer; background: paleturquoise;">
								<label for="login_host" class="login_host_lb">호스트로 로그인</label> <input
									type="button" id="login_host" onclick="loginHostHdo()">

							</div>

							<div
								style="margin-top: 20px; height: 52px; border-radius: 8px; background-color: var(- -blue-020); display: flex; flex-direction: column; align-items: center; justify-content: center; cursor: pointer; background: yellow">
								<label for="login_kakao" class="login_kakao">카카오 로그인</label> <input
									type="button" id="login_kakao" onclick="loginGuestKakaoDo()">
								<!-- <img src="img/logo/kakao_login_medium_narrow copy.png" style="width: 100%; height: 100%;" /> -->
							</div>

						</form>
					</div>
					<!-- 로그인 끝 -->


					<!-- 아이디, 비밀번호 찾기, 회원가입-->
					<div style="margin-top: 20px;">
						<!-- 아이디 찾기 : '/find/account.do '-->
						<!-- original : "window.location.href='/password/email'" -->
						<div
							style="display: flex; flex-direction: row; align-items: center; justify-content: center">
							<p
								style="margin-left: 8px; margin-right: 8px; font-size: 12px; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.17; letter-spacing: normal; color: var(- -grey-050); cursor: pointer;"
								onclick="window.location.href='findaccount.html'">아이디 찾기</p>
							<div
								style="width: 10px; height: 1px; transform: rotate(90deg); background-color: var(- -grey-020);"></div>

							<!-- original: "window.location.href='/service'" -->
							<!-- <p style="margin-left: 8px; margin-right: 8px;font-size: 12px;font-weight: 500;font-stretch: normal;font-style: normal;line-height: 1.17;letter-spacing: normal;color: var(--grey-050); cursor: pointer;"
                                onclick="window.location.href='service.html'">
                                    고객센터
                                </p> -->
							<p
								style="margin-left: 8px; margin-right: 8px; font-size: 12px; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.17; letter-spacing: normal; color: var(- -grey-050); cursor: pointer;"
								onclick="window.location.href='/findpassword.html'">비밀번호 찾기
							</p>
							<div
								style="width: 10px; height: 1px; transform: rotate(90deg); background-color: var(- -grey-020);"></div>

							<!-- original : "window.location.href='/register'" -->
							<p
								style="margin-left: 8px; margin-right: 8px; font-size: 12px; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.17; letter-spacing: normal; text-align: right; color: var(- -blue-030); cursor: pointer;"
								onclick="window.location.href='register.html'">회원가입</p>
						</div>
					</div>

					<div style="height: 110px;"></div>

					<!-- 마무리 문구 -->
					<div
						style="width: 100%; display: flex; flex-direction: row; justify-content: center; border-bottom: 40px;">
						<p
							style="font-size: 16px; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.38; letter-spacing: -0.1px; text-align: center; color: var(- -grey-030);">
							내가 찾던 촬영장소, 모두 여기에.</p>
					</div>

				</div>

			</div>

		</div>
	</div>
	<!-- main 끝 -->

	<!-- Footer -->
	<!-- Footer 끝 -->

	<!-- script -->

	<!--input 태그의 아이디와 온클릭 속성에 지정된 함수명이 같으면 안된다.-->
	<script>
		function login_guest_do() {
			console.log("guest btn click");
			
		}
		function loginHostHdo() {
			console.log("host btn click");
			$("#form_login").attr("action", "/login.hdo").submit();
		}
		function loginGuestKakaoDo() {
			console.log("kakao btn click");
			
		}
	</script>
</body>
</html>