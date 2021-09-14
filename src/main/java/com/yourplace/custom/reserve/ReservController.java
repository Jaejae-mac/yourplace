package com.yourplace.custom.reserve;

import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.yourplace.custom.reserve.service.ReserveService;
import com.yourplace.custom.reserve.vo.ReserveVO;
@Controller
public class ReservController {
	
	@Inject
	ReserveService service;
	
	//전체 예약리스트 불러오기 -- 예약할 수있는 disable 하기 위해
	@RequestMapping(value="/placeDetail.do")
	public ModelAndView PlaceDetail(Model model) throws Exception {
		getReservedTime(model);
		ModelAndView mav = new ModelAndView();
		List<ReserveVO> list = service.getAllReserve();
		mav.setViewName("placeDetail");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		mav.addObject("map", map);
		System.out.println(mav.toString());
		return mav;
	}
	
	//timepicker disable 하려고
	public String getReservedTime(Model model) throws Exception{
		List<ReserveVO> listtime = service.getReservedTime();
		List<ReserveVO> listMap = listtime;
	
		//쿼리를 오늘날짜 기준으로 조회해서 만약에 값이 있으면 model에 담아서 view에서 블락하려고
		if(listMap.isEmpty()) {
			System.out.println("값 없음 테스트");
		}else {
			int findstart = listMap.get(0).getRsvStartT();
			int findend = listMap.get(0).getRsvEndTime();
			model.addAttribute("findstart", findstart);
			model.addAttribute("findend", findend);
			System.out.println(model.toString());
			
			Date current = new Date();
			
		}
		
		
		
		
	return "redirect:/placeDetail";
		
	
		
	}
	
	
	//db에 들어갈 시간 계산
	public void getReserveValue(HttpServletRequest request, Model model) throws Exception {
		PlaceDetail(model);
		String start = request.getParameter("startTime"); 
		String end = request.getParameter("endTime");
		
		String st[] = start.split(":");
		String et[] = end.split(":");
		
		int testStart = Integer.parseInt(st[0]);
		int testEnd = Integer.parseInt(et[0]);
		
		String testStart2 = st[1];
		String testEnd2 = et[1];
		
		System.out.println(testStart);
		System.out.println(testEnd);
	
		if(testStart2.contains("PM")) {
			testStart = testStart + 12;
		}else {
			return;
		}
		
		if(testEnd2.contains("PM")) {
			testEnd = testEnd + 12;
		}else {
			return;
		}
		System.out.println(testStart);
		System.out.println(testEnd);

		}
	
	
	

	
	
	
	@RequestMapping(value="/startingReserv.do", method= RequestMethod.POST)
	public ModelAndView reservRequest(HttpServletRequest request, Model model) throws Exception {
		getRadioCheckedValue(request);
		getReserveValue(request, model);
		getReservedTime(model);
		
		String reserve = request.getParameter("date"); //선택 날짜
		String[] reserveD = reserve.split("-");

		int year = Integer.parseInt(reserveD[0]);
		int month = Integer.parseInt(reserveD[1]);
		int date = Integer.parseInt(reserveD[2]);
		String person = request.getParameter("person"); //인원수
		
		
		String start = request.getParameter("startTime"); 		//시작 시간
		String[] time1 = start.split(":");

		int sttime = Integer.parseInt(time1[0]); //1
		String sttime2 = time1[1]; //00Pm 이런식
	
		
		
		String end = request.getParameter("endTime"); //끝나는 시간
		String[] time2 = end.split(":");
		
		int endtime = Integer.parseInt(time2[0]); //2
		String endtime2 = time2[1]; //00pm
	
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("startingReserv");
		mav.addObject("personNum", person);
		mav.addObject("reserveYear", year);
		mav.addObject("reserveMonth", month);
		mav.addObject("reserveDate", date);
		mav.addObject("startTime", sttime);
		mav.addObject("startTime2", sttime2);
		mav.addObject("endTime", endtime);
		mav.addObject("endTime2", endtime2);

		return mav;
	}
	
	
	
	//방번호 어느거 선택했는지 체크
	public void getRadioCheckedValue(HttpServletRequest request) {
		String checkedValue = request.getParameter("room"); 
		System.out.println(checkedValue);	
	}
	
	
	@RequestMapping(value="/testReservSuccess.do", method=RequestMethod.POST)
	public ModelAndView reservTest(HttpServletRequest request, ReserveVO vo,Model model) throws Exception {

		ModelAndView mav = new ModelAndView();
		
		String reservUName = request.getParameter("reservUserName");
		//사용자 아이디 추가
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String email = request.getParameter("email");
		String purpose = request.getParameter("reservationPurpose");
		String uRequest = request.getParameter("request");
		
		reservRequest(request, model);
		
		
		String reserveYear = request.getParameter("reserveY");
		String reserveMonth = request.getParameter("reserveM");
		String reserveDate = request.getParameter("reserveD");
		
		int year = Integer.parseInt(reserveYear);
		int month = Integer.parseInt(reserveMonth);
		int date = Integer.parseInt(reserveDate);
		
		
		System.out.println(year);
		System.out.println(month);
		System.out.println(date);
		
		String person = request.getParameter("person");
		
		String start = request.getParameter("startTime"); 		//시작 시간
		String[] time1 = start.split(":");
		
		int sttime = Integer.parseInt(time1[0]);
		String sttime2 = time1[1]; //00Pm 이런식
		
		System.out.println(sttime);
	
		String end = request.getParameter("endTime"); //끝나는 시간
		
		String[] time2 = end.split(":");
		int endtime = Integer.parseInt(time2[0]);
		String endtime2 = time2[1]; //00pm
	
		
		System.out.println(endtime);
		
		
		System.out.println(reservUName);
		System.out.println(phone1);
		System.out.println(phone2);
		System.out.println(phone3);
		System.out.println(email);
		System.out.println(uRequest);
		System.out.println(purpose);
		
		mav.addObject("reservUserName", reservUName);
		mav.addObject("phone1", phone1);
		mav.addObject("phone2", phone2);
		mav.addObject("phone3", phone3);
		mav.addObject("email", email);
		mav.addObject("purpose", purpose);
		mav.addObject("request", uRequest);
		mav.addObject("reserveY", year);
		mav.addObject("reserveM", month);
		mav.addObject("reserveD", date);

		mav.addObject("personNum", person);
		mav.addObject("startTime", sttime);

		mav.addObject("endTime", endtime);

		return mav;
		
	}
	
	
	
	
}