<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->


<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h3>Reg Form</h3>
        
       
            <form action="test" method="post" ">
            Name <input type="text" name="name" /> <br>
            Username <input type="text" name="username" /> <br>
            password <input type="text" name="password" /><br>
            Phone No. <input type="text" name="phone" /><br>
            Email Address <input type="text" name="email" /><br>
            Address <input type="text" name="address" /><br>
           <button type="submit" >Reg</button>  
           <h4>${param.msg}</h4>
        </form>
        
    </body>
</html>
