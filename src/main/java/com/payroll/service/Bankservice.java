package com.payroll.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.payroll.Model.Bank;
import com.payroll.Model.EmployeeDetailsAdmin;

@Service
public interface Bankservice {
	public void addbank(Bank bank);
	public List<Bank> viewbankdetails();}
