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
  <script src="javascript/script1.js" type="text/javascript"></script>
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
        <a class="nav-link"  href="profile.htm">Profile</a>
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
                  
                    
 	<form name="myform" id="myForm">
 		<label class="label" style="font-weight: bold;">Select Highest Qualification</label> : <select id="highestQuali" size="1">
        <option value="" selected="selected">-- Choose One --</option>
    </select>
     <br>
    <br>
 
    <label class="label" style="font-weight: bold;">Stream</label> : <select id="stream" size="1">
        <option value="" selected="selected">-- Choose One--</option>
    </select>
    <br>
    <br>    
   
</form>

<script>



var highestQuaInfo = {
	"GRADUATE": {
		"MBBS": {
		
		},
		"Bachelor of Engineering (BE)": {
			
		},
		"Bachelors in Computer Application (BCA)": {
		
		},
		"Bachelor of Science (BSc)": {
			
		}
	},
	"DIPLOMA": {
		"Computer Engineering": {
			
		},
		"Mechanical Engineering": {
		
		},
		"Electronics and Telecommunication Engineering": {
			
		},
		"Electrical Engineering": {
			
		},
		"Civil Engineering": {
			
		}
	},
	"ITI": {
	"Mechanic Electronics Engineering": {
			
		},
	"Surveyor Engineering": {
			
		},
	"Machinist Engineering": {
			
		},
		"Electrician Engineering": {
			
		},
		"Mechanic Computer Hardware": {
		
		},
		"Mechanic Electronics Engineering": {
			
		}
	},
	"HSC": {
		"Science": {
			
		},
		"Commerce": {
		
		},
		"Arts": {
			
		}
	},
	"SSC": {
		"--": {
			
		}
	}
}


window.onload = function () {
	

	var highestQuali = document.getElementById("highestQuali");
	var stream = document.getElementById("stream");	

	

	for (var qualification in highestQuaInfo) {
		highestQuali.options[highestQuali.options.length] = new Option(qualification, qualification);
	}
	
	
	highestQuali.onchange = function () {
		 
		 stream.length = 1;
	
		 
		 if (this.selectedIndex < 1)
			 return; 
		 
		 for (var course in highestQuaInfo[this.value]) {
			 stream.options[stream.options.length] = new Option(course, course);
		 }
	}
	

}
</script>
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