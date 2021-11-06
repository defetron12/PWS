package com.payroll.service;

import org.springframework.stereotype.Service;

import com.payroll.Model.Admin;

@Service
public interface AdminService {
	
	public Admin adminvalidation(Admin admin);

}
