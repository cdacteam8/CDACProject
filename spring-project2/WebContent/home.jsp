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
<title>Home</title>

 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        >


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
          <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
        </li>
        
         <li class="nav-item">
        <a class="nav-link"  href="#">Profile</a>
        </li>
        
    
        <li class="nav-item">
        <a class="nav-link"  href="logout.htm">Logout</a>
        </li>
       
        
        </ul>
       
</div>
      
    </div>
  
</nav>

	
	<div align="center">
	
	<h3>Welcome..<%= user.getFirstName() %></h3>	
	<h3>Your Registered Email is  <%=user.getEmailAddress() %></h3>	
	
	</div>
	
	
	<!-- this is admin dashboard -->
	
	      <!-- Outer Row -->
      <div class="row">
           <div class="col-xl-3 col-lg-3 col-md-3  "></div> 
            <div class="col-xl-6 col-lg-6 col-md-6">
                <!-- Card -->
               <div class="card o-hidden border-0 shadow-lg my-5 justify-content-center">
                 <div class="card-body p-0">
                 <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-12  d-flex justify-content-center">
                        <div class="p-5">
                            <div class="text-center">
                            <h1>Exam Dashboard</h1>
                            </div>
                           <br>
                           
                    <!-- <form class="user">
                      <div class="form-group">
                      	<h4>Select Highest Qualification</h4>
                        <input type="radio" name="HQ" value="SSC">  SSC<br>
                        <input type="radio" name="HQ" value="HSC">  HSC<br>
                        <input type="radio" name="HQ" value="DIPLOMA">  DIPLOMA<br>
                        <input type="radio" name="HQ" value="GRADUATE">  GRADUATE<br>
                      </div>
                    
                      <style>
                        .dropbtn {
                          background-color: #4CAF50;
                          color: white;
                          padding: 10px;
                          font-size: 16px;
                          border: none;
                        }
                        .dropbtn1 {
                          background-color: #4CAF50;
                          color: white;
                          padding: 10px;
                          font-size: 16px;
                          border: none;
                        }
                        
                        .dropdown1 {
                          position: relative;
                          display: inline-block;
                        }
                        .dropdown2 {
                          position: relative;
                          display: inline-block;
                        }
                        
                        .dropdown-content {
                          display: none;
                          position: absolute;
                          background-color: #f1f1f1;
                          min-width: 160px;
                          box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                          z-index: 1;
                        }
                        
                        .dropdown-content a {
                          color: black;
                          padding: 12px 16px;
                          text-decoration: none;
                          display: block;
                        }
                        
                        .dropdown-content a:hover {background-color: #ddd;}
                        
                        .dropdown:hover .dropdown-content {display: block;}
                        
                        .dropdown:hover .dropbtn {background-color: #3e8e41;}
                        </style>
                        </head>
                        <body>
                        
                    
                        <form>
                               <div class="dropdown1">
                                        <button class="dropbtn">Stream</button> :
                                       
                                        <select id="hosting-plan">
                                                <option value="ChooseOne">Choose One</option>
                                              <option value="Science">Science</option>
                                              <option value="Commerce">Commerce</option>
                                              <option value="Arts">Arts</option>
                                        </select>
                                </div>
                        <br>
                        <br>

                        <div class="dropdown2">
                                <button class="dropbtn1">Grade</button> :
                                
                                <select id="hosting-plan">
                                        <option value="ChooseOne">Choose One</option>
                                      <option value="Distinction(Above 75%)">Distinction(Above 75%)</option>
                                      <option value="First Class(60%-75%)">First Class(60%-75%)</option>
                                      <option value="Second Class(Below 60%)">Second Class(Below 60%)</option>
                                </select>
                        </div>
                    </form> -->
                    
                    
 	<form action="script1.js" method="get">
 		 <input type="radio" id="home" name="chk" value="1" checked>Home <br/>
  <input type="radio" id="office" name="chk" value="2" >Office<br/>
      <br/>
  <select id="describe">
    <option name="name" value="1">Select from above</option>
  </select>
	 </form>
                              <br>
                              <br>

                             

                             
                      <a href="eligibleExams.jsp" class="btn btn-primary btn-user" style="margin-left: 100px">
                        Submit
                      </a>
                      
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-lg-3 col-md-3 "></div> 
      </div>
    </div>
	
	
	
	
	
	
	
</body>
</html>
<% }else{
response.sendRedirect("logout.jsp");	
}
	%>