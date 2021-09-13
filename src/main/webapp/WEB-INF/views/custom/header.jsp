<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/sample.css" />">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#nav ul.sub").hide();
		$("#nav ul.menu li").click(function() {
			$("ul", this).slideToggle("fast");
		});
	});
</script>
</head>
<body>
	<header>
		<!-- Header -->
		<!-- position fixed 또는 absolute 주고 상단헤더값(height: 100px) 만큼  main 에서 빼주기 -->
		<div class="h_column_center" id="header"
			style="position: fixed; width: 100%; top: 0; background: white; z-index: 1000; -webkit-transform: translateZ(0);"
			xmlns:v-on="http://www.w3.org/1999/xhtml"
			xmlns:v-bind="http://www.w3.org/1999/xhtml">

			<!-- 실제 header 에 포함되는 내용들 -->
			<div class="h_row_center"
				style="position: relative; width: 1160px; height: 100px;">

				<!-- 로고 클릭시, 메인 페이지로 이동. hourplace_v2.userLog('W', '/', 'click', 'tab', 'home');window.location.href='/' -->
				<img src="<c:url value="/resources/img/logo/logo.png" />"
					style="width: 130px; height: 32px; cursor: pointer;"
					onclick="location.href='/home.do'">

				<!-- 모든 장소 보여주기 hourplace_v2.userLog('W', '/', 'click', 'tab', 'all');toggle_category_all() -->
				<div class="h_row_center"
					style="position: absolute; right: 0px; cursor: pointer;">
					<div onclick="toggle_category_all()"
						class="h_center h_header_button"
						style="padding: 0px 13px; height: 50px;">
						<p
							style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.33; letter-spacing: normal; text-align: center; color: rgb(27, 29, 31);">
							모든 장소</p>
					</div>

					<!-- 메인 카테고리 나열은 나중에 이걸로 돌려주면 됨 -->

					<!-- div class="h_center h_header_button" style="padding: 0 13px; height: 40px; margin-left: 8px;"
                    v-on:click="window.location.href='/mc/'+main_category.id" v-for="main_category in main_categories"
                    v-cloak>
                    <p
                        style="font-size: 15px;font-weight: normal;font-stretch: normal;font-style: normal;line-height: 1.33;letter-spacing: normal;text-align: center;color: #1b1d1f;">
                        {{ main_category.title }}
                    </p>
                </-div> -->

					<div class="h_center h_header_button"
						style="padding: 0px 13px; height: 50px; margin-left: 8px; cursor: pointer;">
						<p
							style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.33; letter-spacing: normal; text-align: center; color: rgb(27, 29, 31);">
							가성비 스튜디오</p>
					</div>
					<div class="h_center h_header_button"
						style="padding: 0px 13px; height: 50px; margin-left: 8px; cursor: pointer;">
						<p
							style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.33; letter-spacing: normal; text-align: center; color: rgb(27, 29, 31);">
							신규</p>
					</div>
					<div class="h_center h_header_button"
						style="padding: 0px 13px; height: 50px; margin-left: 8px; cursor: pointer;">
						<p
							style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.33; letter-spacing: normal; text-align: center; color: rgb(27, 29, 31);">
							장르별</p>
					</div>
					<div class="h_center h_header_button"
						style="padding: 0px 13px; height: 50px; margin-left: 8px; cursor: pointer;">
						<p
							style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.33; letter-spacing: normal; text-align: center; color: rgb(27, 29, 31);">
							컨셉별</p>
					</div>
					<div class="h_center h_header_button"
						style="padding: 0px 13px; height: 50px; margin-left: 8px; cursor: pointer;">
						<p
							style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.33; letter-spacing: normal; text-align: center; color: rgb(27, 29, 31);">
							공간별</p>
					</div>

					<div
						style="width: 1px; height: 30px; background-color: rgb(201, 205, 210); margin-right: 10px; margin-left: 20px;">
					</div>

					<c:choose>
						<c:when test="${userType == '0'}">
							<!-- 호스트 페이지로 이동, 장소등록 hourplace_v2.userLog('W', '/place/29464', 'click', 'tab', 'hosting');window.location.href='/info/hosting -->
							<div onclick="logout()"
								class="h_center h_header_button"
								style="padding: 0px 13px; height: 50px; margin-left: 8px; cursor: pointer;">
								<p
									style="font-style: normal; font-weight: normal; font-size: 15px; line-height: 20px; text-align: center; color: rgb(114, 120, 127);">
									로그아웃</p>
							</div>

							<!-- 로그인 기능 show_login() -->
							<div 
								class="h_center h_header_button"
								style="padding: 0px 13px; height: 50px; margin-left: 8px; cursor: pointer;" onclick="location.href='/mypage.do'">
								<p
									style="font-style: normal; font-weight: normal; font-size: 15px; line-height: 20px; text-align: center; color: rgb(114, 120, 127);">
									마이페이지</p>
							</div>
							<!-- 로그인 기능 끝 -->

						</c:when>
						<c:when test="${userType == '1'}">
							<!-- 호스트 페이지로 이동, 장소등록 hourplace_v2.userLog('W', '/place/29464', 'click', 'tab', 'hosting');window.location.href='/info/hosting -->
							<div onclick="window.location.href='hostLogin.html'"
								class="h_center h_header_button"
								style="padding: 0px 13px; height: 50px; margin-left: 8px; cursor: pointer;">
								<p
									style="font-style: normal; font-weight: normal; font-size: 15px; line-height: 20px; text-align: center; color: rgb(114, 120, 127);">
									장소등록</p>
							</div>
							<!-- 호스트 페이지로 이동, 장소등록 hourplace_v2.userLog('W', '/place/29464', 'click', 'tab', 'hosting');window.location.href='/info/hosting -->
							<div onclick="window.location.href='hostLogin.html'"
								class="h_center h_header_button"
								style="padding: 0px 13px; height: 50px; margin-left: 8px; cursor: pointer;">
								<p
									style="font-style: normal; font-weight: normal; font-size: 15px; line-height: 20px; text-align: center; color: rgb(114, 120, 127);">
								로그아웃</p>
							</div>
							<!-- 로그인 기능 show_login() -->
							<div onclick="window.location.href='login.html'"
								class="h_center h_header_button"
								style="padding: 0px 13px; height: 50px; margin-left: 8px; cursor: pointer;">
								<p
									style="font-style: normal; font-weight: normal; font-size: 15px; line-height: 20px; text-align: center; color: rgb(114, 120, 127);">
									마이페이지</p>
							</div>
							<!-- 로그인 기능 끝 -->

						</c:when>
						<c:otherwise>
							<!-- 호스트 페이지로 이동, 장소등록 hourplace_v2.userLog('W', '/place/29464', 'click', 'tab', 'hosting');window.location.href='/info/hosting -->
							<div onclick="window.location.href='hostLogin.html'"
								class="h_center h_header_button"
								style="padding: 0px 13px; height: 50px; margin-left: 8px; cursor: pointer;">
								<p
									style="font-style: normal; font-weight: normal; font-size: 15px; line-height: 20px; text-align: center; color: rgb(114, 120, 127);">
									호스트 로그인</p>
							</div>

							<!-- 로그인 기능 show_login() -->
							<div onclick="location.href='/loginForm.do'"
								class="h_center h_header_button"
								style="padding: 0px 13px; height: 50px; margin-left: 8px; cursor: pointer;">
								<p
									style="font-style: normal; font-weight: normal; font-size: 15px; line-height: 20px; text-align: center; color: rgb(114, 120, 127);">
									게스트 로그인</p>
							</div>
							<!-- 로그인 기능 끝 -->
						</c:otherwise>
					</c:choose>


					<!-- Toggle test 용 마이 페이지 -->
					<div class="h_my_menu"
						style="display: none; z-index: 9999; position: absolute; top: 80px; right: 0; width: 220px; border-radius: 8px; box-shadow: 2px 2px 8px 0 rgba(0, 0, 0, 0.1); border: solid 1px #eff3f5; background-color: #ffffff;">
						<div class="h_row_center h_my_menu_switch_button"
							style="margin-top: 10px; height: 40px; width: 100%; padding-top: 8px; padding-left: 30px; padding-right: 30px;">
							<p class="h_ellipsis_1"
								style="font-size: 15px; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: -0.1px; color: #1b1d1f;">
								{{guest.name}}</p>
							<div style="height: 100%; width: 8px; position: relative;">
								<div
									style="position: absolute; top: 6px; right: 0; width: 5px; height: 5px; background-color: #ff4b3e; border-radius: 2.5px; overflow: hidden;">
								</div>
							</div>
							<img
								src="https://s3.hourplace.co.kr/web/images/icon/chevron_right_b.svg"
								style="width: 16px; height: 16px; position: absolute; right: 30px;">
							<p
								style="padding-left: 30px; font-size: 10px; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.4; letter-spacing: normal; color: #9ea4aa;">
								게스트 계정</p>


							<div
								style="width: 1px; height: 30px; background-color: rgb(201, 205, 210); margin-right: 10px; margin-left: 20px;">
							</div>

							<!-- 검색기능 시작 -->
							<div
								onclick="hourplace_v2.userLog('W', '/place/29464', 'click', 'search');toggle_search_container()"
								class="h_center"
								style="width: 44px; height: 44px; cursor: pointer;">
								<img
									src="https://s3.hourplace.co.kr/web/images/icon/search_b.svg"
									style="width: 24px; padding: 0px 13px; height: 40px; margin-left: 8px;" />
							</div>
							<!-- 검색기능 끝-->


						</div>


					</div>

					<!-- all toggle -->

					<div class="category_all"
						style="position: fixed; top: 100px; left: 0; width: 100%; height: 100%; display: none; z-index: 9999; background-color: rgba(0, 0, 0, 0.2);"
						onclick="toggle_category_all()">
						<div class="h_column_center"
							style="background-color: #FFFFFF; width: 100%; position: relative;">
							<div
								style="padding-top: 10px; padding-bottom: 40px; width: 1160px; display: flex; flex-direction: row;">

								<!-- 가정집 -->
								<!-- 메인 카테고리 시작 -->
								<div v-for="category in categories" style="flex: 1 1 0%;">
									<p class="h_hover_button"
										style="font-size: 20px; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.4; letter-spacing: -0.2px; color: #454b50; padding: 7px 12px 5px 8px; margin-bottom: 10px;"
										v-on:click="click_category_main(category.id)">가정집</p>
									<!-- 상세 카테고리 시작 -->
									<div class="h_hover_button h_row_center"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_main(category.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											전체</p>
									</div>
									<!-- 상세 카테고리 끝 -->
									<!-- 상세 카테고리 시작 -->
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											아파트</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											주택</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											빌라</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											원룸</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											한옥</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											홈오피스</p>
									</div>
								</div>
								<!-- 메인 카테고리 끝 -->


								<!-- 스튜디오 -->
								<!-- 메인 카테고리 시작 -->
								<div v-for="category in categories" style="flex: 1 1 0%;">
									<p class="h_hover_button"
										style="font-size: 20px; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.4; letter-spacing: -0.2px; color: #454b50; padding: 7px 12px 5px 8px; margin-bottom: 10px;"
										v-on:click="click_category_main(category.id)">스튜디오</p>
									<!-- 상세 카테고리 시작 -->
									<div class="h_hover_button h_row_center"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_main(category.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											전체</p>
									</div>
									<!-- 상세 카테고리 끝 -->
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											자연광</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											호리존</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											유튜브</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											원룸</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											단독주택형</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											빈티지</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											키친</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											무대형</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											세트장</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											기타공간</p>
									</div>
								</div>
								<!-- 메인 카테고리 끝 -->


								<!-- 상업공간 -->
								<!-- 메인 카테고리 시작 -->
								<div v-for="category in categories" style="flex: 1 1 0%;">
									<p class="h_hover_button"
										style="font-size: 20px; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.4; letter-spacing: -0.2px; color: #454b50; padding: 7px 12px 5px 8px; margin-bottom: 10px;"
										v-on:click="click_category_main(category.id)">상업공간</p>
									<!-- 상세 카테고리 시작 -->
									<div class="h_hover_button h_row_center"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_main(category.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											전체</p>
									</div>
									<!-- 상세 카테고리 끝 -->
									<!-- 상세 카테고리 시작 -->
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											카페</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											식당</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											바/술집</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											원룸</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											헬스장</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											요가/필라테스</p>
									</div>
								</div>
								<!-- 메인 카테고리 끝 -->

								<!-- 편의시설 -->
								<!-- 메인 카테고리 시작 -->
								<div v-for="category in categories" style="flex: 1 1 0%;">
									<p class="h_hover_button"
										style="font-size: 20px; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.4; letter-spacing: -0.2px; color: #454b50; padding: 7px 12px 5px 8px; margin-bottom: 10px;"
										v-on:click="click_category_main(category.id)">편의시설</p>
									<!-- 상세 카테고리 시작 -->
									<div class="h_hover_button h_row_center"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_main(category.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											전체</p>
									</div>
									<!-- 상세 카테고리 끝 -->
									<!-- 상세 카테고리 시작 -->
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											편의점</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											빨래방</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											헤어샵</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											PC방</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											노래방</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											오락실</p>
									</div>

								</div>
								<!-- 메인 카테고리 끝 -->


								<!-- 문화공간 -->
								<!-- 메인 카테고리 시작 -->
								<div v-for="category in categories" style="flex: 1 1 0%;">
									<p class="h_hover_button"
										style="font-size: 20px; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.4; letter-spacing: -0.2px; color: #454b50; padding: 7px 12px 5px 8px; margin-bottom: 10px;"
										v-on:click="click_category_main(category.id)">문화공간</p>
									<!-- 상세 카테고리 시작 -->
									<div class="h_hover_button h_row_center"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_main(category.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											전체</p>
									</div>
									<!-- 상세 카테고리 끝 -->
									<!-- 상세 카테고리 시작 -->
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											복합문화공간</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											갤러리</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											공방/작업실</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											책방</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											공연장</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											강당</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											강의실</p>
									</div>

								</div>
								<!-- 메인 카테고리 끝 -->


								<!-- 특수공간 -->
								<!-- 메인 카테고리 시작 -->
								<div v-for="category in categories" style="flex: 1 1 0%;">
									<p class="h_hover_button"
										style="font-size: 20px; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.4; letter-spacing: -0.2px; color: #454b50; padding: 7px 12px 5px 8px; margin-bottom: 10px;"
										v-on:click="click_category_main(category.id)">특수공간</p>
									<!-- 상세 카테고리 시작 -->
									<div class="h_hover_button h_row_center"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_main(category.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											전체</p>
									</div>
									<!-- 상세 카테고리 끝 -->
									<!-- 상세 카테고리 시작 -->
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											사무실</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											병원/약국</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											학교</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											학원</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											클럽</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											웨딩</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											호텔펜션</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											기타 특수 공간</p>
									</div>

								</div>
								<!-- 메인 카테고리 끝 -->



								<!-- 대형공간/야외 -->
								<!-- 메인 카테고리 시작 -->
								<div v-for="category in categories" style="flex: 1 1 0%;">
									<p class="h_hover_button"
										style="font-size: 20px; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.4; letter-spacing: -0.2px; color: #454b50; padding: 7px 12px 5px 8px; margin-bottom: 10px;"
										v-on:click="click_category_main(category.id)">대형공간/야외</p>
									<!-- 상세 카테고리 시작 -->
									<div class="h_hover_button h_row_center"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_main(category.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											전체</p>
									</div>
									<!-- 상세 카테고리 끝 -->
									<!-- 상세 카테고리 시작 -->
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											공장</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											창고</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											지하실</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											빈 공간</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											옥상</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											정원</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											캠핑장</p>
									</div>
									<div class="h_hover_button h_row_center"
										v-for="sub in category.subs"
										style="padding-left: 8px; height: 32px; width: 100%; border-radius: 2px;"
										v-on:click="click_category_sub(category.id, sub.id)">
										<p
											style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.6; letter-spacing: normal; color: #454b50;">
											기타 야외 공간</p>
									</div>

								</div>
								<!-- 메인 카테고리 끝 -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- script 시작 -->

	<script>
		var message_id = ''

		function toggle_category_all() {
			if ($('.category_all').css('display') === 'none') {
				close_search_container()

				$('.category_all').show()
				$('body').addClass('modal-open')
			} else {
				close_category_all()
			}
		}

		function close_category_all() {
			$('.category_all').hide()
			$('body').removeClass('modal-open')
		}

		function toggle_search_container() {
			if ($('.search_container').css('display') === 'none') {
				close_category_all()
				$('.search_container').show()
				$('body').addClass('modal-open')
				search_vue.get_recommend()
			} else {
				close_search_container()
			}
		}

		function close_search_container() {
			$('.search_container').hide()
			$('body').removeClass('modal-open')
		}

		function toggle_h_noti() {
			if ($('.h_noti').css('display') === 'none') {
				h_show_popup('.h_noti')
				// $('.h_noti').show()
				close_search_container()
				close_category_all()
			} else {
				h_hide_popup('h_noti')
				// $('.h_noti').hide()
			}
		}
	</script>

	<script>
		var swiper

		$(document).ready(function() {
			swiper = new Swiper('.swiper-container_big_banner', {
				direction : 'vertical',
				mousewheel : true,
				pagination : {
					el : '.swiper-pagination',
					clickable : true,
				},
				autoplay : {
					delay : 5000,
					disableOnInteraction : false,
				},
				loop : true,
			})

			swiper.on('transitionEnd', function() {
				swiper.loopFix()
			})

		})

		function next() {
			swiper.slideNext()
		}

		function prev() {
			swiper.slidePrev()
		}
	</script>

	<script>
		function toggle_h_my_menu() {
			if ($('.h_my_menu').css('display') === 'none') {
				h_show_popup('.h_my_menu')
				// $('.h_my_menu').show()
				close_search_container()
				close_category_all()
			} else {
				h_hide_popup('h_my_menu')
				// $('.h_my_menu').hide()
			}
		}
	</script>
	<!-- logout -->
	<script>
		function logout(){
			location.href="/logout.do";
		}
	</script>
	<!-- script 끝 -->
</body>
</html>