<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Password Reset - yourplace</title>
<link href="<c:url value="/resources/custom/css/reset-pw-style.css" />"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="<c:url value="/resources/custom/css/reset-pw-sample.css" />" />

<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />

</head>
<style>
main, #layoutAuthentication_content {
	background-color: rgb(255, 255, 255);
}

.password:focus, .password-confirm:focus {
	outline: none;
}
</style>
<script>
//미완성 항목 :
	//비밀번호 8자~20자 영어 숫자 혼용 해서 입력해야하는 방식 미구현. - 2021/09/13
	$(document).ready(function(){
		var flag = false;
		
		$("#alert-success").hide();
     	$("#alert-danger").hide();
     	$(function () {
            $("input").keyup(function () {
            	
           		//한번이라도 인풋태그를 클릭했다면, 비번확인, 비번 입력란
           		//둘중 하나라도 건드린 것이므로 전송할 수 없게 해야한다.
           		//따라서 상태변수를 거짓으로 변경.
            	flag = false;
            	
                //비밀번호 입력란에 들어 있는 값을 각각 가져온다.
                pwd1 = $("#password").val();
                pwd2 = $("#confirm_password").val();
				
                if (pwd1 === "" && pwd2 === "") {
                    $("#alert-success").hide();
                    $("#alert-danger").hide();
                }
                
                //비밀번호 입력란이 비어있지 않다면.
                if (pwd1 != "" || pwd2 != "") {
                    //비밀번호와 비밀번호 확인란이 일치 한다면
                    if (pwd1 == pwd2) {
                        $("#alert-success").show();
                        $("#alert-danger").hide();
						flag = true;
                    } else {
                        $("#alert-success").hide();
                        $("#alert-danger").show();
						flag = false;
                    }
                }
            });
     	});
            $(document).on('click','#confirm_btn', function(){
            	if(flag){
            		$("#form_findpassword").submit();	
            	}else{
            		swal('', '비밀번호를 정확하게 입력해주세요.', "error");
            	}
            });
     	        
	});
	
</script>
<body class="bg-primary">
	<%@include file="../header.jsp"%>
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
						비밀번호 재설정</p>
				</div>

				<div id="main_vue" class="h_column_center"
					style="width: 100%; margin-top: 50px; margin-bottom: 200px">
					<div
						style="width: 580px; border-radius: 10px; border: solid 1px #dfe2e7; background-color: #ffffff; padding: 40px 50px;">
						<div class="h_column_center">
							<!-- password 재설정 -->
							<form id="form_findpassword" method="POST"
								action="/reset/newpassword.do">
								<div>
									<p
										style="font-style: normal; font-weight: bold; font-size: 16px; line-height: 26px; text-align: left; letter-spacing: -0.1px; color: #1b1d1f; margin-left: 50px;">
										새로 사용할 비밀번호</p>
									<!-- 새로운 비밀번호 입력 -->
									<div class="input_container2 bottom form-control"
										style="width: 480px; margin-left: 50px; margin-top: 15px">
										<input type="password" placeholder="비밀번호" value=""
											name="password" id="password" class="password" required />
										<div class="delete">
											<img
												src="https://s3.hourplace.co.kr/web/images/icon/round_delete_g.svg"
												style="width: 16px; height: 16px" />
										</div>
									</div>
								</div>
								<div>
									<p
										style="font-style: normal; font-weight: bold; font-size: 16px; line-height: 26px; text-align: left; letter-spacing: -0.1px; color: #1b1d1f; margin-left: 50px; margin-top: 10px;">
										새로 사용할 비밀번호 확인</p>
									<!-- 새로운 비밀번호 입력 확인. -->
									<div class="input_container2 bottom form-control"
										style="width: 480px; margin-left: 50px; margin-top: 15px">
										<input type="password" placeholder="비밀번호 확인" value=""
											class="password-confirm" id="confirm_password" required />
										<div class="delete">
											<img
												src="https://s3.hourplace.co.kr/web/images/icon/round_delete_g.svg"
												style="width: 16px; height: 16px" />
										</div>
									</div>
									<!-- 비밀번호 일치 여부 보여주는 DIV -->
									<div class="alert alert-success" id="alert-success"
										style="margin-top: 10px; font-size: 13px; margin-left: 50px;">비밀번호가
										일치합니다.</div>
									<div class="alert alert-danger" id="alert-danger"
										style="margin-top: 10px; font-size: 13px; margin-left: 50px;">비밀번호가
										일치하지 않습니다.</div>
								</div>
								<div class="h_center" style="margin-top: 10px">
									<div class="btn btn-light"
										style="margin-top: 30px; width: 124px; border: solid 1px #dfe2e7; cursor: pointer;"
										 id="confirm_btn">
										<p
											style="font-size: 13px; color: darkslategray; margin-bottom: 5px;">
											확인</p>
									</div>
								</div>
								<input type="hidden" name="email" value="${param.email }"/>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<%@include file="../footer.jsp"%>
</html>
