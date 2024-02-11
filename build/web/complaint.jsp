<%-- 
    Document   : Adminlogin
    Created on : 12 Aug, 2023, 1:31:45 PM
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
        <title>complaint</title>
        <%@include file="user_menubar.jsp"%> 
        <link rel="stylesheet" href="bootstrap.css">
        <script src="validation.js"></script>
          
        <style>
            .div1
            {
                background-color: white;
                height: 790px;
                width: 35%;
                border: none;
                border-radius: 5px 5px 5px 5px;
                box-shadow: 4px 4px 4px 4px black;
                margin-left: 900px;
                margin-top: 80px;
                margin-bottom: 50px;
                
            }
            h2
            {
                font-family:cursive;
                font-size: 45px;
                color: purple;
                display: inline-block;
                border-bottom: 3px solid black;
                box-shadow: 1px 1px 20px 1px white;

                
            }
            
            input[type=text], input[type=tel]
            {
                height: 50px;
                width: 320px;
                font-family: cursive;
                border:none;
                border-radius: 5px 5px 5px 5px;
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
            
            input[type=tel]:hover
            {
               color: white;
               background-color: purple; 
               opacity: 0.5;  
            }
           
            textarea
             {
               border: none;
               background: none;
               height: 100px;
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
                   
            </style>
            <script>
                function clear()
                {
                    document.getElementById("uname").value="";
                    document.getElementById("uid").value="";
                    document.getElementById("Cno").value="";
                    document.getElementById("dis").value="";
                    
                }
            </script>
            </head>
            <body style="background-image:url(images/greenwall.jpg);background-size:cover">
                <form name="ab" action="complaint" method="post">

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
                          String sql="select custumer_id from complaint";
                          ResultSet rs=st.executeQuery(sql);
                          while(rs.next())
                           {
                              id=Integer.parseInt(rs.getString("custumer_id"))+1;
                           }
                        }
                      catch(Exception ex)
                         {
                          out.println(ex);
                         }
           %> 
                    
        <div class="div1">
            <br>
            <img src="images/complaint.png" height="90px" width="90px" style="margin-left:230px">
            <center><h2> COMPLAINT</h2><br><br></center><br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-6">
                <input type="text" class="form-control" placeholder="Enter complaint-ID" name="Cid" value="<%=id%>" onkeypress="javascript : return isNumber(event)"></div>
                </div><br>        
                  
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-6">
                <input type="text" class="form-control" placeholder="Enter username" id="uname" name="uname"></div>
                </div><br>

                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-6">
                <input type="text" class="form-control" placeholder="Enter your Email-Id" id="uid" name="Eid"></div>
                </div><br><br>

                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-6">
                <input type="text" class="form-control" maxlength="10" placeholder="Enter your contact number" id="Cno" name="Cno" onkeypress="javascript : return isNumber(event)">

            </div>
        </div><br><br>
                 
        <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                <textarea  placeholder="Discription...." name="disc" id="dis"onkeypress="javascript : return isAlphanumeric(event)" ></textarea>
                </div>
            </div><br><br>
                       

                <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">               
                <input type="submit" class="btn btn-success" class="form-control" value="Submit" name="add" style="height: 40px;width: 100px;">&nbsp;&nbsp;&nbsp;
                <input type="submit" class="btn btn-danger" class="form-control" value="Cancel" name="add" style="height: 40px;width: 100px;">&nbsp;&nbsp;&nbsp;

                 </div>
                </div>
                  
                </div>
                     
    </form>
                <%
             
       if(request.getAttribute("Cno")==null)
               {
%> 

         <script>
            clear();
        </script>

<%
}
%> 
    </body>
</html>


