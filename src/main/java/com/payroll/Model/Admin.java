package com.payroll.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Component;
@Entity
@Table(name="payrollAdmin")
@Component
@EnableAutoConfiguration

public class Admin {
	
	@Id
	private Integer adminId;
	private String adminEmail;
	private String adminPassword;
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Admin(Integer adminId, String adminEmail, String adminPassword) {
		super();
		this.adminId = adminId;
		this.adminEmail = adminEmail;
		this.adminPassword = adminPassword;
	}
	public Integer getAdminId() {
		return adminId;
	}
	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}
	public String getAdminEmail() {
		return adminEmail;
	}
	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}
	public String getAdminPassword() {
		return adminPassword;
	}
	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}
	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminEmail=" + adminEmail + ", adminPassword=" + adminPassword + "]";
	}
	
}
