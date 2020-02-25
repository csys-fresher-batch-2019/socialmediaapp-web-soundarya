package com.chainsys.socialmediaapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.socialmediaapplication.daoimpl.LoginClass;

@SuppressWarnings("serial")
public class LoginadminServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginClass l=new LoginClass();
		String loginMessage=null;
		String email1=request.getParameter("useremail1");
		System.out.println(email1);
		String password1=request.getParameter("password1");
		System.out.println(password1);
		try {
		loginMessage=l.adminLogin(email1, password1);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		if(loginMessage.equals("success")){
			response.sendRedirect("adminhome.jsp");
		}
		else
			response.sendRedirect("index.jsp");
	
}
}