<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
   <link href="${pageContext.request.contextPath}/resources/css/startReserv.css" rel="stylesheet" type="text/css">
</head>

<body>



<!--헤더 시작-->
<form action="testReservSuccess.do" method="post">


    <!--페이지 이동 테스트-->
    <script>

        function show_login(){
         location.href="login.do"; 
        } 
        
        function show_geustInfo(){
            location.href="FAQBoardGuestRegist.do"
        }
    
        function show_hostInfo(){
            location.href="FAQBoardHost.do"
        }
    
    
        </script> 
            
        <!--끝-->




<!--로고-->
<div style="position: relative; right: 170px;">
    <div class="h_row_center" style="position: relative;width: 1160px;height: 100px; margin:auto;"><img
            src="https://s3.hourplace.co.kr/web/images/icon/logo_b.svg"
            onclick="hourplace_v2.userLog('W', '/place/29464', 'click', 'tab', 'home');window.location.href='/'"
            style="width: 130px; height: 32px; cursor: pointer;">

            <!--모든 장소-->
            <input type="button" style="display: none;" class="allplace" id="allplace"/>
        <div class="h_row_center" style="position: absolute; right: 0px;">
            <div class="h_center h_header_button" style="padding: 0px 13px; height: 40px;">
               <label for="allplace" class="allplace"
                    style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.33; letter-spacing: normal; text-align: center; color: rgb(27, 29, 31);">
                    모든 장소
        </label>

            </div>



<!---->

            <div class="h_center h_header_button" style="padding: 0px 13px; height: 40px; margin-left: 8px;">

                <input type="button" style="display: none;"  class="cheapstudio" id="cheapstudio">
                <label for="cheapstudio"
                    style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.33; letter-spacing: normal; text-align: center; color: rgb(27, 29, 31);">
                    가성비 스튜디오
            </label>


            </div>

<!---->

            <input type="button" style="display:none;" class="newstudio" id="newstudio" />
            <div class="h_center h_header_button" style="padding: 0px 13px; height: 40px; margin-left: 8px;">
                <label for="newstudio"
                    style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.33; letter-spacing: normal; text-align: center; color: rgb(27, 29, 31);">
                    신규
                </label>
            </div>


            <!---->
            <input type="button" style="display:none;" class="genre" id="genre"/>
            <div class="h_center h_header_button" style="padding: 0px 13px; height: 40px; margin-left: 8px;">
                <label for="genre"
                    style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.33; letter-spacing: normal; text-align: center; color: rgb(27, 29, 31);">
                    장르별
            </label>
            </div>
            <!---->
            
            <input type="button" style="display:none;" class="concept" id="concept" />
            <div class="h_center h_header_button" style="padding: 0px 13px; height: 40px; margin-left: 8px;">
                <label for="concept"
                    style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.33; letter-spacing: normal; text-align: center; color: rgb(27, 29, 31);">
                    컨셉별
                </label>
            </div>

            <!---->
            <input type="button" style="display:none;" class="space" id="space" />
            <div class="h_center h_header_button" style="padding: 0px 13px; height: 40px; margin-left: 8px;">
                <label for="space"
                    style="font-size: 15px; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 1.33; letter-spacing: normal; text-align: center; color: rgb(27, 29, 31);">
                    공간별
                </label>
            </div>

            <!---->
            <input type="button" style="display:none;" class="insertspace" id="insertspace"/>
            <div class="h_center h_header_button"
                style="margin-left: 8px; width: 1px; height: 16px; background: rgb(201, 205, 210);">
            </div>
         <div class="h_center h_header_button" style="padding: 0px 13px; height: 40px; margin-left: 8px;">
                <label for="insertspace"
                    style="font-style: normal; font-weight: normal; font-size: 15px; line-height: 20px; text-align: center; color: rgb(114, 120, 127);">
                    장소 등록
        </label>
            </div>

<!--로그인-->
            <input type="button" style="display: none;" onclick="show_login()" class="login" id="login"/>
            <div class="h_center h_header_button"
                style="padding: 0px 13px; height: 40px; margin-left: 8px;">
                <label for="login"
                    style="font-style: normal; font-weight: normal; font-size: 15px; line-height: 20px; text-align: center; color: rgb(114, 120, 127);">
                    로그인
                </label>
            </div>

<!---->

            <div
                style="width: 1px; height: 16px; background-color: rgb(201, 205, 210); margin-right: 10px; margin-left: 20px;">
            </div>
            <div onclick="hourplace_v2.userLog('W', '/place/29464', 'click', 'search');toggle_search_container()"
                class="h_center" style="width: 44px; height: 44px; cursor: pointer;"><img
                    src="https://s3.hourplace.co.kr/web/images/icon/search_b.svg" style="width: 24px; height: 24px;">
            </div>
        </div>
    </div>
    <div style="width: 1160px;">
        <div style="margin-top: 20px;">

            <div style = "padding: 0px 0px 5px 0px;">  

                <!-- (각각 위 오른쪽 아래 왼쪽 - 시계방향) -->
         
         </div>
        </div>
            <p
                style="font-size: 32px; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.31; letter-spacing: -0.3px; text-align: center; color: rgb(27, 29, 31);">
                이용방법
            </p>
        </div>
    </div>







    
        <div data-v-3e4269ab="" class="detail_forms">
            <article data-v-3e4269ab="" class="box_form">
                <div data-v-3e4269ab="" class="heading">
                    <h3 data-v-3e4269ab="">예약 공간</h3> <span data-v-3e4269ab="" class="option"><strong data-v-3e4269ab=""
                            class="txt_price">\10,000</strong> <em data-v-3e4269ab="" class="txt_unit">
                            /시간
                            <!---->
                        </em>
                        <!---->
                    </span>
                </div>
                <div data-v-3e4269ab="" class="space_info_wrap">

                    <div data-v-3e4269ab="" class="info_photo">
                        <h4 data-v-3e4269ab="" class="sp_name">
                            [할인중]80평대형컨셉룸과 호리존,
                            Black Room
                        </h4> <span data-v-3e4269ab="" class="img"><img data-v-3e4269ab=""
                                src="https://moplqfgeemqv2103108.cdn.ntruss.com/service/160445140_5c159c519994c81379d7cfedcdea30c9.jpg?type=m&amp;w=900&amp;h=900&amp;autorotate=true&amp;quality=90"
                                width="140" height="140" alt="Black Room"></span>
                        <div style="position: relative; left: 200px; bottom: 100px;">
                            <p data-v-3e4269ab="">4m(가로) x 5m(세로) x 3m(높이)

                                블랙톤의 다크룸 입니다.<br> 배치되어 있는 소품들은 제거 후 자유롭게 사용 가능합니다.</p>
                        </div>
                    </div>
                    <div style="position: relative; left: auto; bottom: 40px;">
                        <ul data-v-3e4269ab="" class="list_detail">
                            <li data-v-3e4269ab=""><span data-v-3e4269ab="" class="tit">공간유형</span> <span
                                    data-v-3e4269ab="" class="data">
                                    촬영스튜디오
                                    ,
                                    호리존
                                    ,
                                    라이브방송
                                    ,</span></li>
                            <li data-v-3e4269ab=""><span data-v-3e4269ab="" class="tit">예약인원</span> <span
                                    data-v-3e4269ab="" class="data">최소
                                    1명 ~
                                    최대
                                    15명</span></li>
                            <li data-v-3e4269ab=""><span data-v-3e4269ab="" class="tit">추가인원</span> <span
                                    data-v-3e4269ab="" class="data">3명 초과시
                                    5,000원/인</span></li>
                        </ul>
                        <div data-v-3e4269ab="" class="facility_wrap">
                            <ul data-v-3e4269ab="" class="facility_list">
                                <li data-v-3e4269ab=""><i data-v-3e4269ab="" class="sp_icon ico_alchole"></i> <span
                                        data-v-3e4269ab="" class="txt_name">
                                        주류반입
                                        <em data-v-3e4269ab="" class="br">가능</em></span></li>
                                <li data-v-3e4269ab=""><i data-v-3e4269ab="" class="sp_icon ico_table"></i> <span
                                        data-v-3e4269ab="" class="txt_name">
                                        의자/
                                        <em data-v-3e4269ab="" class="br">테이블</em></span></li>
                                <li data-v-3e4269ab=""><i data-v-3e4269ab="" class="sp_icon ico_fittingroom"></i> <span
                                        data-v-3e4269ab="" class="txt_name">
                                        탈의실
                                        <!---->
                                    </span></li>
                                <li data-v-3e4269ab=""><i data-v-3e4269ab="" class="sp_icon ico_food"></i> <span
                                        data-v-3e4269ab="" class="txt_name">
                                        음식물
                                        <em data-v-3e4269ab="" class="br">반입가능</em></span></li>
                                <li data-v-3e4269ab=""><i data-v-3e4269ab="" class="sp_icon ico_toilet"></i> <span
                                        data-v-3e4269ab="" class="txt_name">
                                        내부
                                        <em data-v-3e4269ab="" class="br">화장실</em></span></li>
                                <li data-v-3e4269ab=""><i data-v-3e4269ab="" class="sp_icon ico_nonsmocking"></i> <span
                                        data-v-3e4269ab="" class="txt_name">
                                        금연
                                        <!---->
                                    </span></li>
                                <li data-v-3e4269ab=""><i data-v-3e4269ab="" class="sp_icon ico_parking"></i> <span
                                        data-v-3e4269ab="" class="txt_name">
                                        주차
                                        <!---->
                                    </span></li>
                                <li data-v-3e4269ab=""><i data-v-3e4269ab="" class="sp_icon ico_wifi"></i> <span
                                        data-v-3e4269ab="" class="txt_name">
                                        인터넷/
                                        <em data-v-3e4269ab="" class="br">WIFI</em></span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </article>
            <!---->




            <article data-v-3e4269ab="" class="box_form">
                <div data-v-3e4269ab="" class="heading">
                    <h3 data-v-3e4269ab="">예약정보</h3>
                </div>
                <div data-v-3e4269ab="" class="meetspace-reserve-info">
                    <p data-v-3e4269ab="" class="meetspace-reserve-date">
                        예약날짜
                        <span data-v-3e4269ab="" class="meetspace-reserve-price">
                             
                            <!-- 예약날짜 들어가는 곳 -->
                        ${reserveYear}(년) - ${reserveMonth}(월)- ${reserveDate}(일)
                        </span>
                   
                   
                    </p>
                    
                    <p data-v-3e4269ab="" class="meetspace-reserve-date">
                        예약인원
                        <span data-v-3e4269ab="" class="meetspace-reserve-price"></span>
                	${personNum}명
                    </p>
                </div>
                <!---->
            </article>
     




</div>
<!--예약자 정보 입력-->
            <!---->
            
            <article data-v-3e4269ab="" id="user-info" class="box_form">
                <div data-v-3e4269ab="" class="heading" >
                    <h3 data-v-3e4269ab="">예약자 정보</h3> <span data-v-3e4269ab="" class="option"><span data-v-3e4269ab=""
                            class="txt_required"><span data-v-3e4269ab="" class="ico_required">*</span>
                            필수입력
                        </span></span>
                </div>
                <div data-v-3e4269ab="" class="reserve_person_wrap">
                    <dl data-v-3e4269ab="" class="flex_box">
                        <input type="text" name="reservUserName" class="reservUserName"style="position: relative; left: 85px; top:-1px;"/>
                      <label for="reservUserName" style="position:relative; left:-169px;">
                        예약자</label> *</span></dt>
                        <dd data-v-3e4269ab="" class="flex">
                      
                             
                        </dd>
                    </dl>
                    <dl data-v-3e4269ab="" class="flex_box">
                        <dt data-v-3e4269ab="" class="flex tit"><label data-v-3e4269ab="" for="phone1">연락처</label> <span
                                data-v-3e4269ab="" class="ico_required">*</span></dt>
                        <dd data-v-3e4269ab="" class="flex mobile">
                            <div data-v-3e4269ab="" class="row">
                                <div data-v-3e4269ab="" class="col4">
                                    <div style="position: relative; top:-26px; left: 65px;">
                                    <select id="phone1" name="phone1" title="휴대폰 앞자리">
                                            <option value="010">010</option>
                                            <option value="011">011</option>
                                            <option  value="016">016</option>
                                            <option value="017">017</option>
                                            <option value="018">018</option>
                                            <option value="019">019</option>
                                        </select></div>
                                </div>
                                <div 
                                    style="position: relative; top:-50px; left: 130px;">
                                    <input type="tel" id="phone2" name="phone2" title="휴대폰 중간자리" class="phone2" required="required" maxlength="4"
                                        onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"></div>


                                <div 
                                    style="position: relative; top:-76px; left: 310px;">
                                    <input type="tel" id="phone3" name="phone3" class="phone3" title="휴대폰 뒷자리" required="required" maxlength="4"
                                    
                                        onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"></div>
                            </div>
                        </dd>
                    </dl>
                    <div style="position: relative; top:-60px;">
                        <dl data-v-3e4269ab="" class="flex_box">
                            <dt data-v-3e4269ab="" class="flex tit"><label for="email">이메일</label>
                                <span data-v-3e4269ab="" class="ico_required">*</span></dt>
                            <dd data-v-3e4269ab="" class="flex">
                                <div
                                    style="position: relative; left: 65px; top:-25px;">
                                    <input type="email" id="email" name="email" class="email" placeholder="이메일 주소를 입력해 주세요."></div>
                            </dd>
                        </dl>
                        <dl>
                            <dt ><label for="reservationPurpose">사용목적</label></dt>
                            <dd>
                                <div
                                    style="position: relative; left: 65px; top:-25px;">
                                    <input type="text" id="reservationPurpose" name="reservationPurpose" class="reservationPurpose"
                                        placeholder="촬영, 파티, 모임, 수업 등 공간의 사용 목적을 입력해주세요."></div>
                            </dd>
                        </dl>


                        <dl>
                            <dt><label for="request">요청사항</label>
                            </dt>
                            <dd>
                                <div data-v-3e4269ab="" class="input"><textarea data-v-3e4269ab="" cols="70" rows="10"
                                        id="request" name="request" class="request" placeholder="남기고 싶은말을 적어주세요. (최대 500자)"
                                        maxlength="500"></textarea></div>
                            </dd>
                        </dl>
                    </div>
                    <p data-v-3e4269ab="" class="p_guide normal"><i data-v-3e4269ab="" class="sp_icon ico_alert"></i>
                        예약자 정보로 알림톡과 이메일이 발송됩니다. 정확한 정보인지
                        확인해주세요.
                    </p>
                </div>
            </article>
            <article data-v-3e4269ab="" class="box_form right_fixed reserve_price"
                style="transition: transform 0.5s cubic-bezier(0.39, 0.575, 0.565, 1) 0s; border-bottom: 0px; transform: translateY(0px);">
                <div data-v-3e4269ab="" class="ly_right_wrap">
                    <div data-v-3e4269ab="" class="ly_right_fixed">
                        <div data-v-3e4269ab="" class="heading">
                            <h3 data-v-3e4269ab="">결제 예정금액</h3>
                        </div>
                        <div data-v-3e4269ab="" class="scroll_box">
                            <div data-v-3e4269ab="" class="reserve_price_wrap">
                                <div data-v-3e4269ab="" class="basic_box">
                                    <dl data-v-3e4269ab="" class="info_date">
                           
                                        <dt>예약날짜</dt>
                                  
                                        <dd data-v-3e4269ab=""><span class="line">
                                                <input type="hidden" name="reserveY" id="reserveY" value="${reserveYear}"/>
                                                <input type="hidden" name="reserveM" id="reserveM" value="${reserveMonth }"/>
                                                <input type="hidden" name="reserveD" id="reserveD" value="${reserveDate }"/>
                                                ${reserveYear}(년) - ${reserveMonth}(월) - ${reserveDate }(일)
                                              </span></dd>
                                    </dl>
                                    <dl data-v-3e4269ab="" class="info_date">
                                        <dt data-v-3e4269ab="">예약시간</dt>
                                        <dd data-v-3e4269ab=""><span data-v-3e4269ab="" class="line">
                                           <input type="hidden" name="startTime" id="startTime" value="${startTime}"/>
                                           <input type="hidden" name="endTime" id="endTime" value="${endTime}"/>
                                               ${startTime}:${startTime2 }(시) ~ ${endTime}:${endTime2 }(시)
                                               
                                               </span>
                                            <!---->
                                        </dd>
                                    </dl>
                                    <dl data-v-3e4269ab="" class="info_person">
                                        <dt data-v-3e4269ab="">예약인원</dt>
                                        <dd data-v-3e4269ab="">
                                        <input type="hidden" name="person" id="person" value="${personNum}"/>
                                        
                                        ${personNum }(명)</dd>
                                    </dl>
                                    <dl>
                                        <dt data-v-3e4269ab="" class="blind">합계</dt>
                                        <dd data-v-3e4269ab=""><strong data-v-3e4269ab=""
                                                class="txt_price">\40,000</strong>
                                            <!---->
                                        </dd>
                                    </dl>
                                </div>
                                <!---->
                                <!---->
                                <div data-v-3e4269ab="" class="total_box">
                                    <dl data-v-3e4269ab="" class="pull_box">
                                        <dt data-v-3e4269ab="" class="pull_left"><em data-v-3e4269ab=""
                                                class="blind">합계</em> <strong data-v-3e4269ab=""
                                                class="txt_price">\</strong></dt>
                                        <dd data-v-3e4269ab="" class="pull_right align_right"><strong data-v-3e4269ab=""
                                                class="txt_price">40,000</strong></dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                        <div data-v-3e4269ab="" class="btn_order_area"><a data-v-3e4269ab=""
                                class="btn btn_default btn_full">결제하기</a>
                            <!---->
                        </div>
                    </div>
                </div>
            </article>
            <article data-v-3e4269ab="" class="box_form box_notice">
                <div data-v-3e4269ab="" class="heading">
                    <h3 data-v-3e4269ab="">호스트 정보</h3>
                </div>
                <div data-v-3e4269ab="" class="list_wrap">
                    <dl data-v-3e4269ab="" class="flex_box refund">
                        <dt data-v-3e4269ab="" class="flex tit">공간상호</dt>
                        <dd data-v-3e4269ab="" class="flex">247스튜디오</dd>
                    </dl>
                    <dl data-v-3e4269ab="" class="flex_box refund">
                        <dt data-v-3e4269ab="" class="flex tit">대표자명</dt>
                        <dd data-v-3e4269ab="" class="flex">장지호</dd>
                    </dl>
                    <dl data-v-3e4269ab="" class="flex_box refund">
                        <dt data-v-3e4269ab="" class="flex tit">소재지</dt>
                        <dd data-v-3e4269ab="" class="flex">서울 서초구 반포대로9길 3 지하1층 전체</dd>
                    </dl>
                    <dl data-v-3e4269ab="" class="flex_box refund">
                        <dt data-v-3e4269ab="" class="flex tit">사업자번호</dt>
                        <dd data-v-3e4269ab="" class="flex">7820501727</dd>
                    </dl>
                    <dl data-v-3e4269ab="" class="flex_box refund">
                        <dt data-v-3e4269ab="" class="flex tit">연락처</dt>
                        <dd data-v-3e4269ab="" class="flex"><em data-v-3e4269ab="" class="hostcall">0504-1381-6824</em>
                            <em data-v-3e4269ab="" class="hostmail">kv2624@naver.com</em>
                        </dd>
                    </dl>
                </div>
            </article>
            <article data-v-3e4269ab="" class="box_form box_notice">
                <div data-v-3e4269ab="" class="heading">
                    <h3 data-v-3e4269ab="">예약시 주의사항</h3>
                </div>
                <div data-v-3e4269ab="" class="list_wrap">
                    <ol data-v-3e4269ab="" class="notice_list">
                        <li data-v-3e4269ab=""><span data-v-3e4269ab="" class="num">1</span>
                            White Room(2시간이상부터 예약), Grey Room(3시간이상부터 예약)
                        </li>
                        <li data-v-3e4269ab=""><span data-v-3e4269ab="" class="num">2</span>
                            퇴실시 정리정돈은 기본이며, 모든 쓰레기는 분리수거 바랍니다.
                        </li>
                        <li data-v-3e4269ab=""><span data-v-3e4269ab="" class="num">3</span>
                            이용시간은 촬영전 준비와 촬영후 정리가 끝나는 시간을 모두 포함합니다.
                        </li>
                        <li data-v-3e4269ab=""><span data-v-3e4269ab="" class="num">4</span>
                            White Room(호리존)은 특성상 음식물 및 음료반입 금지합니다.
                        </li>
                        <li data-v-3e4269ab=""><span data-v-3e4269ab="" class="num">5</span>
                            건물 전체 금연 입니다.
                        </li>
                        <li data-v-3e4269ab=""><span data-v-3e4269ab="" class="num">6</span>
                            기준인원 초과시 시간당 1인 5,000원 추가 입니다.
                        </li>
                        <li data-v-3e4269ab=""><span data-v-3e4269ab="" class="num">7</span>
                            스튜디오 내부 모든 시설은 자유롭게 이용하되, 원상복구를 원칙으로 하며, 파손시 배상합니다.
                        </li>
                        <li data-v-3e4269ab=""><span data-v-3e4269ab="" class="num">8</span>
                            8.화이트 호리존과 블랙방은 녹음이 필요할경우 방음이 안되어 예약자가 겹칠수 있으니 사전에 미리 말씀해주세요.
                        </li>
                        <li data-v-3e4269ab=""><span data-v-3e4269ab="" class="num">9</span>
                            녹음 및 수음을 하시려면 전체대관을 권장합니다. 수음시 사전에 미리 말씀해주세요
                        </li>
                    </ol>
                </div>
            </article>
            <article data-v-3e4269ab="" class="box_form box_notice">
                <div data-v-3e4269ab="" class="heading">
                    <h3 data-v-3e4269ab="">환불규정 안내</h3>
                </div>
                <div data-v-3e4269ab="" class="list_wrap refund_rule">
                    <p data-v-3e4269ab="" class="txt_notice refund"><em data-v-3e4269ab="" class="warn"
                            style="color: rgb(255, 58, 72);">이용당일(첫 날) 이후에 환불 관련 사항은 호스트에게 직접
                            문의하셔야 합니다.</em> <br data-v-3e4269ab="">결제 후 2시간 이내에는 100% 환불이 가능합니다.(단,
                        이용시간 전까지만 가능)
                    </p>
                    <dl data-v-3e4269ab="" class="flex_box refund">
                        <dt data-v-3e4269ab="" class="flex tit">
                            이용 8일 전
                        </dt>
                        <dd data-v-3e4269ab="" class="flex">
                            총 금액의 100% 환불
                        </dd>
                        <!---->
                    </dl>
                    <dl data-v-3e4269ab="" class="flex_box refund">
                        <dt data-v-3e4269ab="" class="flex tit">
                            이용 7일 전
                        </dt>
                        <!---->
                        <dd data-v-3e4269ab="" class="flex">환불 불가</dd>
                    </dl>
                    <dl data-v-3e4269ab="" class="flex_box refund">
                        <dt data-v-3e4269ab="" class="flex tit">
                            이용 6일 전
                        </dt>
                        <!---->
                        <dd data-v-3e4269ab="" class="flex">환불 불가</dd>
                    </dl>
                    <dl data-v-3e4269ab="" class="flex_box refund">
                        <dt data-v-3e4269ab="" class="flex tit">
                            이용 5일 전
                        </dt>
                        <!---->
                        <dd data-v-3e4269ab="" class="flex">환불 불가</dd>
                    </dl>
                    <dl data-v-3e4269ab="" class="flex_box refund">
                        <dt data-v-3e4269ab="" class="flex tit">
                            이용 4일 전
                        </dt>
                        <!---->
                        <dd data-v-3e4269ab="" class="flex">환불 불가</dd>
                    </dl>
                    <dl data-v-3e4269ab="" class="flex_box refund">
                        <dt data-v-3e4269ab="" class="flex tit">
                            이용 3일 전
                        </dt>
                        <!---->
                        <dd data-v-3e4269ab="" class="flex">환불 불가</dd>
                    </dl>
                    <dl data-v-3e4269ab="" class="flex_box refund">
                        <dt data-v-3e4269ab="" class="flex tit">
                            이용 2일 전
                        </dt>
                        <!---->
                        <dd data-v-3e4269ab="" class="flex">환불 불가</dd>
                    </dl>
                    <dl data-v-3e4269ab="" class="flex_box refund">
                        <dt data-v-3e4269ab="" class="flex tit">
                            이용 전날
                        </dt>
                        <!---->
                        <dd data-v-3e4269ab="" class="flex">환불 불가</dd>
                    </dl>
                    <dl data-v-3e4269ab="" class="flex_box refund">
                        <dt data-v-3e4269ab="" class="flex tit">
                            이용 당일
                        </dt>
                        <!---->
                        <dd data-v-3e4269ab="" class="flex">환불 불가</dd>
                    </dl>
                </div>
            </article>
            <!---->
            <article data-v-3e4269ab="" id="payment" class="box_form box_notice">
                <div data-v-3e4269ab="" class="heading">
                    <h3 data-v-3e4269ab="">결제방법 선택</h3>
                </div>
                <div data-v-3e4269ab="" class="col_wrap pay_wrap">
                    <div data-v-3e4269ab="" class="col col4"><input data-v-3e4269ab="" id="type1" type="radio"
                            value="card" class="radio"> <label data-v-3e4269ab="" for="type1">신용카드</label></div>
                    <div data-v-3e4269ab="" class="col col4"><input data-v-3e4269ab="" id="type2" type="radio"
                            value="trans" class="radio"> <label data-v-3e4269ab="" for="type2">실시간 계좌이체</label></div>
                    <div data-v-3e4269ab="" class="col col4"><input data-v-3e4269ab="" id="type3" type="radio"
                            value="naverpay" class="radio"> <label data-v-3e4269ab="" for="type3"><i data-v-3e4269ab=""
                                class="sp_icon naverpay"></i>
                            네이버페이
                        </label></div>
                </div>
            </article>
            <p data-v-3e4269ab="" class="p_guide warn" style="display: block;"><i data-v-3e4269ab=""
                    class="sp_icon ico_alert"></i>
                계좌이체의 경우, 모바일에서는 네이버페이 계좌 간편결제만
                가능합니다!(일반 계좌이체는 PC에서만 지원)
            </p>

     



            <article data-v-3e4269ab="" id="service-agree" class="box_form box_notice error">
                <div data-v-3e4269ab="" class="heading">
                    <h3 data-v-3e4269ab="">서비스 동의</h3> <span data-v-3e4269ab="" class="option">
                        <input id="terms_agree" type="checkbox" class="checkbox"> <label data-v-3e4269ab=""
                            for="terms_agree">전체 동의</label></span>
                </div>
                <div data-v-3e4269ab="" class="list_wrap terms_wrap">
                    <ul data-v-3e4269ab="" class="notice_list">
                        <li data-v-3e4269ab=""><input data-v-3e4269ab="" id="term1" type="checkbox" class="checkbox">
                            <label data-v-3e4269ab="" for="term1">
                                위 공간의 예약조건 확인 및 결제진행 동의
                                <span data-v-3e4269ab="" class="txt_required">(필수)</span></label>
                        </li>
                        <li data-v-3e4269ab=""><input data-v-3e4269ab="" id="term2" type="checkbox" class="checkbox">
                            <label data-v-3e4269ab="" for="term2">
                                환불규정 안내에 대한 동의
                                <span data-v-3e4269ab="" class="txt_required">(필수)</span></label>
                        </li>
                        <li data-v-3e4269ab="" class="">

                            <div data-v-3e4269ab="" class="terms">
                                <ol data-v-3e4269ab="">
                                    <li data-v-3e4269ab="">1. 개인정보를 제공받는 자: 해당 공간의 호스트</li>
                                    <li data-v-3e4269ab="">
                                        2. 제공하는 개인정보 항목
                                        <ul data-v-3e4269ab="">
                                            <li data-v-3e4269ab="">
                                                - 필수항목: 네이버 아이디, 이름, 연락처,
                                                결제정보(결제방식 및 결제금액)
                                            </li>
                                            <li data-v-3e4269ab="">- 선택항목: 이메일 주소</li>
                                        </ul>
                                    </li>
                                    <li data-v-3e4269ab="">
                                        3. 개인정보의 제공목적: 공간예약 및 이용 서비스 제공,
                                        환불처리
                                    </li>
                                    <li data-v-3e4269ab="">
                                        4. 개인정보의 제공기간: 서비스 제공기간(단, 관계법령의
                                        규정에 의하여 보존할 필요가 있는 경우 및 사전 동의를
                                        득한 경우에는 해당 기간 동안 보관합니다.)
                                    </li>
                                    <li data-v-3e4269ab="">
                                        5. 개인정보의 제공을 거부할 권리: 개인정보 주체는
                                        개인정보의 제공을 거부할 권리가 있으나, 공간 예약을
                                        위해 반드시 필요한 개인정보의 제공으로서 이를 거부할
                                        시 공간 예약이 어려울 수 있습니다.
                                    </li>
                                </ol>
                            </div>








                        <li data-v-3e4269ab="" class="">
                            <div data-v-3e4269ab="" class="confirm_box"><input data-v-3e4269ab="" id="term4"
                                    type="checkbox" name="terms" class="checkbox"> <label data-v-3e4269ab=""
                                    for="term4">
                                    개인정보 수집 및 이용 동의
                                    <span data-v-3e4269ab="" class="txt_required">(필수)</span></label> <a
                                    data-v-3e4269ab="" class="btn_view_terms"><span data-v-3e4269ab=""
                                        class="sp_icon ico_view_terms"><em data-v-3e4269ab=""
                                            class="blind">내용보기</em></span></a></div>


                                            <!--div 숨겨져야할 것-->
                            <div data-v-3e4269ab="" tabindex="0" class="scroll_box">
                                <div data-v-3e4269ab="" class="terms">
                                    <ol data-v-3e4269ab="">
                                        <li data-v-3e4269ab="">
                                            1. 수집하는 개인정보의 항목
                                            <p data-v-3e4269ab="" class="sub_term"><em data-v-3e4269ab="">-</em>
                                                예약정보(성명, 이메일주소, 휴대전화번호),
                                                결제정보(신용카드 번호 및 은행계좌정보 일부 등)
                                            </p>
                                        </li>
                                        <li data-v-3e4269ab="">
                                            2. 개인정보의 이용목적
                                            <p data-v-3e4269ab="" class="sub_term"><em data-v-3e4269ab="">-</em> 공간 예약 및
                                                이용</p>
                                        </li>
                                        <li data-v-3e4269ab="">
                                            3. 개인정보의 보관기간
                                            <p data-v-3e4269ab="" class="sub_term"><em data-v-3e4269ab="">-</em> 예약 완료 후
                                                관련 법령에 따라 5년간
                                                개인정보를 보관합니다.
                                            </p>
                                        </li>
                                        <li data-v-3e4269ab="">
                                            4. 개인정보의 수집 및 이용을 거부할 권리
                                            <p data-v-3e4269ab="" class="sub_term"><em data-v-3e4269ab="">-</em> 개인정보
                                                주체는 개인정보의 수집 및 이용을
                                                거부할 권리가 있으나, 공간 예약을 위한 최소한의
                                                개인정보 수집으로서 이를 거부할 시 공간 예약이
                                                어려울 수 있습니다.
                                            </p>
                                        </li>
                                    </ol>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </article>
            <p data-v-3e4269ab="" class="p_guide warn"><i data-v-3e4269ab="" class="sp_icon ico_alert"></i>
                서비스 이용약관 동의는 필수입니다.
            </p>


<input type="submit" value="테스트"/>
















            <!--푸터-->
            <div
                style="flex-direction: row;display: flex;justify-content: center;background-color: #fafbfb; position: relative; left: 200px;">
                <div class="h_row_center" style="width: 1160px; height: 310px; position: relative; left: -90px;">

                    <div style="position:relative; min-width: 300px; padding-top: 40px; height: 100%">
                        <p style="font-size: 12px;font-weight: bold;font-stretch: normal;font-style: normal;line-height: 1.17;letter-spacing: normal;color: #454b50;cursor: pointer;"
                            onclick="hourplace_v2.userLog('W', '/info/host', 'click', 'policy', 'business');window.open('http://www.ftc.go.kr/www/bizCommView.do?key=232&amp;apv_perm_no=2018322016230204057&amp;pageUnit=10&amp;searchCnd=wrkr_no&amp;searchKrwd=4948100558&amp;pageIndex=1')">
                            사업자정보확인
                        </p>
                        <p style="margin-top: 12px; font-size: 12px;font-weight: bold;font-stretch: normal;font-style: normal;line-height: 1.17;letter-spacing: normal;color: #454b50;cursor: pointer;"
                            onclick="hourplace_v2.userLog('W', '/info/host', 'click', 'policy', 'personal');window.location.href='/policy/personal'">
                            개인정보처리방침
                        </p>
                        <p style="margin-top: 12px; font-size: 12px;font-weight: bold;font-stretch: normal;font-style: normal;line-height: 1.17;letter-spacing: normal;color: #454b50;cursor: pointer;"
                            onclick="hourplace_v2.userLog('W', '/info/host', 'click', 'policy', 'service');window.location.href='/policy/service'">
                            이용약관
                        </p>
                        <p style="margin-top: 12px; font-size: 12px;font-weight: bold;font-stretch: normal;font-style: normal;line-height: 1.17;letter-spacing: normal;color: #454b50;cursor: pointer;"
                            onclick="hourplace_v2.userLog('W', '/info/host', 'click', 'service');window.location.href='/service'">
                            고객센터
                        </p>
                        <p style="margin-top: 12px; font-size: 12px;font-weight: bold;font-stretch: normal;font-style: normal;line-height: 1.17;letter-spacing: normal;color: #454b50;cursor: pointer;"
                            onclick="hourplace_v2.userLog('W', '/info/host', 'click', 'policy', 'hr');window.open('https://www.notion.so/hourplace/fae9ceaf4a174479bf52a44305283045')">
                            인재채용
                        </p>

                        <div style="position:absolute; bottom: 50px;">
                            <p
                                style="font-size: 15px;font-weight: normal;font-stretch: normal;font-style: normal;line-height: 1.47;letter-spacing: -0.1px;color: #454b50;">
                                team@hourplace.co.kr</p>
                        </div>
                    </div>

                    <div style="position:relative; width: 860px;padding-top: 40px; height: 100%">

                        <p
                            style="font-size: 15px;font-weight: 500;font-stretch: normal;font-style: normal;line-height: 1.33;letter-spacing: -0.1px;color: #9ea4aa;">
                            (주)먼치팩토리 사업자 정보
                        </p>
                        <p
                            style="margin-top: 16px;font-size: 12px;font-weight: normal;font-stretch: normal;font-style: normal;line-height: 1.67;letter-spacing: normal;color: #9ea4aa;">
                            대표 서영석<br>
                            주소 서울특별시 강남구 압구정로2길 62 대성빌딩 202호<br>
                            사업자 등록번호 494-81-00558<br>
                            통신판매업신고번호 2018-서울강남-04057<br>
                            (주)먼치팩토리는 통신판매중개자로서, 통신판매의 당사자가 아니라는 사실을 고지하며 상품의 예약, 이용 및 환불 등과 관련한 의무와 책임은 각 판매자에게 있습니다.
                        </p>

                        <p
                            style="position:absolute; bottom: 50px;font-size: 11px;font-weight: 500;font-stretch: normal;font-style: normal;line-height: 1.36;letter-spacing: normal;color: #9ea4aa;">
                            © munchfactory Inc.
                        </p>

                        <div class="h_row_center" style="position:absolute; bottom: 50px; right: 0;">
                            <div class="h_column_center" style="width: 32px;height: 32px;cursor: pointer;"
                                onclick="hourplace_v2.userLog('W', '/info/host', 'click', 'sns', 'instagram');window.open('http://instagram.com/hourplace/?hl=ko')">
                                <div class="h_center"
                                    style="margin-top: 2px; width: 32px;height: 32px;border-radius: 16px;background-color: #eff3f5;">
                                    <img src="//s3.hourplace.co.kr/web/images/icon/sns_instagram_dark.svg"
                                        style="width: 20px;height: 20px">
                                </div>
                            </div>
                            <div class="h_column_center"
                                style="width: 32px;height: 32px;margin-left: 12px;cursor: pointer;"
                                onclick="hourplace_v2.userLog('W', '/info/host', 'click', 'sns', 'blog');window.open('https://blog.naver.com/hourplace')">
                                <div class="h_center"
                                    style="margin-top: 2px; width: 32px;height: 32px;border-radius: 16px;background-color: #eff3f5;">
                                    <img src="//s3.hourplace.co.kr/web/images/icon/sns_blog_dark.svg"
                                        style="width: 20px;height: 20px">
                                </div>
                            </div>
                            <div class="h_column_center"
                                style="width: 32px;height: 32px;margin-left: 12px;cursor: pointer;"
                                onclick="hourplace_v2.userLog('W', '/info/host', 'click', 'sns', 'brunch');window.open('https://brunch.co.kr/@hourplace#articles')">
                                <div class="h_center"
                                    style="margin-top: 2px; width: 32px;height: 32px;border-radius: 16px;background-color: #eff3f5;">
                                    <img src="//s3.hourplace.co.kr/web/images/icon/sns_brunch_dark.svg"
                                        style="width: 20px;height: 20px">
                                </div>
                            </div>
                            <div class="h_column_center"
                                style="width: 32px;height: 32px;margin-left: 12px;cursor: pointer;"
                                onclick="hourplace_v2.userLog('W', '/info/host', 'click', 'sns', 'facebook');window.open('http://facebook.com/Hourplace-1170061373140648')">
                                <div class="h_center"
                                    style="margin-top: 2px; width: 32px;height: 32px;border-radius: 16px;background-color: #eff3f5;">
                                    <img src="//s3.hourplace.co.kr/web/images/icon/sns_facebook_dark.svg"
                                        style="width: 20px;height: 20px">
                                </div>
                            </div>
                            <div class="h_column_center"
                                style="width: 32px;height: 32px;margin-left: 12px;cursor: pointer;"
                                onclick="hourplace_v2.userLog('W', '/info/host', 'click', 'app', 'ios');window.open('https://itunes.apple.com/kr/app/id1481552760?mt=8')">
                                <div class="h_center"
                                    style="margin-top: 2px; width: 32px;height: 32px;border-radius: 16px;background-color: #eff3f5;">
                                    <img src="//s3.hourplace.co.kr/web/images/icon/sns_apple_dark.svg"
                                        style="width: 20px;height: 20px">
                                </div>
                            </div>
                            <div class="h_column_center"
                                style="width: 32px;height: 32px;margin-left: 12px;cursor: pointer;"
                                onclick="hourplace_v2.userLog('W', '/info/host', 'click', 'app', 'android');window.open('https://play.google.com/store/apps/details?id=com.munchfactory.hourplace')">
                                <div class="h_center"
                                    style="margin-top: 2px; width: 32px;height: 32px;border-radius: 16px;background-color: #eff3f5;">
                                    <img src="//s3.hourplace.co.kr/web/images/icon/sns_google_dark.svg"
                                        style="width: 20px;height: 20px">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


</form>


            
</body>

</html>