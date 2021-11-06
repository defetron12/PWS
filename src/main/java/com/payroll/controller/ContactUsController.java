package com.payroll.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.payroll.Model.ContactUs;
import com.payroll.service.ContactUsService;

@Controller
public class ContactUsController {

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	ContactUs contactus;

	@Autowired
	ContactUsService contactUsService;

	@RequestMapping("/ContactUs")

	public String contactus(Model model) {

		model.addAttribute("contactus", contactus);
		return "ContactUs";

	}

	@PostMapping("/submitcontact")
	public ModelAndView submitContact(HttpServletRequest request, @ModelAttribute("contactus") ContactUs contactus,
			ModelAndView mv) throws UnsupportedEncodingException, MessagingException {
		String name = request.getParameter("name");
		String phoneNo = request.getParameter("phoneNo");
		String email = request.getParameter("email");
		String messagecontent = request.getParameter("message");

		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper adminMail = new MimeMessageHelper(message);

		// admin email body
		String mailSubject = name + " has raised a Query Reach it out!";
		String mailContent = "<p><b>Employee Name:</b> " + name + "</p>";
		mailContent += "<p><b>Associate E-mail:</b>" + email + "</p>";
		mailContent += "<p><b>Associate Number:</b>" + phoneNo + "</p>";
		mailContent += "<p><b>Query content:</b>" + messagecontent + "</p>";
		mailContent += "<hr><img src='cid:logoImage' />";

		adminMail.setFrom("intellectdesignarena2011@gmail.com", "Intellect Design Arena"); // intellect mail
		adminMail.setTo("vvarsha5577@gmail.com"); // admin mail
		adminMail.setSubject(mailSubject);
		adminMail.setText("<html>" + "<body>" + "<div><h3><strong>Dear Admin "
				+ "</strong></h3><div><br>Our employee has raised a query with us. Kindly reach to them ASAP.</div>"
				+ "<div>"

				+ "<div><br><h4>We request to contact and close the request.</h4></div>"
				+ "<br><p><b>Employee Name:</b> " + name + "</p>" + "<p><b>Associate E-mail:</b>" + email + "</p>"
				+ "<p><b>Associate Number:</b>" + phoneNo + "</p>" + "<p><b>Query content:</b>" + messagecontent
				+ "</p>" + "<div><br>Have a great day!</div>"

				+ "</div>"

				+ "<div><img class=\"width-100 image-shadow bottom-margins-images\" style=\"width: 65%; height:100\" title=\"Intellect-ranks-ibs-banner\" src=\"https://www.intellectdesign.com/wp-content/uploads/2021/06/Intellect-ranks-ibs-banner.jpg\" alt=\"Intellect-ranks-ibs-banner\" align=\"top\"></div>"

				+ "<div><br><strong><h3>Thanks & Regards</strong></h3></div>"
				+ "<div><h3>Intellect Design Arena Ltd</h3><div>" + "<div><h3>Address: Plot No. 3/G3,</h3></div>"
				+ "<div><h3>Siruseri, SIPCOT IT Park,</h3></div> " + "</div></body>"
				+ "<div><img width=\"173\" height=\"57\" src=\"https://www.intellectdesign.com/wp-content/uploads/2020/04/intellect-logo-1.png\" alt=\"Intellect-ranks-ibs-banner\" align=\"top\"></div>"
				+ "</html>", true);

		mailSender.send(message);

		MimeMessage message1 = mailSender.createMimeMessage();
		MimeMessageHelper employeeMail = new MimeMessageHelper(message1);
		employeeMail.setTo(email); // employee mail

		// employee email body
		String Title = " Intellect Design Arena Ltd ";

		employeeMail.setSubject(Title);
		employeeMail.setText("<html>" + "<body>" + "<div><h3><strong>Hello " + name
				+ "</strong></h3><div><br><h4>Thank you for getting in touch!</h4></div>" + "<div>"

				+ "<div><br>We appreciate you contacting us.One of our employees happiness members will be getting back to you shortly</h4> </div>"
				+ "<div><br>Thanks in advance for your patience</div>" + "<div><br><h4>Have a great day!</h4></div>"

				+ "</div>"

				+ "</div>"

				+ "<div><img class=\"width-100 image-shadow bottom-margins-images\" style=\"width: 65%; height:100\" title=\"Intellect-ranks-ibs-banner\" src=\"https://www.intellectdesign.com/wp-content/uploads/2021/06/Intellect-ranks-ibs-banner.jpg\" alt=\"Intellect-ranks-ibs-banner\" align=\"top\"></div>"

				+ "<div><br><strong><h3>Thanks & Regards</strong></h3></div>"
				+ "<div><h3>Intellect Design Arena Ltd</h3><div>" + "<div><h3>Address: Plot No. 3/G3,</h3></div>"
				+ "<div><h3>Siruseri, SIPCOT IT Park,</h3></div> " + "</div></body>"
				+ "<div><img width=\"173\" height=\"57\" src=\"https://www.intellectdesign.com/wp-content/uploads/2020/04/intellect-logo-1.png\" alt=\"Intellect-ranks-ibs-banner\" align=\"top\"></div>"
				+ "</html>", true);
		mailSender.send(message1);
		contactUsService.addQuery(contactus);
		mv.setViewName("ContactUsMessage");
		return mv;
	}

	@RequestMapping("/viewquery")
	public ModelAndView viewquery(ModelAndView mv) {
		List<ContactUs> querylist = contactUsService.viewquery();
		mv.addObject("querylist", querylist);
		mv.setViewName("ContactUsquery");
		return mv;

	}
}
