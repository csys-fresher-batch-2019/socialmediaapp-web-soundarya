<%@page import="com.chainsys.socialmediaapplication.daoimpl.LikesClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.chainsys.socialmediaapplication.daoimpl.LikesClass" %>
        <%@page import="com.chainsys.socialmediaapplication.dao.LikesDAO" %>
        <%@page import="com.chainsys.socialmediaapplication.daoimpl.CommentsClass" %>
        <%@page import="com.chainsys.socialmediaapplication.dao.CommentsDAO" %>
       <%@page import="java.util.List" %>
        <%@page import="java.util.ArrayList" %>
        <%@page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<form action="view.jsp" method="post">
<%
LikesClass dis=new LikesClass();
List<LikesClass> list = new ArrayList<LikesClass>();
dis.setLikePostId(Integer.parseInt(request.getParameter("post_id")));
list=dis.displayLikes(dis);

out.print("<div class=container><center><h3>Liked by</h3></center>");
out.print("<table class=table table-striped><thead><tr><th>Email</th><th>Time</th></tr><thead>");

for (LikesClass likesclass : list) {
	
		out.print("<tr><td>"+likesclass.getLikeEmail()+"</td><td>"+likesclass.getLikeDate()+"</td></tr>");
		out.print("<br>");
}
out.print("</table></div>");
out.print("<br><br>");
CommentsClass d=new CommentsClass();
List<CommentsClass> li = new ArrayList<CommentsClass>();
d.setCmtPostId(Integer.parseInt(request.getParameter("post_id")));
li=d.displayComments(d);

out.print("<div class=container><center><h3>Commented by</h3></center>");
out.print("<table class=table table-striped><thead><tr><th>Email</th><th>Time</th><th>Comments</th></tr><thead>");

for (CommentsClass commentsClass : li) {
	
		out.print("<tr><td>"+commentsClass.getCmtEmail()+"</td><td>"+commentsClass.getCmtDate1()+"</td><td>"+commentsClass.getCmts()+"</td></tr>");
		out.print("<br>");
}
out.print("</table></div>");




%>

</form>
</body>
</html>