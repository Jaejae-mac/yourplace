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

	
	@RequestMapping(value="/startingReserv.do", method= RequestMethod.POST)
	public ModelAndView reservRequest(HttpServletRequest request) {
		String reserve = request.getParameter("date");
		String[] reserveD = reserve.split("-");
		
		int year = Integer.parseInt(reserveD[0]);
		int month = Integer.parseInt(reserveD[1]);
		int date = Integer.parseInt(reserveD[2]);
		
	
		String person = request.getParameter("person");

		String start = request.getParameter("startTime"); 		//시작 시간
		String[] time1 = start.split(":");
		int sttime = Integer.parseInt(time1[0]);
		System.out.println(sttime);
	
		String end = request.getParameter("endTime"); //끝나는 시간
		String[] time2 = end.split(":");
		int endtime = Integer.parseInt(time2[0]);
		System.out.println(endtime);

		System.out.println("인원수" + person);
	
		ModelAndView mav = new ModelAndView();
		mav.setViewName("startingReserv");

		mav.addObject("personNum", person);
		mav.addObject("reserveYear", year);
		mav.addObject("reserveMonth", month);
		mav.addObject("reserveDate", date);
		mav.addObject("startTime", sttime);
		mav.addObject("endTime", endtime);
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
		System.out.println(sttime);
	
		String end = request.getParameter("endTime"); //끝나는 시간
		String[] time2 = end.split(":");
		int endtime = Integer.parseInt(time2[0]);
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
