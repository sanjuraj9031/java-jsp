<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>This is JSP Page</h1>
	<%!
		int counter1 = 0;
	
	%>
	<%
		int counter2 = 0;
		LocalDateTime time = LocalDateTime.now();
		
		counter1++;
		counter2++;
	%>
	<h2>Counter1: <%=counter1 %></h2>
	<h2>Counter2: <%=counter2 %></h2>
	<h2>Time: <%=time %></h2>
	<%@include file="test.txt" %>
</body>
</html>