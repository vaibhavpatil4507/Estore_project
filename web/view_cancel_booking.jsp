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
        <title>View_cancel_Booking_Page</title>
        <link rel="stylesheet" href="bootstrap.css">
                <%@include file="admin_menubar.jsp" %>   

        <style>
            .div1
            {
               background-color:whitesmoke;
               height: 650px;
               width: 95%;
               border: solid;
               border: none;
               margin-left: 40px;
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
                <u><h1 style="color: purple;font-size: 40px; margin-left: 500px; font-family: cursive"><b>CANCEL BOOKING</b></h1></u>
            </center>
    <br></br>
<table>
  <tr>
  
    <th>booking_id</th>
    <th>username</th>
    <th>date</th>
    <th>contact_No</th>
    <th>Discription</th>
    

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
   String sql="Select * from cancel_booking";
   ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                                       {   
                    String id=rs.getString("booking_id"); 
                    String name=rs.getString("username");
                    String date=rs.getString("date");
                    String Cno=rs.getString("contact_no");
                    String dis=rs.getString("discription");                  
                    
                    
               %>
  <tr>
    <td><%=count++%></td>
    <td><%=name%></td>
    <td><%=date%></td>
    <td><%=Cno%></td>
    <td><%=dis%></td>

   
  </tr>
  <%                                
                                       
                }
         }catch(Exception e)
                                 {
             out.println(e.toString());
         }
                 
 

%>  
    </tbody>
  
</table>
      
    </body>
</html>

