package com.payroll.service;

import java.util.Properties;


import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

@Service
public class EmailService {

	public boolean sendEmail(String subject, String message, String to) {
		boolean f = false;
		String from = "vvarsha5577@gmail.com";
		String host = "smtp.gmail.com";
		Properties properties = System.getProperties();

		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", "465");
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.auth", "true");

		Session session = Session.getInstance(properties, new javax.mail.Authenticator() {

			protected PasswordAuthentication getPasswordAuthentication() {

				return new PasswordAuthentication("vvarsha5577@gmail.com", "usha.vijayakumar@intellectdesign.com");
			}
			
		});

		session.setDebug(true);

		try {

			MimeMessage message1 = new MimeMessage(session);

			message1.setFrom(new InternetAddress(from));

			message1.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			message1.setSubject(subject);

			message1.setText(message);

			System.out.println("sending...");

			Transport.send(message1);
			System.out.println("Sent message successfully....");
			f = true;
		} catch (MessagingException mex) {
			mex.printStackTrace();
		}

		return f;
	}
}