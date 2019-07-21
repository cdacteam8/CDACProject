<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>   
    
<!DOCTYPE html>
<html>

<head>
        <title>Log In</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
         integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
         crossorigin="anonymous">
    </head>

<body class="bg-primary">
        <div class=" fluid-container ">
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
                                <h1 class="h4  text-info text-gray-900 mb-4">LOGIN HERE</h1>
                                </div>
                                <spr:form action="login.htm" commandName="user" class="user">
                          <div class="form-group">
                            
                               <spr:input path="emailAddress" class="form-control form-control-user"
                             placeholder="Enter Email Address..." id="emailId"
                               title="Enter valid Email Id" required="required"/>
                          </div>
                          <div class="form-group">
                            

                            <spr:password path="userPass" class="form-control" id="Password" 
                            placeholder="Password" title="Enter valid Password" required="required"/>
                          </div>
                          
                          <input type="submit" value="Login"  class="btn btn-primary btn-user btn-block" />
                          
                          <hr>
                        </spr:form>
                        <a href="adminLogin.jsp" class="btn btn-primary btn-user btn-block">
                         Admin Login
                        </a>
                        <hr>
                        <div class="text-center">
                          <a class="small" href="forgot-password.jsp">Forgot Password?</a>
                        </div>
                        <div class="text-center">
                          <a class="btn btn-primary rounded text-light" style="width:200px" href="prep_reg_form.htm">Register</a>
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