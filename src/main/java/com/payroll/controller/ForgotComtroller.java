package com.payroll.controller;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.payroll.Model.EmployeeDetailsAdmin;
import com.payroll.repository.ForgotPasswordRepository;
import com.payroll.service.EmailService;

@Controller

public class ForgotComtroller {

	@Autowired
	EmployeeDetailsAdmin employeeDetailsAdmin;

	@Autowired
	ForgotPasswordRepository fpr;
	int n = 5;

	static String getRandomString(int n) {

		String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "0123456789" + "abcdefghijklmnopqrstuvxyz";
		StringBuilder sb = new StringBuilder(n);
		for (int i = 0; i < n; i++) {
			int index = (int) (AlphaNumericString.length() * Math.random());
			sb.append(AlphaNumericString.charAt(index));
		}
		return sb.toString();
	}
	
	String otp = getRandomString(n);
	@Autowired
	private EmailService es;

	@RequestMapping("/forgot")
	public String openEmailform(Model model) {
		model.addAttribute("employee", employeeDetailsAdmin);

		return "forgot_email_form";
	}

	@PostMapping("/send-Otp")
	public ModelAndView sendOtp(@ModelAttribute("employee") EmployeeDetailsAdmin employeeDetailsAdmin, ModelAndView mv,
			HttpSession session, @RequestParam("empEmail") String email) {
		System.out.println("Email : " + email);
		System.out.println("The Otp is : " + otp);
		String subject = "OTP Verification For Employee Login Change Password";
		String message = "Verification Otp  is :" + otp;
		String to = email;
		boolean flag = this.es.sendEmail(subject, message, to);
		if (flag) {
			session.setAttribute("otp", otp);
			session.setAttribute("email", email);
			session.setAttribute("id", employeeDetailsAdmin.getEmpId());
			mv.setViewName("VerifyOtp");
		} else {
			mv.setViewName("forgot_email_form");
		}
		return mv;
	}

	@PostMapping("/verify")
	public ModelAndView verifyotp(@RequestParam("myotp") String notp, HttpSession session, ModelAndView mv) {
		String myotp = (String) session.getAttribute("otp");
		String email = (String) session.getAttribute("email");
		if (myotp.equals(notp)) {
			EmployeeDetailsAdmin eda = this.fpr.getempByname(email);
			ArrayList<EmployeeDetailsAdmin>emplist=new ArrayList<>();
			if ((eda == null)||(emplist.contains(eda.getEmpEmail()))) {

				mv.setViewName("forgot_email_form");
				mv.addObject("msg2", "Email Id is not registered");
			} else {
				mv.setViewName("ChangePasswordForm");
			}
		} else {
			mv.addObject("msg", "Wrong otp");
			mv.setViewName("VerifyOtp");
		}
		return mv;
	}
	@PostMapping("/change-Password")
	public ModelAndView changePassword(@RequestParam("newpassword") String newpassword, HttpSession session,
			ModelAndView mv) {
		String email = (String) session.getAttribute("email");
		EmployeeDetailsAdmin eda = this.fpr.getempByname(email);
		eda.setEmpPassword((newpassword));
		this.fpr.save(eda);
		mv.addObject("msg12", "Password Changed Sucessfully!!");
		mv.setViewName("EmployeeLogin");
		return mv;
	}
}
