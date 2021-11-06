package com.payroll.controller;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.payroll.Model.EmployeeDetailsAdmin;
import com.payroll.service.EmployeeDetailsAdminService;
@Controller

public class PayslipController {
	

	@Autowired
	EmployeeDetailsAdmin employeeDetailsAdmin;

	@Autowired
	EmployeeDetailsAdminService employeeDetailsAdminService;

	
	@RequestMapping("getbyemployeeidpayslip")
	public String getemployeepayslip() {
		return "getbyidpayslipfrom";
	}
	@RequestMapping("/getbyidpayslip")
	public ModelAndView getByIdpayslip(@RequestParam("empId") int empId, ModelAndView mv) {
		EmployeeDetailsAdmin employeedetails = employeeDetailsAdminService.getEmployeeByIdPayslip(empId);
		mv.addObject("employeedetails", employeedetails);
		mv.setViewName("ViewPayslipEmployee");
		return mv;
	}
	
	@RequestMapping("/employeepayslipview/{empId}")
	public ModelAndView employeepayslipview(@PathVariable int empId,ModelAndView mv) {
		EmployeeDetailsAdmin employeedetails = employeeDetailsAdminService.getEmployeeByIdPayslip(empId);
		mv.addObject("employeedetails", employeedetails);
		mv.setViewName("Employeepayslip");
		return mv;
		
	}
	@RequestMapping("employeehome")
	public String Employeepayslipreturn()
	{
		return "EmployeeHome";
	}
	
}
