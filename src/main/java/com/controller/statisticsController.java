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
	
// ��ķ �Կ��� ���� �ð����� �α��� �� ���̵� ����,total,mask,nomask,missmask,����ð��� �Ѿ��. 
	
	@RequestMapping("/plus")
	public String plus(HttpServletRequest request, calDTO dto,HttpSession session) {
		
		memberDTO mDTO = (memberDTO) session.getAttribute("login");
		String userid = mDTO.getUserid();
		dto.setUserid(userid);	// session�� �ִ� id������ calDTO�� ����
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
		String settime  = dateFormat.format(new Date());
		dto.setSettime(settime);	// �ý��� �ð�(����ð�)�� calDTO�� ����
		
		int totalNumber= Integer.parseInt(request.getParameter("totalNumber"));
		int maskNumber= Integer.parseInt(request.getParameter("maskNumber"));
		int missmaskNumber= Integer.parseInt(request.getParameter("missmaskNumber"));
		int nomaskNumber= Integer.parseInt(request.getParameter("nomaskNumber"));
		
		dto.setTotalNumber(totalNumber);
		dto.setTotalNumber(maskNumber);
		dto.setTotalNumber(missmaskNumber);
		dto.setTotalNumber(nomaskNumber);
			// videoPart.jsp ���� ���� �� ������ value�� �޾� calDTO�� ����
				
		calService.plus(dto);

		return "forward:/";
	}

	
	
//	1st Total Number
	
	@RequestMapping("/TotalNumber_1st")
	@ResponseBody
	public int TotalNumber_1st(Model m) {
		int n = dataService.TotalNumber_1st(); // DB���� ī���õ� ���ڸ� ȣ���Ѵ�. Mapper�� ���ǽ�(ex userid=(#userid)�� �����Ƿ� �޼��� ����� �ٷ� ���� ȣ��.
		m.addAttribute("TotalNumber_1st",n); // �𵨿� ���� �������ش�
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
		int n = dataService.TotalNumber_2nd(); // DB���� ī���õ� ���ڸ� ȣ���Ѵ�. Mapper�� ���ǽ�(ex userid=(#userid)�� �����Ƿ� �޼��� ����� �ٷ� ���� ȣ��.
		m.addAttribute("TotalNumber_2nd",n); // �𵨿� ���� �������ش�
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
		int n = dataService.TotalNumber_3rd(); // DB���� ī���õ� ���ڸ� ȣ���Ѵ�. Mapper�� ���ǽ�(ex userid=(#userid)�� �����Ƿ� �޼��� ����� �ٷ� ���� ȣ��.
		m.addAttribute("TotalNumber_3rd",n); // �𵨿� ���� �������ش�
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
		int n = dataService.TotalNumber_4th(); // DB���� ī���õ� ���ڸ� ȣ���Ѵ�. Mapper�� ���ǽ�(ex userid=(#userid)�� �����Ƿ� �޼��� ����� �ٷ� ���� ȣ��.
		m.addAttribute("TotalNumber_4th",n); // �𵨿� ���� �������ش�
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

	
	
	
	
	
	
	
	
	
//	system ���� �׷���
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
		int n = dataService.systemMaskNumber(); // DB���� ī���õ� ���ڸ� ȣ���Ѵ�. Mapper�� ���ǽ�(ex userid=(#userid)�� �����Ƿ� �޼��� ����� �ٷ� ���� ȣ��.
		m.addAttribute("SytemMaskNumber",n); // �𵨿� ���� �������ش�
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
	
//	subway ���� �׷���
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
		int n = dataService.subwayMaskNumber(); // DB���� ī���õ� ���ڸ� ȣ���Ѵ�. Mapper�� ���ǽ�(ex userid=(#userid)�� �����Ƿ� �޼��� ����� �ٷ� ���� ȣ��.
		m.addAttribute("subwayMaskNumber",n); // �𵨿� ���� �������ش�
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
	
//	company ���� �׷���
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
