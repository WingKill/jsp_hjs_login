package edu.sejong.ex.dto;

public class MemberDto {
	private String id;
	private String pw;
	private String email;
	private String address;
	
	public MemberDto() {

	}
	
	public MemberDto(String id, String pw, String email, String address) {
		this.id=id;
		this.pw=pw;
		this.email=email;
		this.address=address;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
