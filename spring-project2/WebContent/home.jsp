<%@page import="com.cdac.springproject.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%
 	User user  = (User)session.getAttribute("user");
 
 %>   
 
 <%@ include file="no-cache-paste.jsp" %>    
 <%
 	User loggedUser = (User)session.getAttribute("user");
 	if(loggedUser !=null && loggedUser.getFirstName()!=null){
 	
 %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Welcome..<%= user.getFirstName() %></h3>	
	<h3>Your Registered Email is  <%=user.getEmailAddress() %></h3>	
	
	<a href="logout.htm" >Logout</a>
	
</body>
</html>
<% }else{
response.sendRedirect("logout.jsp");	
}
	%>