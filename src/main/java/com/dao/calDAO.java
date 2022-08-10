package com.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.calDTO;

@Repository
public class calDAO {

	@Autowired
	SqlSessionTemplate session;
	
	public int plus(calDTO dto) {
		int n = session.insert("calMapper.plus", dto);
		return n;
	}
}
