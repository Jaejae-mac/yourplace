package com.yourplace.host.reserv.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.yourplace.host.reserv.service.HostReservService;
import com.yourplace.host.reserv.vo.HostReservVO;

@Controller
public class HostReservController {
	@Inject
	HostReservService service;
	
	@GetMapping(value= "/indexOurPlace.hdo")
	public ModelAndView getHostReserv() throws Exception {
		ModelAndView mav = new ModelAndView();
		List<HostReservVO> list = service.getAllReserve();
		List<HostReservVO> datelist = service.getReserveDate();
		
		Gson gson = new Gson();
		String tojson = gson.toJson(list);
		System.out.println(tojson);
		
		String tojsonDate = gson.toJson(datelist);
		System.out.println(tojsonDate);

		

		mav.addObject("jsonList", tojson);
		mav.addObject("jsonDateList", tojsonDate);
		

	
		mav.setViewName("indexOurPlace");
		return mav;
		
	}
}
