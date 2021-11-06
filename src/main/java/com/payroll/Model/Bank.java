package com.payroll.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Component
@Table(name = "payrollBank")
public class Bank {
	@Id
	private int bankempId;
	private String empName;
	private String empEmail;

	@GeneratedValue(strategy = GenerationType.AUTO)
	private int bankId;
	private long accountNumber;
	private String bankName;
	private String accountType;
	private String accountIfsc;

	public Bank(int bankempId, String empName, String empEmail, int bankId, long accountNumber, String bankName,
			String accountType, String accountIfsc) {
		super();
		this.bankempId = bankempId;
		this.empName = empName;
		this.empEmail = empEmail;
		this.bankId = bankId;
		this.accountNumber = accountNumber;
		this.bankName = bankName;
		this.accountType = accountType;
		this.accountIfsc = accountIfsc;
	}

	public Bank() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getBankempId() {
		return bankempId;
	}

	public void setBankempId(int bankempId) {
		this.bankempId = bankempId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpEmail() {
		return empEmail;
	}

	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}

	public int getBankId() {
		return bankId;
	}

	public void setBankId(int bankId) {
		this.bankId = bankId;
	}

	public long getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public String getAccountIfsc() {
		return accountIfsc;
	}

	public void setAccountIfsc(String accountIfsc) {
		this.accountIfsc = accountIfsc;
	}

}
