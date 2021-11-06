package com.payroll.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.payroll.Model.EmployeeDetailsAdmin;
import com.payroll.service.EmployeeDetailsAdminService;

@Controller
public class EmployeeDetailsAdminController {
	

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	EmployeeDetailsAdmin employeeDetailsAdmin;

	@Autowired
	EmployeeDetailsAdminService employeeDetailsAdminService;

	String msg;
	@RequestMapping("adddetail")
	public String addMenu(Model model) {
		model.addAttribute("employeeDetailsAdmin", employeeDetailsAdmin);
		return "AdminEmployeeRegistration";
	}
	@RequestMapping("submitform") 
	public ModelAndView addEmplo( HttpServletRequest request ,@ModelAttribute("employeeDetailsAdmin") EmployeeDetailsAdmin employeeDetailsAdmin,HttpSession session, ModelAndView mv) 
			throws UnsupportedEncodingException, MessagingException 
	{ 
		session.setAttribute("empId", employeeDetailsAdmin.getEmpId());
		/*int empId1 = (int) session.getAttribute("empId");
		String empName = request.getParameter("empName");
		String empEmail = request.getParameter("empEmail");
		String empPassword = request.getParameter("empPassword");
	   
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper employeeMail = new MimeMessageHelper(message);

		// Employee email body
		String mailSubject = empName + " Welcome to Intellect! ";

		String mailContent = "<p><b>User Name:</b> " + empName + "</p>";
		mailContent += "<p><b>E-mail:</b>" + empEmail + "</p>";
		mailContent += "<p><b>Employee ID:</b>" + empId1 + "</p>";
		mailContent += "<p><b>Password:</b>" + empPassword + "</p>";
		

		employeeMail.setFrom("intellectdesignarena2011@gmail.com", "Intellect Design Arena"); // intellect mail
		employeeMail.setTo(empEmail); // Employee mail
		employeeMail.setSubject(mailSubject);
		employeeMail.setText("<html>" + "<body>" + "<div><h3><strong>Dear "+empName
				+ "</strong></h3><div><br>You have been successfully added to our Payroll System</div>"
				+ "<div>"

				+ "<div><br><h4>Your can now login now! with the below credentials</h4></div>"
				+ "<br><p><b>Employee ID:</b> " +empId1 + "</p>" + "<p><b>Password:</b>" + empPassword + "</p>"
				+ "<p><b>Email:</b>" + empEmail + "</p>" 
				+ "<div><br>Have a great day!</div>"

				+ "</div>"

				+ "<div><img class=\"width-100 image-shadow bottom-margins-images\" style=\"width: 65%; height:100\" title=\"Intellect-ranks-ibs-banner\" src=\"https://www.intellectdesign.com/wp-content/uploads/2021/06/Intellect-ranks-ibs-banner.jpg\" alt=\"Intellect-ranks-ibs-banner\" align=\"top\"></div>"

				+ "<div><br><strong><h3>Thanks & Regards</strong></h3></div>"
				+ "<div><h3>Intellect Design Arena Ltd</h3><div>" + "<div><h3>Address: Plot No. 3/G3,</h3></div>"
				+ "<div><h3>Siruseri, SIPCOT IT Park,</h3></div> " + "</div></body>"
				+ "<div><img width=\"173\" height=\"57\" src=\"https://www.intellectdesign.com/wp-content/uploads/2020/04/intellect-logo-1.png\" alt=\"Intellect-ranks-ibs-banner\" align=\"top\"></div>"
				+ "</html>", true);

		mailSender.send(message);*/
		
	  employeeDetailsAdminService.addNewEmployee(employeeDetailsAdmin);
	 mv.addObject("msg","Employee Added Successfully And Mail Sent!");
	 mv.setViewName("AdminEmployeeRegistration");
	  return mv;
	 }
	
	@RequestMapping("viewdetails")
	public ModelAndView getAllEmployee(ModelAndView mv) {
		List<EmployeeDetailsAdmin> employeeDetailsAdmin = employeeDetailsAdminService.getAllEmployee();
		mv.addObject("employeeDetailsAdmins", employeeDetailsAdmin);
		mv.addObject("msg", msg);
		mv.setViewName("ViewAllEmployeeAdmin");
		return mv;
	}
	
	@RequestMapping("deleteEmployee/{empId}")
	public String deleteUser(@PathVariable int empId) {
		employeeDetailsAdminService.deleteEmployee(empId);
		return "redirect:/updatedetails";
	}
	
	@RequestMapping("/getbyid")
	public ModelAndView getById(@RequestParam("empId") int empId, ModelAndView mv) {
		 EmployeeDetailsAdmin employeedetails = employeeDetailsAdminService.getEmployeeById(empId);
		mv.addObject("employeedetails",employeedetails );
		mv.setViewName("EmployeeDetailsAdmin");
		return mv;
	}
	@RequestMapping("getbyemployeeid")
	public String getemployee() {
		return "getbyidform";
	}

	@RequestMapping("/updatedetails/{empId}")
	public String getUpdateUser(@PathVariable int empId, Model m) {
		EmployeeDetailsAdmin employeeupdate = employeeDetailsAdminService.getEmployeeById(empId);
		m.addAttribute("employeeupdate", employeeupdate);
		return "/UpdateEmplyeeForm";

	}

	@RequestMapping("saveupdate")
	public ModelAndView saveUpdate(@ModelAttribute("employeeDetailsAdmins") EmployeeDetailsAdmin employeeDetailsAdmins,ModelAndView mv) {
		employeeDetailsAdminService.updateEmployee(employeeDetailsAdmins);
		mv.addObject("msg14", "Updated Sucessfully");
		mv.setViewName("redirect:/viewdetails");
		return mv;
		

	}
	@RequestMapping("home")
	public String Adminhome() {
		return "AdminHome";
	}

	@RequestMapping("updatedetails")

	public ModelAndView getAllEmployeeupdate(ModelAndView mv) {
		List<EmployeeDetailsAdmin> employeeDetailsAdmin = employeeDetailsAdminService.getAllEmployee();
		mv.addObject("employeeDetailsAdmins", employeeDetailsAdmin);
		mv.addObject("msg", msg);
		mv.setViewName("updatelist");
		return mv;

	}
}
