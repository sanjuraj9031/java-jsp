<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="feedbackServlet" method="post">
		Rate:<br/>
		<input type="radio" name="rating" value="1">1<br/>
		<input type="radio" name="rating" value="2">2<br/>
		<input type="radio" name="rating" value="3">3<br/>
		<input type="radio" name="rating" value="4">4<br/>
		<input type="radio" name="rating" value="5">5<br/><br/>
		
		Comment:
		<input type="text" name="comment">
		<input type="submit" value="Feedback">
	</form>
</body>
</html>