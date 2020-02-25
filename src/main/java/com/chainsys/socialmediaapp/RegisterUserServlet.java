package com.chainsys.socialmediaapp;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.socialmediaapplication.daoimpl.UserListClass;

@SuppressWarnings("serial")
public class RegisterUserServlet extends HttpServlet {
       
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserListClass u=new UserListClass();
    	 
    	 u.setUserName(request.getParameter("username"));
		//System.out.println(name);
		u.setEmail(request.getParameter("useremail"));
		u.setAge(Integer.parseInt(request.getParameter("age")));
		//u.setAge(request.getParameter("age"));
		u.setGender(request.getParameter("gender"));
		u.setDob(java.sql.Date.valueOf(request.getParameter("dob")));
		u.setCity(request.getParameter("city"));
		u.setCountry(request.getParameter("country"));
		u.setStatus(request.getParameter("status"));
		u.setUserPassword(request.getParameter("password"));
		u.setProfilePic(request.getParameter("profilepic"));
		
			u.insertUsers(u);
			response.sendRedirect("login.jsp");
	}
}
