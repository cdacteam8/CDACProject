<!DOCTYPE html>
<html lang="en">
<head>
       
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Exam Dashboard</title>
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
                            <h1>Exam Dashboard</h1>
                            </div>
                           <br>
                    <form class="user">
                      <div class="form-group">
                      	<h4>Select Highest Qualification</h4>
                        <input type="checkbox" name="SSC" value="SSC">  SSC<br>
                        <input type="checkbox" name="HSC" value="HSC">  HSC<br>
                        <input type="checkbox" name="DIPLOMA" value="DIPLOMA">  DIPLOMA<br>
                        <input type="checkbox" name="GRADUATE" value="GRADUATE">  GRADUATE<br>
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