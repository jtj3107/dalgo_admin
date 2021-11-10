package com.jtj.exam.demo.admin.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMain {
	@RequestMapping("/admin")
	public String showMain() {
		return "admin";
	}	
	
	@RequestMapping("/")
	public String showRoot() {
		return "redirect:admin";
	}
}
