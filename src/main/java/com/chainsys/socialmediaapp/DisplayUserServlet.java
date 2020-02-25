package com.chainsys.socialmediaapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.socialmediaapplication.daoimpl.UserListClass;


@SuppressWarnings("serial")
public class DisplayUserServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		UserListClass u=new UserListClass();
		List<UserListClass> display=new ArrayList<UserListClass>();
	
		String email=request.getParameter("email");
		
		 try {
				display=u.displayUser(email);
			}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			
		
		out.print("<center><h3>User's Profile</h3></center>");
out.print("<table border=1 align=center><tr><th>User Id</th><th>Profile Picture</th><th>User Name</th><th>Email</th><th>Age</th><th>Gender</th><th>DOB</th><th>City</th><th>Country</th><th>Created Date</th><th>Status</th><th>Active Status</th></tr>");

		
		for (UserListClass userListClass : display) {
			System.out.println(userListClass.display());
			out.print("<tr><td>"+userListClass.getUserId()+"</td><td><img src=images/"+userListClass.getProfilePic()+" height='100' width='100'> </td><td>"+userListClass.getUserName()+"</td><td>"+userListClass.getEmail()+"</td><td>"+userListClass.getAge()+"</td><td>"+userListClass.getGender()+"</td><td>"+userListClass.getDob()+"</td><td>"+userListClass.getCity()+"</td><td>"+userListClass.getCountry()+"</td><td>"+userListClass.getCreatedDate()+"</td><td>"+userListClass.getStatus()+"</td><td>"+userListClass.getActivestatus()+"</td></tr>");
			out.print("<br>");
		}
		
		out.print("</table>");
		
		
		}
		
		
		
		




}
