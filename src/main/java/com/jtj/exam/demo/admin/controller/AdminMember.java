package com.jtj.exam.demo.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jtj.exam.demo.vo.Rq;

@Controller
public class AdminMember {
	private Rq rq;
	
	public AdminMember(Rq rq) {
		this.rq = rq;
	}
	
	@RequestMapping("/admin/login")
	public String showLogin() {
		return "admin/login";
	}
}
