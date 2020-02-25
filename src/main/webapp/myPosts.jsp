<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.chainsys.socialmediaapplication.daoimpl.PostsClass" %>
        <%@page import="com.chainsys.socialmediaapplication.dao.PostsDAO" %>
    <%@page import="java.util.List" %>
        <%@page import="java.util.ArrayList" %>
        <%@page import="java.io.PrintWriter" %>
        <div style=position:absolute;top:0;left:0;width:100%>
       <%@ include file="header2.html" %>
       </div>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Posts</title>

</head>
<body align="center">
<form action="myPosts.jsp" method="post">

<%
String n=(String)session.getAttribute("semail"); 

PostsClass p=new PostsClass();
PrintWriter out1 = response.getWriter();
List<PostsClass> view=new ArrayList<PostsClass>();
view=p.MyPosts(n);
	
out1.print("<div style=margin-top:50px;><center><h3>Posts</h3></center></div>");
out1.print("<table class=table table-striped align=center><tr><th>Post</th><th>Details</th><th></th></tr>");

for (PostsClass postsClass : view) {
	if(postsClass.getPostType().contains(".mp4"))
	{
		out1.print("<tr><td><video width='200' height='200' controls> <source src='videos/"+postsClass.getPostType()+"' type='video/mp4'></video> </td><td>Id:"+postsClass.getPostId()+"<br>Email:"+postsClass.getEmail()+"<br>caption:"+postsClass.getCaption()+"<br>Date Posted:"+postsClass.getDatePosted()+"</td><td><a href=count.jsp?id="+postsClass.getPostId()+"><button type=button class=btn btn-success>No of Likes&Comments</button></a><br><br><a href=deletepost.jsp?postid="+postsClass.getPostId()+"><button type=button class=btn btn-success>Delete</button></a><br><br><a href=view.jsp?post_id="+postsClass.getPostId()+"><button type=button class=btn btn-success>View comments and likes</button></a></td></tr>");
		out1.print("<br>");
	}
	//if(postsClass.getPostType().contains(".jpg"))
	else
	{
	out1.print("<tr><td><img src=images/"+postsClass.getPostType()+" height='200' width='200'> </td><td>Id:"+postsClass.getPostId()+"<br>Email:"+postsClass.getEmail()+"<br>caption:"+postsClass.getCaption()+"<br>Date Posted:"+postsClass.getDatePosted()+"</td><td><a href=count.jsp?id="+postsClass.getPostId()+"><button type=button class=btn btn-success>No of Likes&Comments</button></a><br><br><a href=deletepost.jsp?postid="+postsClass.getPostId()+"><button type=button class=btn btn-success>Delete</button></a><br><br><a href=view.jsp?post_id="+postsClass.getPostId()+"><button type=button class=btn btn-success>View comments and likes</button></a></td></tr>");
	out1.print("<br>");
	}
	
}
out1.print("</table>");

%>


</form>

</body>
</html>