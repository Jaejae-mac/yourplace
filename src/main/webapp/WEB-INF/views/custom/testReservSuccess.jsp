<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
예약 완료 페이지
 예약자 이름 : ${reservUserName} 님
핸드폰 번호 : ${phone1} - ${phone2 } - ${phone3 }
이메일 :  ${email}
사용목적 : ${purpose }
요청사항 : ${request}

<!--  날짜를 세는 건 오늘 날짜부터, 클릭한 장소번호, 클릭한 방번호 불러오고 -- 리스트를 json형태로 바꿔서 리턴 -- 계산을 전부 백단에서 해서 제이슨 정보를 리턴-->
<!-- 넣을땐 전부 계산해서 -- 리턴할땐 메서드 -- PM 이면 12시+ 해서 -- PM이면 더해서 들어가게끔-->
<!-- 날짜가 오늘 이후인것, 장소번호가 이거인것, 방번호가 이거인 것, 예약 날짜가 오늘 날짜 현재시간 이상인걸 가져오는 것 -->
<!-- 가져오면 JSON형태로 리턴해주고 front단에서 찍어보기, 예약시간 막을 수있게 , AJAX 걸어서 날짜값을 가지고 백단으로 가서 DB에서 그 날짜의 예약건을 전부 들고와서 READ ONLY 상태로 바꿔주기 -->
예약 날짜 : ${reserveY} - ${reserveM } - ${reserveD }
인원수 : ${personNum} 명
시간 : ${startTime}시 - ${endTime }시
</body>
</html>