package com.spring.thyme.reserve.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ReservController {
	
	@GetMapping("/startingReserv.do")
	public ModelAndView showReservPage(ModelAndView mav) {
		mav.setViewName("startingReserv");
		return mav;
	}
	
	
	@GetMapping("/login.do")
	public ModelAndView showLogin(ModelAndView mav) {
		mav.setViewName("Login");
		return mav;
	}
	
	
	@GetMapping("/placeDetail.do")
	public ModelAndView showDetail(ModelAndView mav) {
		mav.setViewName("placeDetail");
		return mav;
	}
//	
//	@RequestMapping(value="/startingReserv.do", method=RequestMethod.POST)
//	public ModelAndView reserv() throws Exception{
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("startingReserv");
//		return mav;
//	}
//	
//	

//	@RequestMapping(value = "startingReserv.do",  method=RequestMethod.POST)
//	public void getReservDate(Locale locale, Model model, String date, String startTime, String endTime,String person) {
//		
//		
//		System.out.println(date);
//		System.out.println(startTime);
//		System.out.println(endTime);
//		System.out.println(person);
//	}
//
//	

	@RequestMapping(value="/startingReserv.do", method= RequestMethod.POST)
	public ModelAndView reservRequest(HttpServletRequest request) {
		String reservdate = request.getParameter("date");
		String person = request.getParameter("person");
		String start = request.getParameter("startTime");
		String end = request.getParameter("endTime");
		System.out.println("요청 날짜" + reservdate);
		System.out.println("인원수" + person);
		System.out.println("시작 시간 :" + start);
		System.out.println("끝나는 시간" + end);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("startingReserv");
		mav.addObject("date", reservdate);
		mav.addObject("personNum", person);
		mav.addObject("startTime", start);
		mav.addObject("endTime", end);
		return mav;
	}
	
	
	
	

	
	
	@RequestMapping(value="/testReservSuccess.do", method=RequestMethod.POST)
	public ModelAndView reservTest(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String reservUName = request.getParameter("reservUserName");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String email = request.getParameter("email");
		String purpose = request.getParameter("reservationPurpose");
		String uRequest = request.getParameter("request");
		String reservdate = request.getParameter("date");
		String person = request.getParameter("person");
		String start = request.getParameter("startTime");
		String end = request.getParameter("endTime");
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
		mav.addObject("date", reservdate);
		mav.addObject("personNum", person);
		mav.addObject("startTime", start);
		mav.addObject("endTime", end);
		return mav;
		
	}
	
	
	
	
}
