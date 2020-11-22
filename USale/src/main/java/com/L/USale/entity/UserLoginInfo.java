package com.L.USale.entity;

import javax.persistence.Entity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.L.USale.model.UserModel;

@Component
@Scope("session")
public class UserLoginInfo {
	
	UserModel user;
	
	public UserLoginInfo() {
		
	}

	public UserModel getUser() {
		return user;
	}

	public void setUser(UserModel user) {
		this.user = user;
	}
	
	

}
