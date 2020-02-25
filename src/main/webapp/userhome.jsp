<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.chainsys.socialmediaapplication.daoimpl.PostsClass" %>
        <%@page import="com.chainsys.socialmediaapplication.dao.PostsDAO" %>
    <%@page import="java.util.List" %>
        <%@page import="java.util.ArrayList" %>
        <%@ include file="header2.html" %>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>User Home</title>
<h2>
<%
String n=(String)session.getAttribute("semail"); 
out.print("welcome "+n+"!!!!");
%></h2>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<style>
.dropbtn {
  background-color: #3498DB;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
  background-color: #2980B9;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  overflow: auto;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown a:hover {background-color: #ddd;}

.show {display: block;}
</style>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body align="left">



<div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Settings</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="viewFriendRequest.jsp">View Friend Request</a>
	<a href="viewFriends.jsp">View Friends</a>
	<a href="addPost.jsp">Add Post</a>
	<a href="viewPost.jsp">View Post</a>
	<a href="myPosts.jsp">My Post</a>
  </div>
</div>

<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
</body>
<body align="center">

<form >
<%
PostsClass p=new PostsClass();
List<PostsClass> dis=new ArrayList<PostsClass>();
out.print("<div class=container><table class=table table-striped align=center><tr><th>Post</th><th>Details</th></tr>");
dis=p.displayFriendsPost(n);
for (PostsClass postsClass : dis) {
	 if(postsClass.getPostType().contains(".mp4"))
	{
		out.print("<tr><td><video width='200' height='200' controls> <source src='videos/"+postsClass.getPostType()+"' type='video/mp4'></video> </td><td>ID:"+postsClass.getPostId()+"<br>Email:"+postsClass.getEmail()+"<br>caption:"+postsClass.getCaption()+"<br>Date Posted:"+postsClass.getDatePosted()+"<br><br><a href=Likes?pid="+postsClass.getPostId()+" ><button type=button class=btn btn-success>Like</button></a>&nbsp;&nbsp;<a href=comments.jsp?poid="+postsClass.getPostId()+"><button type=button class=btn btn-success>Comment</button></a></td></tr>");
		out.print("<br>");
	}
	//if(postsClass.getPostType().contains(".jpg") )
	else
	{
	out.print("<tr><td><img src=images/"+postsClass.getPostType()+" height='200' width='200'> </td><td>ID:"+postsClass.getPostId()+"<br>Email:"+postsClass.getEmail()+"<br>caption:"+postsClass.getCaption()+"<br>Date Posted:"+postsClass.getDatePosted()+"<br><br><a href=Likes?pid="+postsClass.getPostId()+"><button type=button class=btn btn-success>Like</button></a>&nbsp;&nbsp;<a href=comments.jsp?poid="+postsClass.getPostId()+" ><button type=button class=btn btn-success>Comment</button></a></td></tr>");
	out.print("<br>");  
   
	}
	
}

dis=p.displayFriendsPost1(n);
for (PostsClass postsClass : dis) {
	if(postsClass.getPostType().contains(".mp4"))
	{
		out.print("<tr><td><video width='200' height='200' controls> <source src='videos/"+postsClass.getPostType()+"' type='video/mp4'></video> </td><td>ID:"+postsClass.getPostId()+"<br>Email:"+postsClass.getEmail()+"<br>caption:"+postsClass.getCaption()+"<br>Date Posted:"+postsClass.getDatePosted()+"<br><br><a href=Likes?pid="+postsClass.getPostId()+"><button type=button class=btn btn-primary>Like</button></a>&nbsp;&nbsp;<a href=comments.jsp?poid="+postsClass.getPostId()+"><button type=button class=btn btn-success>Comment</button></a></td></tr>");
		out.print("<br>");
	}
	//if(postsClass.getPostType().contains(".jpg") )
	else
	{
	out.print("<tr><td><img src=images/"+postsClass.getPostType()+" height='200' width='200'> </td><td>ID:"+postsClass.getPostId()+"<br>Email:"+postsClass.getEmail()+"<br>caption:"+postsClass.getCaption()+"<br>Date Posted:"+postsClass.getDatePosted()+"<br><br><a href=Likes?pid="+postsClass.getPostId()+"><button type=button class=btn btn-primary>Like</button></a>&nbsp;&nbsp;<a href=comments.jsp?poid="+postsClass.getPostId()+"><button type=button class=btn btn-success>Comment</button></a></td></tr>");
	//out.print(postsClass.getDatePosted());
	out.print("<br>");
	}
	
}

out.print("</table></div>");

%>


</form>
</body>
</html>