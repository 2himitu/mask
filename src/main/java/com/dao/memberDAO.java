package com.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dto.emailDTO;
import com.dto.memberDTO;


@Repository
public class memberDAO {

	@Autowired
	SqlSessionTemplate session;
	
	public int memberAdd(memberDTO dto) {
		int n = session.insert("memberMapper.memberAdd", dto);
		return n;
	}
	public int emailAdd(emailDTO dto) {
		int n = session.insert("memberMapper.emailAdd", dto);
		return n;
	}
	public memberDTO login(Map<String, String> map) {
		memberDTO n = session.selectOne("memberMapper.login", map);
		return n;
	}

}
