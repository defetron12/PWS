package com.payroll.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.payroll.Model.Bank;
import com.payroll.Model.EmployeeDetailsAdmin;
import com.payroll.repository.BankRepository;

@Service
public class BankImplementation implements Bankservice {

	@Autowired
	BankRepository bankRepository;
	
	
	@Override
	public void addbank(Bank bank) {
		// TODO Auto-generated method stub
		bankRepository.save(bank);

	}

	@Override
	public List<Bank> viewbankdetails() {
		// TODO Auto-generated method stub
		List<Bank> Banklist = bankRepository.findAll();
		return Banklist;
	}

	
}
