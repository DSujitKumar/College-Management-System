package cms.service;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
				import javax.mail.Message;
				import javax.mail.MessagingException;
				import javax.mail.PasswordAuthentication;
				import javax.mail.Session;
				import javax.mail.Transport;
				import javax.mail.internet.InternetAddress;
				import javax.mail.internet.MimeMessage;

import cms.db.Student;
import cms.db.Teacher;
public class SendPassword {
	 public static char[] otp(int len)
		{
			System.out.println("Generating OTP using random():");
			System.out.println("Your new OTP is:");
			
			String numbers="123456789";
			Random r=new Random();
			char[] otp=new char[len];
			
			for(int i=0;i<len;i++)
			{
				otp[i]=numbers.charAt(r.nextInt(numbers.length()));
			}
		
			return otp;
			
		}
	public static String sendPassword1(Teacher t)
	 {
		// TODO Auto-generated method stub
		String to=t.getEmail();
		String subject="OTP Sent";
		char[] msg1=otp(5);
		String otp1=String.valueOf(msg1);
		String message = "Login using "+t.getEmail()+"& password is:"+otp1;
		
		String from="lit.project.17@gmail.com";
		String password="litproject2017";
		
		try {
			//Authentication with Gmail server
			Properties props=new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");
			
			
			Authenticator auth = new Authenticator() {
				public PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(from, password);
				}
			};
			
			Session session = Session.getInstance(props, auth);
			
			//Composing the message
			MimeMessage msg=new MimeMessage(session);
			msg.setFrom(new InternetAddress(from));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			msg.setSubject(subject);
			msg.setText(message);
			
			//Sending message
			Transport.send(msg);
			System.out.println("Message delivered successfully , Check your mail ...........");
			//response.sendRedirect("mail.jsp?msg=mail delivered");
		} catch (MessagingException e) {
			// TODO: handle exception
			//throw new RuntimeException(e);
			e.printStackTrace();
		}
		return otp1;
	}
	public String sendPassword1(Student s) {
		// TODO Auto-generated method stub
				String to=s.getEmail();
				String subject="OTP Sent";
				char[] msg1=otp(5);
				String otp1=String.valueOf(msg1);
				String message = "Dear student Please Login Using "+s.getEmail()+"& password is:"+otp1;
				
				String from="lit.project.17@gmail.com";
				String password="litproject2017";
				
				try {
					//Authentication with Gmail server
					Properties props=new Properties();
					props.put("mail.smtp.host", "smtp.gmail.com");
					props.put("mail.smtp.socketFactory.port", "465");
					props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
					props.put("mail.smtp.auth", "true");
					props.put("mail.smtp.port", "465");
					
					
					Authenticator auth = new Authenticator() {
						public PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication(from, password);
						}
					};
					
					Session session = Session.getInstance(props, auth);
					
					//Composing the message
					MimeMessage msg=new MimeMessage(session);
					msg.setFrom(new InternetAddress(from));
					msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
					msg.setSubject(subject);
					msg.setText(message);
					
					//Sending message
					Transport.send(msg);
					System.out.println("Message delivered successfully , Check your mail ...........");
					//response.sendRedirect("mail.jsp?msg=mail delivered");
				} catch (MessagingException e) {
					// TODO: handle exception
					//throw new RuntimeException(e);
					e.printStackTrace();
				}
				return otp1;
	}

}
