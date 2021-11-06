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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.payroll.Model.Bank;
import com.payroll.Model.EmployeeDetailsAdmin;
import com.payroll.service.Bankservice;

@Controller
public class BankController {
	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	Bank bank;
	@Autowired
	Bankservice bankservice;

	@RequestMapping("/updateBank")

	public String bankdetails(Model model) {

		model.addAttribute("bank", bank);
		return "BankDetails";

	}

	@RequestMapping("/submitBank")
	public ModelAndView addbank(HttpServletRequest request, @ModelAttribute("Bank") Bank bank,
			@ModelAttribute("employeeDetailsAdmin") EmployeeDetailsAdmin employeeDetailsAdmin, HttpSession session,
			ModelAndView mv) throws UnsupportedEncodingException, MessagingException {
		session.setAttribute("bankempId", bank.getBankId());
		int bankempId = (int) session.getAttribute("bankempId");

		int sessionempid = (int) session.getAttribute("empId");
	

			mv.addObject("msg1", "Bank Details Updated And Sent!");

		session.setAttribute("BankId", bank.getBankId());
			
			/*String empId = request.getParameter("empId");
			String empName = request.getParameter("empName");
			String empEmail = request.getParameter("empEmail");
			int bankId = (int) session.getAttribute("BankId");
			String bankName = request.getParameter("bankName");
			String accountNumber = request.getParameter("accountNumber");
			String accountType = request.getParameter("accountType");
			String accountIfsc = request.getParameter("accountIfsc");

			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper employeeMail = new MimeMessageHelper(message);

			// Employee email body
			String mailSubject = "Hello " + empName
					+ " Your Bank Details has been added successfully to the payroll Management System ";
			String mailContent = "<p><b>User Name:</b> " + empName + "</p>";
			mailContent += "<p><b>E-mail:</b>" + empEmail + "</p>";

			employeeMail.setFrom("intellectdesignarena2011@gmail.com", "Intellect Design Arena"); // intellect mail
			employeeMail.setTo(empEmail); // Employee mail
			employeeMail.setSubject(mailSubject);
			employeeMail.setText("<html>" + "<body>" + "<div><h3><strong>Dear " + empName

					+ "<br><p><b>UserName:</b> " + empName + "</p>"

					+ "</strong></h3><div><br>Bank Details of Payroll Managenent System </div>" + "<div>"

					+ "<div><br><h4>Your transaction gateway is enabled</h4></div>"
					+ "<div><br><h4>Now you can now receive the salary to the below credentials</h4></div>"

					+ "<br><p><b>Bank Name:</b> " + bankName + "</p>" + "<p><b>Account Number:</b>" + accountNumber
					+ "</p>" + "<p><b>Account Type:</b>" + accountType + "</p>" + "<p><b>IFSC code:</b>" + accountIfsc
					+ "</p>" + "<div><br>Have a great day!</div>"

					+ "</div>"

					+ "<div><img class=\"width-100 image-shadow bottom-margins-images\" style=\"width: 65%; height:100\" title=\"Intellect-ranks-ibs-banner\" src=\"https://www.intellectdesign.com/wp-content/uploads/2021/06/Intellect-ranks-ibs-banner.jpg\" alt=\"Intellect-ranks-ibs-banner\" align=\"top\"></div>"

					+ "<div><br><strong><h3>Thanks & Regards</strong></h3></div>"
					+ "<div><h3>Intellect Design Arena Ltd</h3><div>" + "<div><h3>Address: Plot No. 3/G3,</h3></div>"
					+ "<div><h3>Siruseri, SIPCOT IT Park,</h3></div> " + "</div></body>"
					+ "<div><img width=\"173\" height=\"57\" src=\"https://www.intellectdesign.com/wp-content/uploads/2020/04/intellect-logo-1.png\" alt=\"Intellect-ranks-ibs-banner\" align=\"top\"></div>"
					+ "</html>", true);

			mailSender.send(message);*/

			bankservice.addbank(bank);
			mv.setViewName("BankDetails");
		
		return mv;
	}

	@RequestMapping("/EmployeeBankDetailsViewAdmin")
	public ModelAndView viewquery(ModelAndView mv) {
		List<Bank> Banklist = bankservice.viewbankdetails();
		mv.addObject("Banklist", Banklist);
		mv.setViewName("viewBankDetails");
		return mv;

	}

}
