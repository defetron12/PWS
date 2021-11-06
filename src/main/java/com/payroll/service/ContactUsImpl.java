package com.payroll.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.payroll.Model.ContactUs;
import com.payroll.repository.ContactUsRepository;
@Service
public class ContactUsImpl implements ContactUsService {
	
	
	@Autowired
	ContactUsRepository ContactUsRepository;

	@Override
	public void addQuery(ContactUs contactus) {
		// TODO Auto-generated method stub
		
		ContactUsRepository.save(contactus);
		
	}

	@Override
	public List<ContactUs> viewquery() {
		// TODO Auto-generated method stub
		List<ContactUs> querylist = ContactUsRepository.findAll();
		return querylist;
	}
	
	

}
