<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.chainsys.socialmediaapplication.daoimpl.UserListClass" %>
        <%@page import="com.chainsys.socialmediaapplication.dao.UserListDAO" %>
    <%@page import="java.util.List" %>
        <%@page import="java.util.ArrayList" %>
        <%@ include file="header2.html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Display User</title>
</head>
<h2>Search by User Email</h2>
<body align="center">
<form action="displayuser.jsp" method="post">

<b>Enter the email:</b><input type="email" name="email" required/><br><br>

<input type="submit" name="submit" value="Display"/>

</form>
<form action="displayuser.jsp">
<%

UserListClass u=new UserListClass();
List<UserListClass> display=new ArrayList<UserListClass>();

String email=request.getParameter("email");

 try {
		display=u.displayUser(email);
	}
catch(Exception e)
{
	e.printStackTrace();
}
	
if(email!=null){
out.print("<center><h3>User's Profile</h3></center>");
out.print("<table class=table table-bordered align=center><tr><th>User Id</th><th>Profile Picture</th><th>User Name</th><th>Email</th><th>Age</th><th>Gender</th><th>DOB</th><th>City</th><th>Country</th><th>Created Date</th><th>Status</th><th>Active Status</th></tr>");


for (UserListClass userListClass : display) {
	System.out.println(userListClass.display());
	out.print("<tr><td>"+userListClass.getUserId()+"</td><td><img src=images/"+userListClass.getProfilePic()+" height='100' width='100'> </td><td>"+userListClass.getUserName()+"</td><td>"+userListClass.getEmail()+"</td><td>"+userListClass.getAge()+"</td><td>"+userListClass.getGender()+"</td><td>"+userListClass.getDob()+"</td><td>"+userListClass.getCity()+"</td><td>"+userListClass.getCountry()+"</td><td>"+userListClass.getCreatedDate()+"</td><td>"+userListClass.getStatus()+"</td><td>"+userListClass.getActivestatus()+"</td></tr>");
	out.print("<br>");
}

out.print("</table>");
}
%></form>
</html>