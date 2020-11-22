package com.L.USale.model;

import com.L.USale.entity.User;

public class UserModel {
	
	private Integer id;
    private String userName; 
    private String password;
    private String phoneNumber;
    private String address;
    private Double balance;
    
    public UserModel(User user) {
    	this.id = user.getId();
		this.userName = user.getUserName();
		this.password = user.getPassword();
		this.phoneNumber = user.getPhoneNumber();
		this.address = user.getAddress();
		this.balance = user.getBalance();
    }
    
    public UserModel(Integer id, String userName, String password, String phoneNumber, String address, Double balance) {
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.balance = balance;
	}
    
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Double getBalance() {
		return balance;
	}
	public void setBalance(Double balance) {
		this.balance = balance;
	}
}
