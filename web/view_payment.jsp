<%-- 
    Document   : Adminlogin
    Created on : 15 Aug, 2023, 3:31:45 PM
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
        <title>View payment Page</title>
        <link rel="stylesheet" href="bootstrap.css">
                <%@include file="admin_menubar.jsp" %>   

                <style>
                    .div1
                    {
                       background-color:whitesmoke;
                       height: 650px;
                       width: 93%;
                       border: none;
                       margin-left: 60px;
                       margin-top: 20px;
                       border-radius: 25px;
                       box-shadow: 2px 2px 20px 2px graytext;
opacity: 0.9;
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
                      background-color: #dddddd;
                     }
        </style>
    </head>
    <body style="background-color:whitesmoke">
        <br>
        <div class="div1"
             
             <center>
                <h1 style="color: black;font-size: 40px; margin-left: 600px; font-family: elephant"><b>Payment Details</b></h1>
            </center>
    <br></br>
        <table>
          <tr>

            <th>Id</th>           
            <th>Card Number</th>
            <th>Card Holder Name</th>
            <th>Expiry Date</th>
            <th>CVV</th>
            <th>Amount</th>
            

          </tr> 
          <tbody>
       <%
  String event=request.getParameter("btninsert");
  Connection cn=null;
  Statement st=null;
  
         try{
             Class.forName("com.mysql.jdbc.Driver");
              cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/estore","root","root");
              int count=1;
              st=cn.createStatement();
   String sql="Select * from payment";
   ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                                       {   
                    String id=rs.getString("payment_id");                
                    String crdno=rs.getString("Card_Number");
                    String name=rs.getString("Card_Holder_Name");
                    String expdate=rs.getString("Expiry_Date");
                    String date=rs.getString("CVV");  
                    String price=rs.getString("Amount");                                
                  
                    
               %>
  <tr>
    <td><%=count++%></td>
    <td><%=crdno%></td>
    <td><%=name%></td>   
    <td><%=expdate%></td>
    <td><%=date%></td>
    <td><%=price%></td>

   
  </tr>
  <%                                
                                       
                }
         }catch(Exception e)
                                 {
             out.println(e.toString());
         }
                 
 

%> 

        </table>
    
       
    </body>
</html>
