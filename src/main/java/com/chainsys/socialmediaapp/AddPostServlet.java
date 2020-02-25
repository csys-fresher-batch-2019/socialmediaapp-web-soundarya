package com.chainsys.socialmediaapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chainsys.socialmediaapplication.daoimpl.FriendRequestClass;
import com.chainsys.socialmediaapplication.daoimpl.PostsClass;


public class AddPostServlet extends HttpServlet {
	
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PostsClass p=new PostsClass();
		
		p.setEmail(request.getParameter("requestor"));
		p.setPostType(request.getParameter("postType"));
		p.setCaption(request.getParameter("caption"));
		p.setViewability(request.getParameter("viewability"));
		
		p.addPosts(p);
		response.sendRedirect("userhome.jsp");
	}

}
