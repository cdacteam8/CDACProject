<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
		<h2>Forget Password</h2>
		<spr:form action="updateforget.htm" modelAttribute="user">
			Registered Email:<spr:input path="emailAddress" 
                             placeholder="Enter Email Address..." id="emailId"
                               title="Enter valid Email Id" required="required"/>
                               
            Mobile No: <spr:input path="mobileNo"
										class="form-control form-control-user" id="exampleInputEmail"
										placeholder="Mobile no." title="Enter valid Phone No"
										required="required" />
										
			<input type="submit" value="update">
		</spr:form>
		
	
	
</body>
</html>