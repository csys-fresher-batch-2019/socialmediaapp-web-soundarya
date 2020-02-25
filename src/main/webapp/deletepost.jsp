<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.chainsys.socialmediaapplication.daoimpl.PostsClass" %>
        <%@page import="com.chainsys.socialmediaapplication.dao.PostsDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form >
<%
PostsClass p=new PostsClass();
p.setPostId(Integer.parseInt(request.getParameter("postid")));
p.deletePost(p);
response.sendRedirect("myPosts.jsp");
%>

</form>
</body>
</html>