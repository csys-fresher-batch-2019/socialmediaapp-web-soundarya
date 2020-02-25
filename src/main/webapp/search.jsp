<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.chainsys.socialmediaapplication.daoimpl.UserListClass" %>
        <%@page import="com.chainsys.socialmediaapplication.dao.UserListDAO" %>
    <%@page import="java.util.List" %>
        <%@page import="java.util.ArrayList" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Search</title>
</head>
        <%@ include file="header2.html" %>


<h2>Search by city and name</h2>
<body align="center">
<form action="search.jsp" method="post">

<b>Search for name like:</b><input type="text" name="name" required/><br><br>
<b>Search for city:</b> <input type="text" name="city" required/><br><br>

<input type="submit" name="submit" value="Search"/>
</form>
<form action="search.jsp" method="post">
<%

UserListClass u=new UserListClass();
List<UserListClass> search=new ArrayList<UserListClass>();

String name=request.getParameter("name");
String city=request.getParameter("city");
if(name!=null && city!=null){
 try {
		search=u.searchByCityAndName(name, city);
		
	}
catch(Exception e)
{
	e.printStackTrace();
}
	


 out.print("<div class=container><table class=table table-striped align=center><tr><td colspan=2><b>Profiles</b></td></tr>");
 for (UserListClass userListClass : search) {
		System.out.println(userListClass.display1());
		out.print("<tr><td><img src=images/"+userListClass.getProfilePic()+" height='100' width='100'> </td><td>Name:"+userListClass.getUserName()+"<br>Email:"+userListClass.getEmail()+"<br>Age:"+userListClass.getAge()+"<br>Gender:"+userListClass.getGender()+"<br><a href=sendFriendRequest.jsp?email="+userListClass.getEmail()+"><button type=button class=btn btn-success>Send Request</button></a></td></tr>");
		out.print("<br>");
	}
out.print("</table></div>");

}
%>

</form>

</body>
</html>