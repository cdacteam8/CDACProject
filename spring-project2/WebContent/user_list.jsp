<%@page import="com.cdac.springproject.dto.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%
 	List<User> userList = (List<User>)request.getAttribute("ul");
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
	<table>
		<%
			for(User u : userList){
		%>
			<tr>
				
				<td><%=u.getFirstName() %></td>
				<td><%=u.getLastName() %></td>
				<td><%=u.getEmailAddress() %></td>
				<td><%=u.getMobileNo() %></td>
				
				<td><a href="delete_user.htm?userId=<%=u.getUserId() %>" >Delete</a></td>
				<td><a href="select_user.htm?userId=<%=u.getUserId() %>" >Select</a></td>
			</tr>
		<% }  %>
	</table>
	<a href="logout.htm" >Logout</a>
</body>
</html>
<% }else{
response.sendRedirect("logout.jsp");	
}
	%>