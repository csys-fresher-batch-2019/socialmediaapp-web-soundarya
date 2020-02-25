package com.chainsys.socialmediaapp;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.socialmediaapplication.daoimpl.UserListClass;


@SuppressWarnings("serial")
public class UsersCount extends HttpServlet {
	
       
    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		PrintWriter out = response.getWriter();
    		UserListClass u=new UserListClass();
    		 int count = 0;
			count=u.noOfUsers();
			System.out.println(count);
    		out.print("<center><h3>User's Count:"+count+"</h3></center>");
	}

}
