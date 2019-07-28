<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>

<!DOCTYPE html>
<html lang="en">
<head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
        crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Dashboard</title>
</head>
<body class="" style="background-image: linear-gradient( 109.6deg,  rgba(61,237,253,1) 44.2%, rgba(3,136,238,1) 95.6% );">
        <div class=" fluid-container ">
        
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
           <a class="nav-link" href="">Home
                <span class="sr-only">(current)</span>
              </a> 
        </li>
        
        <li class="nav-item">
        <a class="nav-link"  href="logout.htm">Logout</a>
        </li>
        
        
        <li class="nav-item">
        <a class="nav-link"  href="user_list.htm">UserList</a>
        </li>
        
        
         <li class="nav-item">
        <a class="nav-link"  href="exam_list.htm">ExamList</a>
        </li>
        
</div>
      </ul>
    </div>
  </div>
</nav>
        
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
                                <h1 class="h4 text-gray-900 mb-4">Admin Dashboard</h1>
                                </div>

                      
                          <div class="form-group">
                              <spr:form action="exam.htm" modelAttribute="exam">
                                        <table style="display: flex; justify-content: center; align-items: center; border: black">
                                         <tr>
                                           <td style="display: flex; justify-content: center; align-items: center; ">Exam ID : <td><spr:input path="examId" style="height: 0.7cm"   class="form-control form-control-user" type="text" name="examId" /><br> </td>   
                                         </tr>
                                         <tr>
                                          <td style="display: flex; justify-content: center; align-items: center; ">Exam Name :</td> <td><spr:input path="examName" style="height: 0.7cm" class="form-control form-control-user" type="text" name="examName" /><br></td>
                                         </tr>
                                         <tr>
                                          <td style="display: flex; justify-content: center; align-items: center; ">Criteria :</td> <td><spr:input path="criteria" style="height: 0.7cm" class="form-control form-control-user" type="text" name="criteria" /><br>
                                         </tr>
                                         
                                          <tr>
                                          <td style="display: flex; justify-content: center; align-items: center; ">Stream :</td> <td><spr:input path="stream" style="height: 0.7cm" class="form-control form-control-user" type="text" name="stream" /><br>
                                         </tr>
                                         
                                         		<tr>
                                                <td style="display: flex; justify-content: center; align-items: center; ">Exam Date :</td> <td><spr:input path="date" style="height: 0.7cm" class="form-control form-control-user" type="text" name="examDate"/><br>
                                                </tr>
                                                 <tr>
                                         
                                         	<tr>
                                             <td style="display: flex; justify-content: center; align-items: center; ">Post :</td> <td><spr:input path="post" style="height: 0.7cm" class="form-control form-control-user" type="text" name="post"/><br>
                                             </tr>
                                             <tr>
                                               
                                         <tr>
                                          <td style="display: flex; justify-content: center; align-items: center; ">No. Of Vacancy :</td> <td><spr:input path="vacancy" style="height: 0.7cm" class="form-control form-control-user" type="text" name="noOfVacancy" /><br>
                                         </tr>
                                         <tr>
                                         
                                         
                                           <tr>
                                            <td style="display: flex; justify-content: center; align-items: center; ">Grade :</td> <td><spr:input path="grade" style="height: 0.7cm" class="form-control form-control-user" type="text" name="Grade" /><br>
                                         </tr>
                                         <tr>
                                         
                                         
                                           
                                           <tr>
                                            <td style="display: flex; justify-content: center; align-items: center; ">Exam Description :</td> <td><spr:input path="examDesc" style="height: 0.7cm" class="form-control form-control-user" type="text" name="examDescription" /><br>
                                         </tr>
                                         <tr>
                                                
                                                
                                                <tr>
                                                 <td style="display: flex; justify-content: center; align-items: center; ">Useful Link :</td> <td><spr:input path="links" style="height: 0.7cm" class="form-control form-control-user"  name="usefulLink" /><br>
                                                 </tr>
                                                 <tr>                                        
                                        
                                        </table>
                                         <div>
                            <input type="submit" class="btn btn-primary btn-user " style="margin:50px; margin-top: 10px">
                            
                          
                          <input type="reset" class="btn btn-primary btn-user" style="margin:60px; margin-top: 10px">
                                
                            </div>
                                       	</spr:form>
                            
                          </div>
                        
                           
                              
                        
                              
                      		
                        
                          
                       
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