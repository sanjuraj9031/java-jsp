<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		double avg = (double)request.getAttribute("avg");
		String comment = (String)request.getAttribute("comment");
		
	
	%>
	<h2>Thanks for your feedback</h2>
	<p>Your feedback is: <%=comment %></p>
	<p>Average rating: <%=avg %></p>
</body>
</html>