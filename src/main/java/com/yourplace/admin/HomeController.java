package com.yourplace.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	@GetMapping("/home.mdo")
	public String home() {
		return "index-admin";
	}
}
