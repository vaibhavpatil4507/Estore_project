<%-- 
    Document   : Adminlogin
    Created on : 9 Aug, 2023, 1:31:45 PM
    Author     : vaibh
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>booking</title>
        <link rel="stylesheet" href="bootstrap.css">
               <script src="validation.js"></script>
               
                       <%@include file="user_menubar.jsp"%>   


        <style>
            .div1
            {
               background-color: white;
                height: 900px;
                width: 35%;
                border: none;
                border-radius: 5px 5px 5px 5px;
                box-shadow: 1px 1px 20px 1px black;
                margin-left: 900px;
                margin-top: 100px;
                margin-bottom: 100px;
                
            }
            h2
            {
               font-size: 50px;
               font-family:cursive;
               color: purple;
               display: inline-block;
               border-bottom: 3px solid black;
                
            }
            input[type=text],input[type=date]
            {
               height: 50px;
               width: 320px;
               font-family: cursive;
               border:none;
               box-shadow: 1px 1px 10px 1px white;
               background: none;
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
            
            
             textarea
             {
                border: none;
                background: none;
                height: 150px;
                width: 320px;
                font-family: cursive; 
                border-bottom: 2px solid black; 
                box-shadow: 1px 1px 20px 1px white;
                border-radius: 5px;
             }
             
             textarea:hover
              {
                 color: white;
                 background-color: purple; 
                 opacity: 0.5;  
                                        }
     
            </style>
           
            <script> 
            function cal()
            {
                var a=document.getElementById("Qty").value;
                var b=document.getElementById("Pc").value;
                
                var result=a*b;
                    
                document.getElementById("Tpc").value=result;
            }
        </script>
            </head>
            <body style="background-image:url(images/greenwall.jpg);background-size:cover">
                   <form name="ab" action="booking" method="post">

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
                          String sql="select booking_id from booking";
                          ResultSet rs=st.executeQuery(sql);
                          while(rs.next())
                           {
                              id=Integer.parseInt(rs.getString("booking_id"))+1;
                           }
                        }
                      catch(Exception ex)
                         {
                          out.println(ex);
                         }
           %>   
                       

        <div class="div1">
          <div class="row">
          <div class="col-sm-12">
          <br>
          <img src="images/booking.png" height="90px" width="90px" style="margin-left:230px">            
          <center><h2>BOOKING</h2><br><br></center></div>
          </div>
            
       <div class="row">
           <div class="col-sm-2"></div>
           <div class="col-sm-6">
           <input type="text" class="form-control" placeholder="Booking-ID" name="Bid" value="<%=id%>" onkeypress="javascript : return isNumber(event)"></div>
           </div>
           <br>
           
           
           
      <div class="row">
           <div class="col-sm-2"></div>
           <div class="col-sm-6">
               <input type="text" class="form-control" placeholder="Customer Name" value="<%=session.getAttribute("fname")%>" name="uname" > </div>
           </div>
           <br>
                
      <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-6">
                <input type="text" class="form-control" maxlength="10" placeholder="Enter your contact number" value="<%=session.getAttribute("cno")%>"  name="Cno"  onkeypress="javascript : return isNumber(event)">
            </div>
            </div>
            <br>
                    
      <div class="row">
             <div class="col-sm-2"></div>
             <div class="col-sm-6">
                 <input type="text" class="form-control" placeholder="Enter product name/product ID" name="pname" value="<%=request.getParameter("pname")%>" onkeypress="javascript : return isAlphanumric(event)"></div>
             </div>
             <br>  
       
             
        <div class="row">
              <div class="col-sm-2"></div>
              <div class="col-sm-6">
                  <input type="date" class="form-control" placeholder="Date" id="date" name="date">
                </div> 
                </div><br>      
        
         <div class="row">
                          <div class="col-sm-2"></div>
                          <div class="col-sm-8">
                              <input type="text" class="form-control" placeholder="Quantity" id="Qty" name="Quantity"  onkeyup="cal()" onkeypress="javascript:return isNumber(event)">
                      </div> </div><br>    
             
             
        <div class="row">
                          <div class="col-sm-2"></div>
                          <div class="col-sm-8">
                              <input type="text" class="form-control" placeholder="Price" id="Pc" name="Price"onkeyup="cal()" value="<%=request.getParameter("price")%>" onkeypress="javascript:return isNumber(event)">
                      </div> </div><br>
                      
        <div class="row">
                          <div class="col-sm-2"></div>
                          <div class="col-sm-8">
                          <input type="text" class="form-control" placeholder="Tprice" id="Tpc" name="Tprice"onkeyup="cal()" >
                      </div> </div><br>              
             
             
      
      <div class="row">
             <div class="col-sm-2"></div>
             <div class="col-sm-8">
             <input type="submit" class="btn btn-primary" class="form-control" value="Booking" name="add">&nbsp;&nbsp;&nbsp;&nbsp;
             </div>
             </div>
                
   </div>
       <%
             
       if(request.getAttribute("Tpc")==null)
               {
%> 

         <script>
           // clear();
        </script>

<%
}
%>                
</form> 
                      
    </body>
</html>

