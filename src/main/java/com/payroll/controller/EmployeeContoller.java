package com.payroll.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.payroll.Model.EmployeeDetailsAdmin;
import com.payroll.service.EmployeeDetailsAdminService;

@Controller
public class EmployeeContoller {

	@Autowired
	EmployeeDetailsAdmin employeeDetailsAdmin;

	@Autowired
	EmployeeDetailsAdminService employeeDetailsAdminService;

	@RequestMapping("/employeeLogin")
	public String employeeLogin(Model model) {
		model.addAttribute("employeeDetailsAdmin", employeeDetailsAdmin);
		return "EmployeeLogin";

	}
	@RequestMapping("/validateEmployee")
	public ModelAndView validateEmployee(@RequestParam("empId") Integer empId,@ModelAttribute("employee") EmployeeDetailsAdmin eda,
			ModelAndView mv,HttpSession session) {
		EmployeeDetailsAdmin empvalid = employeeDetailsAdminService.employeevalidation(eda);
		if (empvalid != null) {
			session.setAttribute("empId", empId);
			
			mv.setViewName("EmployeeHome");
		} else {
			mv.addObject("msg1", "Incorrect Employee credentials you can't login");
			mv.setViewName("EmployeeLogin");
		}
		return mv;
	}	
}
