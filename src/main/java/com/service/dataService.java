package com.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.dataDAO;

@Service
public class dataService {

	@Autowired
	dataDAO dao;

//	1st Total Number
	
	public int TotalNumber_1st() {
		int n = dao.TotalNumber_1st();
		return n;
	}
	public int MaskNumber_1st() {
		int n = dao.MaskNumber_1st();
		return n;
	}
	public int MissMaskNumber_1st() {
		int n = dao.MissMaskNumber_1st();
		return n;
	}
	public int NoMaskNumber_1st() {
		int n = dao.NoMaskNumber_1st();
		return n;
	}
//	2nd Total Number
	
	public int TotalNumber_2nd() {
		int n = dao.TotalNumber_2nd();
		return n;
	}
	public int MaskNumber_2nd() {
		int n = dao.MaskNumber_2nd();
		return n;
	}
	public int MissMaskNumber_2nd() {
		int n = dao.MissMaskNumber_2nd();
		return n;
	}
	public int NoMaskNumber_2nd() {
		int n = dao.NoMaskNumber_2nd();
		return n;
	}
//	3rd Total Number
	
	public int TotalNumber_3rd() {
		int n = dao.TotalNumber_3rd();
		return n;
	}
	public int MaskNumber_3rd() {
		int n = dao.MaskNumber_3rd();
		return n;
	}
	public int MissMaskNumber_3rd() {
		int n = dao.MissMaskNumber_3rd();
		return n;
	}
	public int NoMaskNumber_3rd() {
		int n = dao.NoMaskNumber_3rd();
		return n;
	}
//	4th Total Number
	
	public int TotalNumber_4th() {
		int n = dao.TotalNumber_4th();
		return n;
	}
	public int MaskNumber_4th() {
		int n = dao.MaskNumber_4th();
		return n;
	}
	public int MissMaskNumber_4th() {
		int n = dao.MissMaskNumber_4th();
		return n;
	}
	public int NoMaskNumber_4th() {
		int n = dao.NoMaskNumber_4th();
		return n;
	}
	
	
	
	
	
	
	
	
//	system 계정 그래프
	
	public int systemTotalNumber() {
		int n = dao.systemTotalNumber();
		return n;
	}
	public int systemMaskNumber() {
		int n = dao.systemMaskNumber();
		return n;
	}
	public int systemMissmaskNumber() {
		int n = dao.systemMissmaskNumber();
		return n;
	}
	public int systemNomaskNumber() {
		int n = dao.systemNomaskNumber();
		return n;
	}
	
//	subway 계정 그래프
	public int subwayTotalNumber() {
		int n = dao.subwayTotalNumber();
		return n;
	}
	public int subwayMaskNumber() {
		int n = dao.subwayMaskNumber();
		return n;
	}
	public int subwayMissmaskNumber() {
		int n = dao.subwayMissmaskNumber();
		return n;
	}
	public int subwayNomaskNumber() {
		int n = dao.subwayNomaskNumber();
		return n;
	}
	
//	company 계정 그래프
	public int companyTotalNumber() {
		int n = dao.companyTotalNumber();
		return n;
	}
	public int companyMaskNumber() {
		int n = dao.companyMaskNumber();
		return n;
	}
	public int companyMissmaskNumber() {
		int n = dao.companyMissmaskNumber();
		return n;
	}
	public int companyNomaskNumber() {
		int n = dao.companyNomaskNumber();
		return n;
	}

	
}// end class
