<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.chainsys.socialmediaapplication.daoimpl.CommentsClass" %>
        <%@page import="com.chainsys.socialmediaapplication.dao.CommentsDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body align ="center">
<h2>Comments</h2>
<form action="Comments" >
<%String i=request.getParameter("poid");
%>
<input type="number" name="id" value="<%out.print(i);%>" hidden><br><br>
Enter your comments here :<input type="text" name="comment"><br><br>
<input type="submit" name="submit" value="comment"><br>
</form>
</body>
</html>