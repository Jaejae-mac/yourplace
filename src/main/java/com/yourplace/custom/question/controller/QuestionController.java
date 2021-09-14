package com.yourplace.custom.question.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class QuestionController {
	@GetMapping("/quesForm.do")
	public String quesForm() {
		return "question/guestQuesForm";
	}
}
