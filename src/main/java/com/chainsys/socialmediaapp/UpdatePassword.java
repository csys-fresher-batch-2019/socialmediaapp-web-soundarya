package com.chainsys.socialmediaapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.socialmediaapplication.daoimpl.UserListClass;

/**
 * Servlet implementation class UpdatePassword
 */
public class UpdatePassword extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserListClass u=new UserListClass();
		String email=request.getParameter("email");
		String oldPassword=request.getParameter("op");
		String newPassword=request.getParameter("np");
		u.updatePassword(email, oldPassword, newPassword);
	
		response.sendRedirect("userhome.jsp");


		
	}

}
