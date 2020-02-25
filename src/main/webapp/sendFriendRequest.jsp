<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.chainsys.socialmediaapplication.daoimpl.FriendRequestClass" %>
        <%@page import="com.chainsys.socialmediaapplication.dao.FriendRequestDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Send Friend Request</title>
</head>
<body align="center">
<h3>Send Friend Request to your Favourite Person</h3><br>

<form action="sendFriendRequest.jsp" method="post">
<%
FriendRequestClass f=new FriendRequestClass();
f.setRequestor((String)session.getAttribute("semail"));
f.setAcceptor(request.getParameter("email"));

f.insertRequest(f);
response.sendRedirect("userhome.jsp");

%>
</form>
</body>
</html>