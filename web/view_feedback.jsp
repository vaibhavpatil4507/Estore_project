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
        <title>view_feedback</title>
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
                <u><h1 style="color: purple;font-size: 40px; margin-left: 500px; font-family: cursive"><b>VIEW FEEDBACK</b></h1></u>
            </center>
    <br></br>
<table>
  <tr>
  
    <th>Sr.no</th>
    <th>Username</th>
    <th>Email-Id</th>
    <th>Contact_No</th>
    <th>Feedback</th>


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
   String sql="Select * from feedback";
   ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                                       {   
                    String id=rs.getString("custumer_id"); 
                    String name=rs.getString("username");
                    String email=rs.getString("email");
                    String Cno=rs.getString("contact_no");
                    String fed=rs.getString("feedback");                  
                    
                    
               %>
  <tr>
    <td><%=count++%></td>
    <td><%=name%></td>
    <td><%=email%></td>
    <td><%=Cno%></td>
    <td><%=fed%></td>

   
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


