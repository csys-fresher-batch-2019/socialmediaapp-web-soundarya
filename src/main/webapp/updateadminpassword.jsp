<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body align="center">
<h2>Update Password</h2>
<form action="UpdateAdminPassword" method="post">

Enter the Email:<input type="email" name="email" required/><br><br>
Enter the old password:<input type="password" name="op" required/><br><br>
Enter the new password:<input type="password" name="np" required/><br><br>
<input type="submit" name="submit" value="Update"/>
</form>

</body>
</html>