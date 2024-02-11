-<%-- 
    Document   : Adminlogin
    Created on : 9 Aug, 2023, 1:31:45 PM
    Author     : vaibh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Adminlogin</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <style>
            .div1
            {
                background-color: white;
                height: 610px;
                width: 32%;
                border-radius: 5px 5px 5px 5px;
                margin-left: 950px;
                margin-top: 70px;
                margin-bottom: 100px;
                
            }
            h3
            {
                font-family:algerian;
                font-size: 45px;
                color: purple;
                margin-left: 68px;
                margin-top: 15px
                
            }
            
            input[type=text]
            {
                height: 40px;
                width: 250px;
                border:none;
                border-bottom:1px #00ffff; 
                background: none;
                    
            }
            
            input[type=password]
            {
                height: 40px;
                width: 250px;
                border:none;
                background: none;
            }
              
            input[type=submit]
            {
                border: 1px solid purple;
                color: purple;
                font-family: elephant;
                font-size: 30px;
                background: none;
                border-radius: 5px 5px 5px 5px;
                width: 150px;
               
            }
            
             input[type=button]:hover
             {
                color: white;
                background-color: purple;
             }
            
            
          
        </style>
    </head>
    <body style="background-image: url(images/greenwall.jpg); background-size: cover">
        <form name="ab" action="Adminlogin" method="post">
            
        <div class="div1">
        <br>
        <div class="row">
        <div class="col-sm-1"></div>
        <div class="col-sm-12">
        <h3><u>Online E-store</u></h3></div>
        </div><br>
            
            
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-9">
        <label>Requires an active seller account</label>
        </div>
        </div>
                        
        <div class="row">
        <div class="col-sm-7"></div>
        <div class="col-sm-5">
        <a href="registration.jsp">Forgot password?</a></div>
        </div>
            
        <div class="row">
        <div class="col-sm-12">
        <hr style="background-color:purple;width: 350px;height: 2px;margin-left: 70px"></hr></div>
        </div><br>
            
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-1">
        <img src="images/user.png" height="33px" width="33px">
        </div>
        <div class="col-sm-1">
        <input type="text" class="form-control" placeholder="Admin Name" name="Aname" required>
        </div>
        </div> 
        <br>    
                        
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-1">
        <img src="images/key.png" height="31px" width="31px">
        </div>
        <div class="col-sm-1">
        <input type="password" class="form-control" placeholder="Password" name="Rpass" required >
        </div>    
        </div>
            
        <div class="row">
        <div class="col-sm-12">
        <hr style="background-color:purple;width: 350px;height: 2px;margin-left: 70px"></hr></div>
        </div>
            
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-4">
        <input type="checkbox" required>Remember me</div>            
        </div>            
        <br><br><br>
                             
         <div class="row">
         <center><div class="col-sm-12">
         <u><input type="submit"  value="Login" name="btn"></u>
         </div></center>
         </div><br><br>
        
         <div class="row">
         <div class="col-sm-2"></div>
         <div class="col-sm-10">
         <label>---------------------New to Online E-store------------------</label></div></div>
         <br>
         <div class="row">
         <div class="col-sm-5"></div> 
         <div class="col-sm-6">
         <a href="registration.jsp">Register Here</a></div>
         </div>
         </div>
       
         </form>
    </body>
</html>




