package com.chainsys.socialmediaapp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chainsys.socialmediaapplication.daoimpl.LikesClass;


public class Likes extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		LikesClass p=new LikesClass();
		PrintWriter out= response.getWriter();
		HttpSession session=request.getSession();  
		String n=(String)session.getAttribute("semail"); 
		int s=Integer.parseInt(request.getParameter("pid"));
		System.out.println(n);
		System.out.println(s);
		p.setLikePostId(s);
		p.setLikeEmail(n);
		p.addLikes(p);
		//out.print("<script>alert(Liked this post successfully);</script>");
		response.sendRedirect("userhome.jsp");
	}

	

}
