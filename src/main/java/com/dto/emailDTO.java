package com.dto;

import org.apache.ibatis.type.Alias;

@Alias("emailDTO")
public class emailDTO {
	String email;
	
	public emailDTO() {
		super();
	}

	public emailDTO(String email) {
		super();
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "memberDTO [email=" + email + "]";
	}
	
	
	
}
