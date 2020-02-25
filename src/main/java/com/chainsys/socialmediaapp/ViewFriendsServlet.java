package com.chainsys.socialmediaapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.socialmediaapplication.daoimpl.FriendRequestClass;

public class ViewFriendsServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FriendRequestClass f=new FriendRequestClass();
		PrintWriter out = response.getWriter();
		List<FriendRequestClass> view=new ArrayList<FriendRequestClass>();
		
		String req=request.getParameter("requestor");
		System.out.println(req);
		String sts=request.getParameter("status");
		try {
			view=f.getFriendrequest(req, sts);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		out.print("<center><h3>List of people</h3></center>");
		out.print("<table border=1 align=center><tr><th>Acceptor and Status</th></tr>");
		
		for (FriendRequestClass friendRequestClass : view) {
			System.out.println(friendRequestClass.toString());
			out.print("<tr><td> Email:"+friendRequestClass.getAcceptor()+"<br>Status"+friendRequestClass.getCurrentStatus()+"</td></tr>");
			out.print("<br>");
		}
		out.print("</table>");

	}

}
