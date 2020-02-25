<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.chainsys.socialmediaapplication.daoimpl.LikesClass" %>
        <%@page import="com.chainsys.socialmediaapplication.dao.LikesDAO" %>
        <%@page import="com.chainsys.socialmediaapplication.daoimpl.CommentsClass" %>
        <%@page import="com.chainsys.socialmediaapplication.dao.CommentsDAO" %>
        <%@ include file="header2.html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="myPost.jsp" method="post">
<%

int pid=Integer.parseInt(request.getParameter("id"));
LikesClass l=new LikesClass();
int cnt=0,cnt1=0;
cnt=l.noOfLikes(pid);


CommentsClass c=new CommentsClass();
cnt1=c.noOfComments(pid);

  
session.setAttribute("scnt",cnt);   
session.setAttribute("scnt1",cnt1);  
%>
<center><b><font size=6><%out.print("No of Likes:"+cnt+"\n"); %><br>
<%out.print("No of Comments:"+cnt1); %></font></b></center>
</form>
</body>
</html>