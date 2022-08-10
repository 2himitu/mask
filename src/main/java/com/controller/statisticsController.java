package com.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.service.calService;
import com.service.dataService;
import com.service.memberService;
import com.dto.calDTO;
import com.dto.memberDTO;

@Controller
public class statisticsController {
	
	@Autowired
	calService calService;
	@Autowired
	memberService memberService;
	@Autowired
	dataService dataService;
	
// 웹캠 촬영시 일정 시간마다 로그인 된 아이디 정보,total,mask,nomask,missmask,현재시간이 넘어간다. 
	
	@RequestMapping("/plus")
	public String plus(HttpServletRequest request, calDTO dto,HttpSession session) {
		
		memberDTO mDTO = (memberDTO) session.getAttribute("login");
		String userid = mDTO.getUserid();
		dto.setUserid(userid);	// session에 있는 id정보를 calDTO에 저장
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
		String settime  = dateFormat.format(new Date());
		dto.setSettime(settime);	// 시스템 시간(현재시간)을 calDTO에 저장
		
		int totalNumber= Integer.parseInt(request.getParameter("totalNumber"));
		int maskNumber= Integer.parseInt(request.getParameter("maskNumber"));
		int missmaskNumber= Integer.parseInt(request.getParameter("missmaskNumber"));
		int nomaskNumber= Integer.parseInt(request.getParameter("nomaskNumber"));
		
		dto.setTotalNumber(totalNumber);
		dto.setTotalNumber(maskNumber);
		dto.setTotalNumber(missmaskNumber);
		dto.setTotalNumber(nomaskNumber);
			// videoPart.jsp 에서 받은 각 변수의 value를 받아 calDTO에 저장
				
		calService.plus(dto);

		return "forward:/";
	}

	
	
//	1st Total Number
	
	@RequestMapping("/TotalNumber_1st")
	@ResponseBody
	public int TotalNumber_1st(Model m) {
		int n = dataService.TotalNumber_1st(); // DB에서 카운팅된 숫자를 호출한다. Mapper에 조건식(ex userid=(#userid)이 없으므로 메서드 실행시 바로 값을 호출.
		m.addAttribute("TotalNumber_1st",n); // 모델에 값을 저장해준다
		return n;
	}	
	@RequestMapping("/MaskNumber_1st")
	@ResponseBody
	public int MaskNumber_1st(Model m) {
		int n = dataService.MaskNumber_1st();
		m.addAttribute("MaskNumber_1st",n); 
		return n;
	}	
	@RequestMapping("/MissMaskNumber_1st")
	@ResponseBody
	public int MissMaskNumber_1st(Model m) {
		int n = dataService.MissMaskNumber_1st(); 
		m.addAttribute("TotalNumber_1st",n);
		return n;
	}	
	@RequestMapping("/NoMaskNumber_1st")
	@ResponseBody
	public int NoMaskNumber_1st(Model m) {
		int n = dataService.NoMaskNumber_1st();
		m.addAttribute("NoMaskNumber_1st",n);
		return n;
	}	
	
	
//	2nd Total Number
	
	@RequestMapping("/TotalNumber_2nd")
	@ResponseBody
	public int TotalNumber_2nd(Model m) {
		int n = dataService.TotalNumber_2nd(); // DB에서 카운팅된 숫자를 호출한다. Mapper에 조건식(ex userid=(#userid)이 없으므로 메서드 실행시 바로 값을 호출.
		m.addAttribute("TotalNumber_2nd",n); // 모델에 값을 저장해준다
		return n;
	}	
	@RequestMapping("/MaskNumber_2nd")
	@ResponseBody
	public int MaskNumber_2nd(Model m) {
		int n = dataService.MaskNumber_2nd();
		m.addAttribute("MaskNumber_2nd",n); 
		return n;
	}	
	@RequestMapping("/MissMaskNumber_2nd")
	@ResponseBody
	public int MissMaskNumber_2nd(Model m) {
		int n = dataService.MissMaskNumber_2nd(); 
		m.addAttribute("TotalNumber_2nd",n);
		return n;
	}	
	@RequestMapping("/NoMaskNumber_2nd")
	@ResponseBody
	public int NoMaskNumber_2nd(Model m) {
		int n = dataService.NoMaskNumber_2nd();
		m.addAttribute("NoMaskNumber_2nd",n);
		return n;
	}	
//	3rd Total Number
	
	@RequestMapping("/TotalNumber_3rd")
	@ResponseBody
	public int TotalNumber_3rd(Model m) {
		int n = dataService.TotalNumber_3rd(); // DB에서 카운팅된 숫자를 호출한다. Mapper에 조건식(ex userid=(#userid)이 없으므로 메서드 실행시 바로 값을 호출.
		m.addAttribute("TotalNumber_3rd",n); // 모델에 값을 저장해준다
		return n;
	}	
	@RequestMapping("/MaskNumber_3rd")
	@ResponseBody
	public int MaskNumber_3rd(Model m) {
		int n = dataService.MaskNumber_3rd();
		m.addAttribute("MaskNumber_3rd",n); 
		return n;
	}	
	@RequestMapping("/MissMaskNumber_3rd")
	@ResponseBody
	public int MissMaskNumber_3rd(Model m) {
		int n = dataService.MissMaskNumber_3rd(); 
		m.addAttribute("TotalNumber_3rd",n);
		return n;
	}	
	@RequestMapping("/NoMaskNumber_3rd")
	@ResponseBody
	public int NoMaskNumber_3rd(Model m) {
		int n = dataService.NoMaskNumber_3rd();
		m.addAttribute("NoMaskNumber_3rd",n);
		return n;
	}	
//	4th Total Number
	
	@RequestMapping("/TotalNumber_4th")
	@ResponseBody
	public int TotalNumber_4th(Model m) {
		int n = dataService.TotalNumber_4th(); // DB에서 카운팅된 숫자를 호출한다. Mapper에 조건식(ex userid=(#userid)이 없으므로 메서드 실행시 바로 값을 호출.
		m.addAttribute("TotalNumber_4th",n); // 모델에 값을 저장해준다
		return n;
	}	
	@RequestMapping("/MaskNumber_4th")
	@ResponseBody
	public int MaskNumber_4th(Model m) {
		int n = dataService.MaskNumber_4th();
		m.addAttribute("MaskNumber_4th",n); 
		return n;
	}	
	@RequestMapping("/MissMaskNumber_4th")
	@ResponseBody
	public int MissMaskNumber_4th(Model m) {
		int n = dataService.MissMaskNumber_4th(); 
		m.addAttribute("TotalNumber_4th",n);
		return n;
	}	
	@RequestMapping("/NoMaskNumber_4th")
	@ResponseBody
	public int NoMaskNumber_4th(Model m) {
		int n = dataService.NoMaskNumber_4th();
		m.addAttribute("NoMaskNumber_4th",n);
		return n;
	}	

	
	
	
	
	
	
	
	
	
//	system 계정 그래프
	@RequestMapping("/systemTotalNumber")
	@ResponseBody
	public int systemTotalNumber(Model m) {
		int n = dataService.systemTotalNumber();
		m.addAttribute("SystemTotalNumber",n);
		return n;
	}
	@RequestMapping("/systemMaskNumber")
	@ResponseBody
	public int systemMaskNumber(Model m) {
		int n = dataService.systemMaskNumber(); // DB에서 카운팅된 숫자를 호출한다. Mapper에 조건식(ex userid=(#userid)이 없으므로 메서드 실행시 바로 값을 호출.
		m.addAttribute("SytemMaskNumber",n); // 모델에 값을 저장해준다
		return n;
	}
	@RequestMapping("/systemMissmaskNumber")
	@ResponseBody
	public int systemMissmaskNumber(Model m) {
		int n = dataService.systemMissmaskNumber();
		m.addAttribute("SystemMaskNumber",n);
		return n;
	}
	@RequestMapping("/systemNomaskNumber")
	@ResponseBody
	public int systemNomaskNumber(Model m) {
		int n = dataService.systemNomaskNumber();
		m.addAttribute("SystemNomaskNumber",n);
		return n;
	}
	
//	subway 계정 그래프
	@RequestMapping("/subwayTotalNumber")
	@ResponseBody
	public int subwayTotalNumber(Model m) {
		int n = dataService.subwayTotalNumber();
		m.addAttribute("subwayTotalNumber",n);
		return n;
	}
	@RequestMapping("/subwayMaskNumber")
	@ResponseBody
	public int subwayMaskNumber(Model m) {
		int n = dataService.subwayMaskNumber(); // DB에서 카운팅된 숫자를 호출한다. Mapper에 조건식(ex userid=(#userid)이 없으므로 메서드 실행시 바로 값을 호출.
		m.addAttribute("subwayMaskNumber",n); // 모델에 값을 저장해준다
		return n;
	}
	@RequestMapping("/subwayMissmaskNumber")
	@ResponseBody
	public int subwayMissmaskNumber(Model m) {
		int n = dataService.subwayMissmaskNumber();
		m.addAttribute("subwayMaskNumber",n);
		return n;
	}
	@RequestMapping("/subwayNomaskNumber")
	@ResponseBody
	public int subwayNomaskNumber(Model m) {
		int n = dataService.subwayNomaskNumber();
		m.addAttribute("subwayNomaskNumber",n);
		return n;
	}
	
//	company 계정 그래프
	@RequestMapping("/companyTotalNumber")
	@ResponseBody
	public int companyTotalNumber(Model m) {
		int n = dataService.companyTotalNumber();
		m.addAttribute("companyTotalNumber",n);
		return n;
	}
	@RequestMapping("/companyMaskNumber")
	@ResponseBody
	public int companyMaskNumber(Model m) {
		int n = dataService.companyMaskNumber(); 
		m.addAttribute("companyMaskNumber",n); 
		return n;
	}
	@RequestMapping("/companyMissmaskNumber")
	@ResponseBody
	public int companyMissmaskNumber(Model m) {
		int n = dataService.companyMissmaskNumber();
		m.addAttribute("companyMaskNumber",n);
		return n;
	}
	@RequestMapping("/companyNomaskNumber")
	@ResponseBody
	public int companyNomaskNumber(Model m) {
		int n = dataService.companyNomaskNumber();
		m.addAttribute("companyNomaskNumber",n);
		return n;
	}
	
	

}
