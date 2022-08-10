package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dto.memberDTO;
import com.dto.emailDTO;
import com.service.memberService;

@Controller
public class memberController {
	
	@Autowired
	memberService memberService;
	
	@RequestMapping("/memberUI")
	public String memberUI() {

		return "memberForm";
	}
	// 회원저장
	@RequestMapping(value = "/memberAdd", method = RequestMethod.GET)
	public String memberAdd(memberDTO dto, Model m) {
		System.out.println(dto);
		int n = memberService.memberAdd(dto);
		if (n == 1) {
			m.addAttribute("mesg", "Success");
		} else {
			m.addAttribute("mesg", "please try again");
		}
		return "forward:/";
	}
	
	@RequestMapping("/emailAdd")
	public String dmailAdd(emailDTO dto) {
		System.out.println(dto);
		int n = memberService.emailAdd(dto);
		
		return "forward:/";
	}
}
