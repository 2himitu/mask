package com.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.memberService;



@Controller
public class MainController {
	
	@Autowired
	memberService memberService;
	
	@RequestMapping("/")
	public String EpidemicGuard() {
		
		return "mainForCustomer";
	}
	@RequestMapping("/main")
	public String EpidemicGuard2() {
		
		return "main";
	}
	
}
