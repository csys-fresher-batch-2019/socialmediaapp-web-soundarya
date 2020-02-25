package com.chainsys.socialmediaapp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.chainsys.socialmediaapplication.daoimpl.CommentsClass;

public class Comments extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CommentsClass c=new CommentsClass();
		PrintWriter out= response.getWriter();
		HttpSession session=request.getSession();  
		String n=(String)session.getAttribute("semail"); 
		int id=Integer.parseInt(request.getParameter("id"));
		String cmt=request.getParameter("comment");
		System.out.println(n);
		System.out.println(id);
		System.out.println(cmt);
		c.setCmtPostId(id);
		c.setCmtEmail(n);
		c.setCmts(cmt);
		c.insertComments(c);
		//out.print("<script>alert(Liked this post successfully);</script>");
		response.sendRedirect("userhome.jsp");
	}

	

}
