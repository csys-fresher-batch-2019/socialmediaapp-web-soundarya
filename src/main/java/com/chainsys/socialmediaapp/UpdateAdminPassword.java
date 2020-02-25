package com.chainsys.socialmediaapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.socialmediaapplication.daoimpl.LoginClass;
import com.chainsys.socialmediaapplication.daoimpl.UserListClass;


@SuppressWarnings("serial")
public class UpdateAdminPassword extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		LoginClass l=new LoginClass();
		String email=request.getParameter("email");
		String oldPassword=request.getParameter("op");
		String newPassword=request.getParameter("np");
		
		l.updatePassword(email, oldPassword, newPassword);
	
		response.sendRedirect("adminhome.jsp");
	}

}
