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
        <title>registration</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
        <style>
            .div1
            {
                height: 900px;
                width: 500px;
                background-color: white;
                border: none;
                border-radius: 5px 5px 5px 5px;
                margin-left: 900px;
                margin-top: 100px;
                margin-bottom: 50px;
            }
            
             h3
            {
                font-family:cursive;
                font-size: 46px;
                color: purple;
                padding: 5px 0;
                display: inline-block;
                border: none;
                border-bottom: 3px solid black;

                
            }
            
            input[type=text], input[type=password],select
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
            input[type=password]:hover
            {
               color: white;
               background-color: purple; 
               opacity: 0.5;
            }
            
            select
            {
               font-family: cursive;
             
            }
            select:hover
            {
               color: white;
               background-color: purple;    
            }

               
            
            textarea
                    {
                       border: none;
                       background: none;
                       height: 50px;
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
                          
                    label
                    {
                        font-family: cursive;
                    }
                    
                    input[type=radio]
                    {
                         font-family: cursive;
                    }
                    
            
        </style>
    </head>
    <body style="background-image: url(images/greenwall.jpg); background-size: cover">
                        <form name="ab" action="registration" method="post">

        
        <div class="div1">
            <br>
            <img src="images/registration.png" height="100px" width="100px" style="margin-left: 190px">
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-12">
                <center><h3>REGISTRATION</h3></center></div>
                </div><br><br>
                
                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                <input type="text" class="form-control" placeholder="Enter your full name" name="Fname" onkeypress="javascript:return isString(event)" required>
                </div>
            </div> <br>
            
                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <textarea  placeholder="Enter your address" name="address" required></textarea>
                </div>
            </div><br>            
               
                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <input type="text" class="form-control" maxlength="10" placeholder="Enter your mobile number" name="Cno"  onkeypress="javascript : return isNumber(event)" required>
                </div>
            </div><br> 
            
                
                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <input type="text" class="form-control" placeholder="create username" name="uname" required>
                </div>
            </div><br> 
                
                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                <input type="password" class="form-control" placeholder="Enter your passsword" name="pass" required>
                </div>
            </div><br> 
                
                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                <input type="password" class="form-control" placeholder="Confirm your password" name="Cpass" required>
                </div>
            </div><br>
            
                <div class="row">
                <div class="col-sm-2"> </div>
                <div class="col-sm-6">
                <select name="gender" required>
                   <option>select your Gender</option>
                   <option>male</option>
                   <option>Female</option>
                </select>                             
            </div>
            </div><br><br>
            
            <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-8">
            <label><input type="checkbox"> I agree all statements in<u>Terms of service</u></label></div>
            </div>
            <br>
             
            <div class="row">
                <div class="col-sm-1"></div>
                <center><div class="col-sm-12">
                <input type="submit" class="btn btn-success" class="form-control" name="add" value="Register">
                </div></center>    
             </div><br>
             
             <div class="row">
                 <div class="col-sm-2"></div>
                 <div class="col-sm-8">
                 <label>Already have an account?</label>
                 <a href="ulogin.jsp">Sign-In now</a></div>
             </div>
                
            <table>
      
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
   String sql="Select * from registration where username='"+session.getAttribute("Fname")+"'";
   ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                                       {   
                    String R_ID=rs.getString("R_ID"); 
                   // String Uid=rs.getString("user_id");
                    String Fname=rs.getString("Fullname");
                    String address=rs.getString("address");
                    String Cno=rs.getString("contactno");  
                    String uname=rs.getString("username");    
                    String pass=rs.getString("password");   
                    String Cpass=rs.getString("cpassword");                                
                    String gender=rs.getString("gender");                                
                                                
                    
                    
               %>
  <tr>
    <td><%=count++%></td>
    <td><%=Fname%></td>
    <td><%=address%></td>
    <td><%=Cno%></td>
    <td><%=uname%></td>
    <td><%=pass%></td>
    <td><%=Cpass%></td>
    <td><%=gender%></td>

    

   
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
             
             
        </div>
        </form>
    </body>
</html>
