package com.payroll.Model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Entity
@Component
@Table(name = "payrollEmployee")
public class EmployeeDetailsAdmin {

	@Id
	private int empId;
	private String empName;
	private int empAge;
	private String empEmail;
	private String empGender;
	private Long empPhoneNumber;
	private String empGrade;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date empJoinDate;
	private String empLocation;
	private int empSalary;
	private String empPassword;
	private String empDateofBirth;
	public EmployeeDetailsAdmin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EmployeeDetailsAdmin(int empId,String empName, int empAge, String empEmail) {
		super();
		this.empName = empName;
		this.empAge = empAge;
		this.empEmail = empEmail;
	}
	public EmployeeDetailsAdmin(int empId, String empName, int empAge, String empEmail, String empGender,
			Long empPhoneNumber, String empGrade, Date empJoinDate, String empLocation, int empSalary,
			String empPassword, String empDateofBirth) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.empAge = empAge;
		this.empEmail = empEmail;
		this.empGender = empGender;
		this.empPhoneNumber = empPhoneNumber;
		this.empGrade = empGrade;
		this.empJoinDate = empJoinDate;
		this.empLocation = empLocation;
		this.empSalary = empSalary;
		this.empPassword = empPassword;
		this.empDateofBirth = empDateofBirth;
	}
	public EmployeeDetailsAdmin(int empId, String empName, int empAge, String empEmail, String empGender,
			Long empPhoneNumber, String empGrade, String empLocation, int empSalary, String empPassword, String empDateofBirth) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.empAge = empAge;
		this.empEmail = empEmail;
		this.empGender = empGender;
		this.empPhoneNumber = empPhoneNumber;
		this.empGrade = empGrade;
		this.empLocation = empLocation;
		this.empSalary = empSalary;
		this.empPassword = empPassword;
		this.empDateofBirth = empDateofBirth;
	}
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public int getEmpAge() {
		return empAge;
	}
	public void setEmpAge(int empAge) {
		this.empAge = empAge;
	}
	public String getEmpEmail() {
		return empEmail;
	}
	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}
	public String getEmpGender() {
		return empGender;
	}
	public void setEmpGender(String empGender) {
		this.empGender = empGender;
	}
	public Long getEmpPhoneNumber() {
		return empPhoneNumber;
	}
	public void setEmpPhoneNumber(Long empPhoneNumber) {
		this.empPhoneNumber = empPhoneNumber;
	}
	public String getEmpGrade() {
		return empGrade;
	}
	public void setEmpGrade(String empGrade) {
		this.empGrade = empGrade;
	}
	public Date getEmpJoinDate() {
		return empJoinDate;
	}
	public void setEmpJoinDate(Date empJoinDate) {
		this.empJoinDate = empJoinDate;
	}
	public String getEmpLocation() {
		return empLocation;
	}
	public void setEmpLocation(String empLocation) {
		this.empLocation = empLocation;
	}
	public int getEmpSalary() {
		return empSalary;
	}
	public void setEmpSalary(int empSalary) {
		this.empSalary = empSalary;
	}
	public String getEmpPassword() {
		return empPassword;
	}
	public void setEmpPassword(String empPassword) {
		this.empPassword = empPassword;
	}

	public String getEmpDateofBirth() {
		return empDateofBirth;
	}

	public void setEmpDateofBirth(String empDateofBirth) {
		this.empDateofBirth = empDateofBirth;
	}

	@Override
	public String toString() {
		return "EmployeeDetailsAdmin [empId=" + empId + ", empName=" + empName + ", empAge=" + empAge + ", empEmail="
				+ empEmail + ", empGender=" + empGender + ", empPhoneNumber=" + empPhoneNumber + ", empGrade="
				+ empGrade + ", empJoinDate=" + empJoinDate + ", empLocation=" + empLocation + ", empSalary="
				+ empSalary + ", empPassword=" + empPassword + ", empDateofBirth=" + empDateofBirth + "]";
	}
	}