package com.yourplace.host;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	@GetMapping("/home.hdo")
	public String home() {
		return "index-host";
	}
}
