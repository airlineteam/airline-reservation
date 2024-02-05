package com.landers.airline.dto;

public class UserDto {
	
	private String user_id;
	private String username;
	private String password;
	private String phonenumber;
	private String address;
	
	public UserDto() {
		
	}

	public UserDto(String user_id, String username, String password, String phonenumber, String address) {
		super();
		this.user_id = user_id;
		this.username = username;
		this.password = password;
		this.phonenumber = phonenumber;
		this.address = address;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "UserDto [user_id=" + user_id + ", username=" + username + ", password=" + password + ", phonenumber="
				+ phonenumber + ", address=" + address + "]";
	}
	
	
}
