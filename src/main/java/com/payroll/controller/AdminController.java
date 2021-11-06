package com.payroll.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.payroll.Model.Admin;
import com.payroll.service.AdminService;


@Controller
public class AdminController {
	@Autowired
	Admin admin;
	@Autowired
	AdminService adminService;

	@RequestMapping("/admin")
	public String login(Model model) {
		model.addAttribute("admin", admin);
		return "/";
		
	}

	@RequestMapping("validateadmin")
	public ModelAndView validateadmin(@ModelAttribute("admin") Admin admin, ModelAndView mv) {
	Admin adminvalid = adminService.adminvalidation(admin);
	if(adminvalid!=null) {
		
	    mv.setViewName("AdminHome");
	} 
	  else {
		  mv.addObject("msg1","Incorrect Admin credentials you can't login");
		  mv.setViewName("AdminLogin");
	  }
	return mv;
	}

}
