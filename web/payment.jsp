<%-- 
    Document   : Adminlogin
    Created on : 9 Aug, 2023, 1:31:45 PM
    Author     : vaibh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        
                <%@include file="user_menubar.jsp"%>   

        <script>
        function cal()
       {
           
           var price=document.getElementById("p").value;
           document.getElementById("tp").value=parseFloat(qty)*parseFloat(Tprice);           
           
       }</script>   
    </head>
     <body>
     <style>
        .div1
        {
            background-color: white;
            background-size:cover;
            height:600px;
            width:35%;
            border: none;
            border-radius: 5px 5px 5px 5px;
            box-shadow: 2px 2px 20px 2px black;
            margin-left: 900px;
            margin-top: 40px;
            margin-bottom: 50px;
        }
        
            input[type=text],input[type=date],input[type=password]
            {
                height: 50px;
                width: 320px;
                font-family: cursive;
                border:none;
                border-radius: 5px 5px 5px 5px;
                box-shadow: 1px 1px 10px 1px white;
                background-color: transparent;
                border-bottom: 2px solid black;
            }
            input[type=text]:hover
            {
               color: white;
               background-color: purple; 
               opacity: 0.5;
            }
            input[type=date]:hover
            {
               color: white;
               background-color: purple; 
               opacity: 0.5;  
            }
            input[type=password]:hover
            {
               color: white;
               background-color: purple; 
               opacity: 0.5;
            }
        
        </style>
      
        </head>
        <body style="background-image: url(images/greenwall.jpg) ;background-size:cover">
                    <form name="ab" action="payment" method="post">
                       <%
                    Connection cn=null;
                    Statement st=null;
                    try
                    {
                         Class.forName("com.mysql.jdbc.Driver");
     cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Estore","root","root");
                                              }
                    catch(Exception ex)
                    {
                        out.println(ex);
                        
                    }
                    
                    
                                         int id=1;
                      try
                        {
                          st=cn.createStatement();
                          String sql="select id from payment";
                          ResultSet rs=st.executeQuery(sql);
                          while(rs.next())
                           {
                              id=Integer.parseInt(rs.getString("id"))+1;
                           }
                        }
                      catch(Exception ex)
                         {
                          out.println(ex);
                         }
           %> 

            
                  <div class="div1">
                      <br>
                      <img src="images/payment.png" height="70px" width="70px" style="margin-left:230px">            
                      <center><u><h1 style="font-family: cursive;color: purple"><b>Payment Form</b></h1></u></center>
                      <br><br>
                      
                      
                          <div class="row">
                          <div class="col-sm-2"></div>
                          <div class="col-sm-8">
                              <input type="text" class="form-control" placeholder="Card Number"  name="Cno" onkeypress="javascript:return isContactno(event)" maxlength="16" required>
                      </div></div><br>
                      
                          <div class="row">
                          <div class="col-sm-2"></div>
                          <div class="col-sm-8">
                              <input type="text" class="form-control" placeholder="Card Holder Name"  name="Hname" onkeypress="javascript:return isString(event)" required>
                          </div> 
                      </div><br>
                          
                     <div class="row">
                          <div class="col-sm-2"></div>
                          <div class="col-sm-8">
                          <input type="date" class="form-control" placeholder="Expiry date"  name="date" required>
                          </div> 
                      </div><br>
                         
                      <div class="row">
                          <div class="col-sm-2"></div>
                          <div class="col-sm-8">
                          <input type="password" class="form-control" placeholder="CVV"  name="cvv" maxlength="3" onkeypress="javascript:return isNumber(event)">
                      </div></div><br>
                      
                          <div class="row">
                          <div class="col-sm-2"></div>
                          <div class="col-sm-8">
                              <input type="text" class="form-control" placeholder="Amount" id="tp" name="Amount" value="<%=session.getAttribute("Tpc")%>" onkeypress="javascript:return isNumber(event)">
                      </div> </div><br>
                         
                      
                           <div class="row">
                           <div class="col-sm-1"></div>
                           <div class="col-sm-11">
                           <input type="submit" class="btn btn-primary" class="form-control" value="confirm payment" name="add">&nbsp;&nbsp;&nbsp;&nbsp;
                             </div>
                      </div>
                   </div>
                 </form>
                       </body>
</html>
