package com.chainsys.socialmediaapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.socialmediaapplication.daoimpl.Logger;
import com.chainsys.socialmediaapplication.daoimpl.UserListClass;


@SuppressWarnings("serial")
public class SearchServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserListClass u=new UserListClass();
		PrintWriter out = response.getWriter();
		List<UserListClass> search=new ArrayList<UserListClass>();
	
		String name=request.getParameter("name");
		String city=request.getParameter("city");
		
		 try {
				search=u.searchByCityAndName(name, city);
				
			}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			
		
		
		 out.print("<table border=5 cellpadding=10 align=center><tr><th>Profile Picture</th><th>Details</th>");
		 for (UserListClass userListClass : search) {
				System.out.println(userListClass.display1());
				out.print("<tr><td><img src=images/"+userListClass.getProfilePic()+" height='100' width='100'> </td><td>Name:"+userListClass.getUserName()+"<br>Email:"+userListClass.getEmail()+"<br>Age:"+userListClass.getAge()+"<br>Gender:"+userListClass.getGender()+"</td><td><a href=sendFriendRequest.jsp?email="+userListClass.getEmail()+">Send Friend Request</a></td></tr>");
				out.print("<br>");
			}
		out.print("</table>");
		
		

	}
		
		
		//response.sendRedirect("display.jsp");
	}

