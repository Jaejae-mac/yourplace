package com.yourplace.custom;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {
//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping("/home.do")
	public String home() {
		return "index";
	}
}
