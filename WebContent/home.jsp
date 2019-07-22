<%@page import="com.cdac.springproject.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%
 	User user  = (User)session.getAttribute("user");
 
 %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Welcome <%=user.getLastName() %></h3>	
	<h3>Your Registered Email is  <%= user.getEmailAddress() %></h3>	
	<a href="user_list.htm" >user list</a>
</body>
</html>