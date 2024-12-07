package com.klef.jfsd.project.StudentCarrerProject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.project.StudentCarrerProject.model.Student;
import com.klef.jfsd.project.StudentCarrerProject.repo.StudentRepo;
@Service
public class StudentService {
	@Autowired
	private StudentRepo repo;
	
	@Autowired
	private EmailService emailService;
	
	public String StudentRegistration(Student student) {
	    repo.save(student);

	    // Use the injected EmailService bean
	    emailService.sendEmail(
	        student.getEmail(),
	        "Registration Successful",
	        "Dear " + student.getName() + ",\n\nYour registration is successful!"
	    );

	    return "Registration completed";
	}

	public Student cheackStudentLogin(String email, String password) {
		return repo.checkstudentlogin(email,password);
	}

	public String updateStudent(Student student) {
		Student c = repo.findById(student.getId()).get();
		c.setContact(student.getContact());
		c.setDataofbirth(student.getDataofbirth());
		c.setGender(student.getGender());
		c.setLocation(student.getLocation());
		c.setName(student.getName());
		c.setPassword(student.getPassword());
		repo.save(c);
		return "Student updated sucessfully";
	}
	
	
}
