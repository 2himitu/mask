package com.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.calDAO;
import com.dto.calDTO;

@Service
public class calService {

	@Autowired
	calDAO dao;

	public int plus(calDTO dto) {
		int n = dao.plus(dto);
		return n;
	}

	
}// end class
