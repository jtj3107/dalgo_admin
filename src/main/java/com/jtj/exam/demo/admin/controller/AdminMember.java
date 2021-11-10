package com.jtj.exam.demo.admin.controller;

import org.springframework.stereotype.Controller;

import com.jtj.exam.demo.vo.Rq;

@Controller
public class AdminMember {
	private Rq rq;
	
	public AdminMember(Rq rq) {
		this.rq = rq;
	}
	
}
