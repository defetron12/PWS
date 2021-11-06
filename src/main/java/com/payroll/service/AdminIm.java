package com.payroll.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.payroll.Model.Admin;
import com.payroll.repository.AdminRepositiry;

@Service
public class AdminIm implements AdminService {
	@Autowired
	AdminRepositiry adminRepositiry;

	@Override
	public Admin adminvalidation(Admin admin) {
		// TODO Auto-generated method stub
		Admin adminvalid =adminRepositiry.findByLoginData(admin.getAdminEmail(),admin.getAdminPassword());

		return adminvalid;
	}

}
