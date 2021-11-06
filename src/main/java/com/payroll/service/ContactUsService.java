package com.payroll.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.payroll.Model.ContactUs;

@Service
public interface ContactUsService {
	
	public void addQuery(ContactUs contactus);
	public List<ContactUs> viewquery();

	
}
