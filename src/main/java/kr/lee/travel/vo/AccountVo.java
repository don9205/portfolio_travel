package kr.lee.travel.vo;

import java.util.Date;

public class AccountVo {

	private String name;
	private String id;
	private String pw;
	private String gender;
	private String email;
	private Date registed_date;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getRegisted_date() {
		return registed_date;
	}
	public void setRegisted_date(Date registed_date) {
		this.registed_date = registed_date;
	}
	
	@Override
	public String toString() {
		return "AccountVo [name=" + name + ", id=" + id + ", pw=" + pw + ", gender=" + gender + ", email=" + email
				+ ", registed_date=" + registed_date + "]";
	}
	
}
