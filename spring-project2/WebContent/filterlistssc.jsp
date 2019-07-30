<%@page import="com.cdac.springproject.dto.SSC"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%
 	List<SSC> examList = (List)request.getAttribute("el");
 	
 %>   
 <%@ include file="no-cache-paste.jsp" %>    
 <%
/*  ExamMaster loggedUser = (ExamMaster)session.getAttribute("ExamMaster");
 	if(loggedUser !=null && loggedUser.getFirstName()!=null){
 	 */
 %> 
 <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exam List</title>

 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
        crossorigin="anonymous">

<style type="text/css">
#examtd {
    white-space: nowrap;
    overflow: hidden;
    width: 125px;
    height: 25px;
}
</style>

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
        
     </ul>
</div>
      
    </div>
  
</nav>



	<div align="center">
	<h2>Exam List</h2>
	</div>
	
	
	
	<table  class="table table-hover" >
	<tr>
		
		<th>Exam Name</th>
		<th>Criteria</th>
		
		<th>Exam Date</th>
		<th>Post Name</th>
		<th>Vacancies</th>
		<th>Grade</th>
		<th>Exam Description</th>
		<th>Useful Link</th>
		
	</tr>
		<% 
		if(!examList.isEmpty())
			for( SSC e : examList){
		%>
			<tr>
				
			
				<td><%=e.getExamName() %></td>
				<td><%=e.getCriteria() %></td>
				
				
				<td><%=e.getDate() %></td>
				<td><%=e.getPost() %></td>
				<td><%=e.getVacancy() %></td>
				<td><%=e.getGrade() %></td>
				
				<td width="200"><%=e.getExamDesc() %></td>
				<td width="100">
				<%if(e.getLinks() != null){ %>
				
				<a href="<%=e.getLinks() %>"><%=e.getLinks() %>
				
				</a>
				<%} %></td>
				
				
				
				
				 
			</tr>
		<% } %>
	</table>

</body>
</html>
<%-- <% }else {
	
response.sendRedirect("logout.jsp");	
}
	%> --%>