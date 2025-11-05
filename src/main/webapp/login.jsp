<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<form action="validate" method="post">
		<p style="color:red;">${error }</p>
		Enter Username <input type="text" name="user"><br/>
		Enter Password <input type="password" name="pass"><br/>
		<input type="submit" value="Login">
		
		
	</form>
	

</body>
</html>