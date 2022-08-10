package com.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class dataDAO {

	@Autowired
	SqlSessionTemplate session;
	
//	1st Total Number
	
	public int TotalNumber_1st() {
		int n = session.selectOne("dataMapper.TotalNumber_1st");
		return n;
	}
	public int MaskNumber_1st() {
		int n = session.selectOne("dataMapper.MaskNumber_1st");
		return n;
	}
	public int MissMaskNumber_1st() {
		int n = session.selectOne("dataMapper.MissMaskNumber_1st");
		return n;
	}
	public int NoMaskNumber_1st() {
		int n = session.selectOne("dataMapper.NoMaskNumber_1st");
		return n;
	}
//	2nd Total Number
	
	public int TotalNumber_2nd() {
		int n = session.selectOne("dataMapper.TotalNumber_2nd");
		return n;
	}
	public int MaskNumber_2nd() {
		int n = session.selectOne("dataMapper.MaskNumber_2nd");
		return n;
	}
	public int MissMaskNumber_2nd() {
		int n = session.selectOne("dataMapper.MissMaskNumber_2nd");
		return n;
	}
	public int NoMaskNumber_2nd() {
		int n = session.selectOne("dataMapper.NoMaskNumber_2nd");
		return n;
	}
//	3rd Total Number
	
	public int TotalNumber_3rd() {
		int n = session.selectOne("dataMapper.TotalNumber_3rd");
		return n;
	}
	public int MaskNumber_3rd() {
		int n = session.selectOne("dataMapper.MaskNumber_3rd");
		return n;
	}
	public int MissMaskNumber_3rd() {
		int n = session.selectOne("dataMapper.MissMaskNumber_3rd");
		return n;
	}
	public int NoMaskNumber_3rd() {
		int n = session.selectOne("dataMapper.NoMaskNumber_3rd");
		return n;
	}
//	4th Total Number
	
	public int TotalNumber_4th() {
		int n = session.selectOne("dataMapper.TotalNumber_4th");
		return n;
	}
	public int MaskNumber_4th() {
		int n = session.selectOne("dataMapper.MaskNumber_4th");
		return n;
	}
	public int MissMaskNumber_4th() {
		int n = session.selectOne("dataMapper.MissMaskNumber_4th");
		return n;
	}
	public int NoMaskNumber_4th() {
		int n = session.selectOne("dataMapper.NoMaskNumber_4th");
		return n;
	}
	
	
	
	
	
	
	
	
	
//	system 계정 그래프
	
	public int systemTotalNumber() {
		int n = session.selectOne("dataMapper.systemTotalNumber");
		return n;
	}
	public int systemMaskNumber() {
		int n = session.selectOne("dataMapper.systemMaskNumber");
		return n;
	}
	public int systemMissmaskNumber() {
		int n = session.selectOne("dataMapper.systemMissmaskNumber");
		return n;
	}
	public int systemNomaskNumber() {
		int n = session.selectOne("dataMapper.systemNomaskNumber");
		return n;
	}
	
//	subway 계정 그래프
	public int subwayTotalNumber() {
		int n = session.selectOne("dataMapper.subwayTotalNumber");
		return n;
	}
	public int subwayMaskNumber() {
		int n = session.selectOne("dataMapper.subwayMaskNumber");
		return n;
	}
	public int subwayMissmaskNumber() {
		int n = session.selectOne("dataMapper.subwayMissmaskNumber");
		return n;
	}
	public int subwayNomaskNumber() {
		int n = session.selectOne("dataMapper.subwayNomaskNumber");
		return n;
	}
	
//	company 계정 그래프
	public int companyTotalNumber() {
		int n = session.selectOne("dataMapper.companyTotalNumber");
		return n;
	}
	public int companyMaskNumber() {
		int n = session.selectOne("dataMapper.companyMaskNumber");
		return n;
	}
	public int companyMissmaskNumber() {
		int n = session.selectOne("dataMapper.companyMissmaskNumber");
		return n;
	}
	public int companyNomaskNumber() {
		int n = session.selectOne("dataMapper.companyNomaskNumber");
		return n;
	}
	
	
}
