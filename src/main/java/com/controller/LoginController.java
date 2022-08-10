package com.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dto.memberDTO;
import com.service.memberService;

@Controller
public class LoginController {

	@Autowired
	memberService memberService;
	
	@RequestMapping("/mainForSystemWithVideoPart")
	public String mainForSystemWithVideoPart() {
		
		return "mainForSystemWithVideoPart"; //loginForm.jsp
	}
	
	@RequestMapping("/loginUI")
	public String loginUI() {
		
		return "aa_loginPart3"; //loginForm.jsp
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam Map<String, String> map, Model m, HttpSession session) {
		
		memberDTO dto = memberService.login(map);
		
		String page = "";
		if(dto==null) {
			
			m.addAttribute("mesg", "Please check your ID or Password");
			page = "redirect:/";
			
		}else if(dto.getUserid().equals("system")){
			
			session.setAttribute("login", dto);
			page = "mainForSystemWithVideoPart";  // main.jsp
			
		} else if(dto.getUserid().equals("manager")){
		
			session.setAttribute("login", dto);
			page = "mainForSystem";  // main.jsp
			
		} else {
			
			session.setAttribute("login", dto);
			page = "mainForCustomer";  // main.jsp
			
		}
		System.out.println(dto);
		return page; 
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session ) {
		session.invalidate();   
		//session.removeAttribute("key");
		return "forward:/";
	}
	
	
}





