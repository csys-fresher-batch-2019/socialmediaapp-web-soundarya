package com.chainsys.socialmediaapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chainsys.socialmediaapplication.daoimpl.FriendRequestClass;


public class SendFriendRequestServlet extends HttpServlet {
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FriendRequestClass f=new FriendRequestClass();
		
	/*	f.setRequestor(request.getParameter("requestor"));
		f.setAcceptor(request.getParameter("acceptor"));*/
		HttpSession session=request.getSession();  
		String n=(String)session.getAttribute("semail"); 
		String e=request.getParameter("email");
		System.out.println("SSSSSSSSSSSSSSSSSSSS"+n);
		System.out.println("AAAAAAAAAAAAAAAAAAAA"+e);
		
		f.setRequestor((String)session.getAttribute("semail"));
		f.setAcceptor(request.getParameter("email"));
		
		f.insertRequest(f);
		response.sendRedirect("userhome.jsp");
		
	}

}
