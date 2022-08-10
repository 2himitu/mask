package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("memberDTO")
public class memberDTO {
	private String userid;
	private String passwd;
	private String username;
	private String place;
	
	
	public memberDTO() {
		super();
	}


	public memberDTO(String userid, String passwd, String username, String place) {
		super();
		this.userid = userid;
		this.passwd = passwd;
		this.username = username;
		this.place = place;
	}


	public String getUserid() {
		return userid;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public String getPasswd() {
		return passwd;
	}


	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPlace() {
		return place;
	}


	public void setPlace(String place) {
		this.place = place;
	}


	@Override
	public String toString() {
		return "memberDTO [userid=" + userid + ", passwd=" + passwd + ", username=" + username + ", place=" + place
				+ "]";
	}
	
	
}
