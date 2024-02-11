<%-- 
    Document   : Adminlogin
    Created on : 9 Aug, 2023, 1:31:45 PM
    Author     : vaibh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reports</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <style>
            .div1
            {
                background-color: white;
                height: 750px;
                width: 32%;
                border-radius: 5px 5px 5px 5px;
                box-shadow: 2px 5px 10px 10px black;
                margin-left: 950px;
                margin-top: 70px;
                margin-bottom: 100px;
                
            }
            h3
            {
                font-family:algerian;
                font-size: 50px;
                color: purple;
                margin-left: 30%;
                margin-top: 15px
                
            }
           
            input[type=submit]
            {
                border: 1px solid purple;
                color: black;
                font-family: elephant;
                font-size: 20px;
                background: none;
                border-radius: 5px 5px 5px 5px;
                width: 150px;
            }
            
             input[type=submit]:hover
             {
                color: white;
                background-color: purple;
             }
            
            
          
        </style>
    </head>
    <body style="background-image: url(images/greenwall.jpg); background-size: cover">
        <form name="ab" action="view_report.jsp" method="post">
            
        <div class="div1">
        <br><br>
            <img src="images/feedback.png" height="70px" width="70px" style="margin-left:230px">
        <div class="row">
        <div class="col-sm-1"></div>
        <div class="col-sm-12">
        <h3><u>REPORTS</u></h3></div>
        </div><br><br><br><br>
            
         <div class="row">
         <center><div class="col-sm-12">
         <u><input type="submit"  value="Registration" name="btn"></u>
         </div></center>
         </div><br><br>
         
         <div class="row">
         <center><div class="col-sm-12">
         <u><input type="submit"  value="Category" name="btn"></u>
         </div></center>
         </div><br><br>
         
         <div class="row">
         <center><div class="col-sm-12">
         <u><input type="submit"  value="Prod_Details" name="btn"></u>
         </div></center>
         </div><br><br>
         
         <div class="row">
         <center><div class="col-sm-12">
                 <input type="date" value="sdate" name="sdate">
                 <input type="date" value="edate" name="edate">
         <u><input type="submit"  value="Booking" name="btn"></u>
         </div></center>
         </div><br><br>
         
         <div class="row">
         <center><div class="col-sm-12">
         <u><input type="submit"  value="Payment" name="btn"></u>
         </div></center>
         </div><br><br>
         
         <div class="row">
         <center><div class="col-sm-12">
         <u><input type="submit"  value="Feedback" name="btn"></u>
         </div></center>
         </div><br><br>
         
         
         
         </div>
       
         </form>
    </body>
</html>




