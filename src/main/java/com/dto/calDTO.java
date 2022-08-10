package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("calDTO")
public class calDTO {

	int totalNumber;
	int maskNumber;
	int missmaskNumber;
	int nomaskNumber;
	String userid;
	String settime;
	
	public calDTO() {
		super();
	}

	public calDTO(int totalNumber, int maskNumber, int missmaskNumber, int nomaskNumber, String userid,
			String settime) {
		super();
		this.totalNumber = totalNumber;
		this.maskNumber = maskNumber;
		this.missmaskNumber = missmaskNumber;
		this.nomaskNumber = nomaskNumber;
		this.userid = userid;
		this.settime = settime;
	}

	public int getTotalNumber() {
		return totalNumber;
	}

	public void setTotalNumber(int totalNumber) {
		this.totalNumber = totalNumber;
	}

	public int getMaskNumber() {
		return maskNumber;
	}

	public void setMaskNumber(int maskNumber) {
		this.maskNumber = maskNumber;
	}

	public int getMissmaskNumber() {
		return missmaskNumber;
	}

	public void setMissmaskNumber(int missmaskNumber) {
		this.missmaskNumber = missmaskNumber;
	}

	public int getNomaskNumber() {
		return nomaskNumber;
	}

	public void setNomaskNumber(int nomaskNumber) {
		this.nomaskNumber = nomaskNumber;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getSettime() {
		return settime;
	}

	public void setSettime(String settime) {
		this.settime = settime;
	}

	@Override
	public String toString() {
		return "calDTO [totalNumber=" + totalNumber + ", maskNumber=" + maskNumber
				+ ", missmaskNumber=" + missmaskNumber + ", nomaskNumber=" + nomaskNumber + ", userid=" + userid
				+ ", settime=" + settime + "]";
	}
	
	
	
}
