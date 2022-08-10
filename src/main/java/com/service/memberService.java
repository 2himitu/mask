package com.service;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.memberDAO;
import com.dto.emailDTO;
import com.dto.memberDTO;

@Service
public class memberService {

	@Autowired
	memberDAO dao;

	public int memberAdd(memberDTO dto) {
		int n = dao.memberAdd(dto);
		return n;
	}// end memberAdd
	public int emailAdd(emailDTO dto) {
		int n = dao.emailAdd(dto);
		return n;
	}// end emailAdd
	
	public memberDTO login(Map<String, String> map) {
		memberDTO dto = dao.login(map);
		return dto;
	}// end login
	
}// end class
