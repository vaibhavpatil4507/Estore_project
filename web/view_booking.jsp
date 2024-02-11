<%-- 
    Document   : Adminlogin
    Created on : 15 Aug, 2023, 3:31:45 PM
    Author     : vaibh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Booking Page</title>
        <link rel="stylesheet" href="bootstrap.css">
                <%@include file="admin_menubar.jsp" %>   

        <style>
            .div1
            {
               background-color:whitesmoke;
               height: 650px;
               width: 85%;
               border: solid;
               border: none;
               margin-left: 130px;
               margin-top: 20px;
               border-radius: 25px;
               box-shadow: 2px 2px 20px 2px navy;
               
            }
            table 
            {
              
              font-family: cursive;
              border-collapse: collapse;
              width: 100%;
            }

            td, th 
            {
              border: 1px solid #dddddd;
              text-align: left;
              padding: 8px;
            }

            tr:nth-child(even)
            {
              background-color: #c0c0c0;
             }
</style>
    </head>
    <body style="background-image:url(images/morn.jpg); background-size:cover">
        <br>
        <div class="div1"
             <center>
                <h1 style="color: purple;font-size: 40px; margin-left: 500px; font-family: cursive"><b>Booking Details</b></h1>
            </center>
    <br></br>
<table>
  <tr>
  
    <th>No</th>
    <th>Product_ID</th>
    <th>product_name</th>
    <th>User_ID</th>
    <th>Username</th>
    <th>Contact_No</th>
    <th>Address</th>
    <th>Product_Type</th>
    <th>Quantity</th>
    <th>Amount<th>

  </tr>
  <tr>
      <th>1</th>
      <th>13213</th>
  </tr>
   <tr>
      <th>2</th>
      <th>1566</th>
  </tr>
  
</table>
      
    </body>
</html>
