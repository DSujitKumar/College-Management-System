package cms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

import javax.security.auth.callback.ConfirmationCallback;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import cms.db.Student;
import cms.db.Teacher;
import cms.model.StudentDao;
import cms.model.TeacherDao;
@WebServlet("/cms.controller.AddStudent")
public class AddStudent extends HttpServlet 
{
	private ServletFileUpload uploader = null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String regn = request.getParameter("regn");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		Student s = new Student();
		s.setEmail(email);
		s.setRegn(regn);
		s.setName(name);
		int status = StudentDao.addStudent(s);
		if(status > 0)
		{
			response.sendRedirect("addstudent.jsp?msg=Student Added Successfully");
		}
		else
			response.sendRedirect("addstudent.jsp?msg=Error in Registration");
	}

}
