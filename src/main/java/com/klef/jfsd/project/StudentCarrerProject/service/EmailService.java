package com.klef.jfsd.project.StudentCarrerProject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService {

    @Autowired
    private JavaMailSender mailSender;

    @Value("${spring.mail.username}")
    private String fromEmailId;

    // Non-static method for sending email
    public void sendEmail(String recipient, String body, String subject) {
        try {
            SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
            simpleMailMessage.setFrom(fromEmailId);
            simpleMailMessage.setTo(recipient);
            simpleMailMessage.setText(body);  // Fixed body and subject issue
            simpleMailMessage.setSubject(subject);
            
            // Send the email using the mailSender instance
            mailSender.send(simpleMailMessage);
        } catch (Exception e) {
            // Log or handle the exception
            System.err.println("Error sending email: " + e.getMessage());
        }
    }
}
