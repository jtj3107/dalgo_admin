package com.jtj.exam.demo.admin.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Main {
	@RequestMapping("/admin")
	public String showMain() {
		return "admin/main";
	}	
	
	@RequestMapping("/admin/main")
	public String showMain2() {
		return "admin/main";
	}	
	
	@RequestMapping("/")
	public String showRoot() {
		return "redirect:admin/main";
	}
}
