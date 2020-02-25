package com.chainsys.socialmediaapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.socialmediaapplication.daoimpl.UserListClass;


public class DeactivateAccount extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserListClass u=new UserListClass();
		String username=request.getParameter("name");
		u.updateActiveStatus(username);
		response.sendRedirect("userhome.jsp");
		
		
	}

}
