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
<title>Candidate List</title>

 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
        crossorigin="anonymous">



</head>
<body style="background-image: linear-gradient( 109.6deg,  rgba(61,237,253,1) 44.2%, rgba(3,136,238,1) 95.6% );">

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top" style="position: sticky; top:0; z-index:1;">
  <div class="container ">
     <a class="navbar-brand" href="#">
          <img src="images/logo.png" style="height: 50px;"  alt="logo">
        </a> 
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="adminhome.htm">Home
                <span class="sr-only">(current)</span>
              </a>
        </li>
        
        <li class="nav-item">
        <a class="nav-link"  href="logout.htm">Logout</a>
        </li>
        
     
</div>
      </ul>
    </div>
  </div>
</nav>



	<div align="center">
	<h2>Candidate List</h2>
	</div>
	
	
	
	<table  class="table table-hover">
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Email Address</th>
		<th>Mobile No</th>
		<th>Delete</th>
		
	</tr>
		<%
			for(User u : userList){
		%>
			<tr>
				
				<td><%=u.getFirstName() %></td>
				<td><%=u.getLastName() %></td>
				<td><%=u.getEmailAddress() %></td>
				<td><%=u.getMobileNo() %></td>
				
				<!--<td><a href="delete_user.htm?emailAddress=<%=u.getEmailAddress()%>" >Delete</a></td>  -->
				 <td><a class="btn btn-danger rounded text-light" style="width:200px" href="delete_user.htm?emailAddress=<%=u.getEmailAddress()%>">Delete</a><td>
			</tr>
		<% }  %>
	</table>

</body>
</html>
<% }else{
response.sendRedirect("logout.jsp");	
}
	%>