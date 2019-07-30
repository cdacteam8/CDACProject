<%@page import="com.cdac.springproject.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
 <%
 	User user  = (User)session.getAttribute("user");
 
 %>   
 
<!Doctype html>
<html lang="en">

<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Candidate Profile Update</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<script>
	function show(){
				document.getElementById("firstname").disabled=false;
				document.getElementById("lastname").disabled=false;
				document.getElementById("dob").disabled=false;
				document.getElementById("emailaddress").disabled=false;
				document.getElementById("mobileno").disabled=false;
				document.getElementById("userpass").disabled=false;
				document.getElementById("submit").hidden=false;
				document.getElementById("reset").hidden=false;
		}

</script>

</head>

<body class="bg-gradient-primary" style="background-image: linear-gradient( 109.6deg,  rgba(61,237,253,1) 44.2%, rgba(3,136,238,1) 95.6% );">

	<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-5 d-none d-lg-block bg-register-image">

						<img alt="reg" src="images/register.jpeg">

					</div>
					<div class="col-lg-7">
						<div class="p-5">
							<div>
								<h2 class="text text-success">Competitive Exams Guidance
									Portal</h2>
							</div>
							<div class="text-center">
								<h1 class="h4 text-info text-info-900 mb-4">Update here</h1>
							</div>
							<spr:form action="UpdatePro.htm" modelAttribute="user">
							
							<spr:hidden path="userId" value="<%=user.getUserId()%>"/>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<spr:input path="firstName" value="<%=user.getFirstName() %>"
											class="form-control form-control-user" id="firstname"
											placeholder="First Name" title="Enter valid first name"
											required="required" disabled="true" />
									</div>
									<div class="col-sm-6">
										<spr:input path="lastName" value="<%=user.getLastName() %>"
											class="form-control form-control-user" id="lastname"
											placeholder="Last Name" title="Enter valid last Id"
											required="required" disabled="true" />
									</div>
								</div>
								<div class="form-group">
									<spr:input type="date" path="dateOfBirth" value="<%=user.getDateOfBirth()%>"
										class="form-control form-control-user" id="dob"
										placeholder="Date Of Birth(dd/mm/yyyy)"
										title="Enter valid DOB" required="required" disabled="true"
										pattern="^([0-2][0-9]|(3)[0-1])(\/)(((0)[0-9])|((1)[0-2]))(\/)\d{4}$" />
								</div>
								<div class="form-group">
									<spr:input path="emailAddress" value="<%=user.getEmailAddress()%>"
										class="form-control form-control-user" id="emailaddress"
										placeholder="Email Address" title="Enter valid Email Id"
										required="required" disabled="true"
										pattern="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"/>
										
								</div>
								<div class="form-group">
									<spr:input path="mobileNo" value="<%=user.getMobileNo()%>"
										class="form-control form-control-user" id="mobileno"
										placeholder="Mobile no." title="Enter valid Phone No"
										required="required" disabled="true" />
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<spr:password path="userPass" value="<%=user.getUserPass()%>"
											class="form-control form-control-user" id="userpass"
											placeholder="Create Password" title="Enter valid password"
											required="required"  disabled="true"/>
									</div>
									<spr:input type="hidden" path="userRole" value="candidate" />

								<span onclick="show()" class="btn btn-primary btn-user" style="margin-left: 15%">edit</span>
								</div>
								<div>
									<input type="submit" class="btn btn-primary btn-user" id="submit"									
										style="margin-right: 30px; margin-left: 180px;"
										value="Update" hidden="true"  onclick="checkEmail()"/>
										
										
										 

									<input type="reset" id="reset"
										class="btn btn-primary btn-user" hidden="true">
										
								</div>

							</spr:form>
							<hr>
							
							<div class="text-center">
								<a class="small" href="prep_login_form.htm">Already have an
									account? Login!</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

</body>

</html>