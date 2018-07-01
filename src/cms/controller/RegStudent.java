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
@WebServlet("/cms.controller.RegStudent")
public class RegStudent extends HttpServlet 
{
	private ServletFileUpload uploader = null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
	
		Student t=new Student();
		String photo_name = null;
		String p1 = null;
		
		DiskFileItemFactory fileFactory = new DiskFileItemFactory();
		String ctx = getServletContext().getRealPath("//profileimg");
		System.out.println(ctx);
		File f1 = new File(ctx);
		fileFactory.setRepository(f1);
		uploader = new ServletFileUpload(fileFactory);
		
		out.write("<html><head></head><body>");
		int c = 0;
		try 
		{
			List<FileItem> fileItemsList = uploader.parseRequest(request);
			Iterator<FileItem> fileItemsIterator = fileItemsList.iterator();
			while(fileItemsIterator.hasNext())
			{
				
				FileItem fileItem = fileItemsIterator.next();
				if ( !fileItem.isFormField () )	
			    {
					c++;
					System.out.println("HELLO "+c);
					f1 = new File(ctx+"\\"+fileItem.getName());
					fileItem.write(f1);
					out.write("File "+fileItem.getName()+ " uploaded successfully.");
					out.write("<br>");
					p1 = "profileimg\\"+f1.getName();
					System.out.println("-------------------------------------------------------------"+p1);
					photo_name = f1.getName();
					/*RequestDispatcher rd = request.getRequestDispatcher("index.jsp?filename="+p1);
					rd.include(request, response);
					out.println("<img src='"+p1+"' height='300px'/>");*/
					if(c == 13)
						t.setPhoto(photo_name);
					System.out.println(photo_name +"   "+c);
			    }
				else
				{	
					c++;
					String value = fileItem.getString();
					if(c==1)
						t.setRegn(value);
					if(c==2)
						t.setName(value);
					if(c==3)
						t.setEmail(value);
					if(c==4)	
						t.setPhone(value);
					if(c==5)
						t.setGender(value);
					if(c==6)
						t.setMaritalstatus(value);
					if(c==7)
						t.setFname(value);
					if(c==8)
						t.setMname(value);
					if(c==9)
						t.setReligion(value);
					if(c==10)
						t.setBranch(value);
					
					if(c==11)
						t.setQualification(value);
					if(c==12)
						t.setAddress(value);
					if(c==14)
						t.setMessage(value);
						
					System.out.println(c +"========="+value);
						
				}
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			out.write("Exception in uploading file.");
		}
		out.write("</body></html>");
		
	
		
		int status=StudentDao.regStudent(t);
		if(status>0)
		{
			
			response.sendRedirect("studentBody.jsp?msg=done");
			
		}
		else
			response.sendRedirect("registrationPage.jsp?msg=Something Error");
		
	}

}
