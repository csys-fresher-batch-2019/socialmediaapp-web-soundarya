package com.chainsys.socialmediaapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chainsys.socialmediaapplication.daoimpl.UserListClass;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserListClass u=new UserListClass();
		String loginMessage=null;
		String email=request.getParameter("useremail");
		System.out.println(email);
		String password=request.getParameter("password");
		System.out.println(password);
		HttpSession session=request.getSession();  
	    session.setAttribute("semail",email);  
	     //response.sendRedirect("userhome.jsp");
		try {
		loginMessage=u.userLogin(email, password);
		//System.out.println(loginMessage);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		if(loginMessage.equals("success"))
			response.sendRedirect("userhome.jsp");
		else
			response.sendRedirect("index.jsp");
		
		
	}

	
}
