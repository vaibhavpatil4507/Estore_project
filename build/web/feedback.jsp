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
        <title>Feedback</title>
        <link rel="stylesheet" href="bootstrap.css">
        <script src="javascript.js"></script>
        
                <%@include file="user_menubar.jsp"%>   

        <style>
            .div1
            {
                background-color: white;
                height: 790px;
                width: 35%;
                border: none;
                border-radius: 5px 5px 5px 5px;
                box-shadow: 2px 5px 10px 10px black;
                margin-left: 900px;
                margin-top: 100px;
                margin-bottom: 50px;
                
            }
            h2
            {
                font-family:cursive;
                font-size: 45px;
                color: purple;
                padding: 0px 0;
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
                          
             label
             {
                font-family: cursive;
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
                function clear()
                {
                    document.getElementById("uname").value="";
                    document.getElementById("Eid").value="";
                    document.getElementById("Cno").value="";
                    document.getElementById("fed").value="";
                    
                }
            </script>
            </head>
            <body style="background-image:url(images/greenwall.jpg);background-size:cover">
                <form name="cd" action="feedback" method="post">
                    
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
                          String sql="select custumer_id from feedback";
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
            <br><br>
            <img src="images/feedback.png" height="70px" width="70px" style="margin-left:230px">            
            <center><h2> Feedback </h2><br><br></center><br>
            
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-6">
                <input type="text" class="form-control" placeholder="Enter username" id="uname" name="uname" value="<%=id%>" onkeypress="javascript : return isAlphanumeric(event)"></div>
                </div><br><br>

                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-6">
                <input type="text" class="form-control" placeholder="Enter your Email-Id" id="Eid" name="Eid"></div>
                </div><br><br>

                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-6">
                <input type="tel" maxlength="10" placeholder="enter your contact number" pattern="\d{10}" id="cno" name="Cno" onkeypress="javascript : return isContactno(event)">
            </div>
            </div><br><br>

           <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                <textarea  placeholder="Give your feedback...." name="feedback" id="fed" onkeypress="javascript : return isAlphanumeric(event)"></textarea>
                </div>
            </div><br><br>
                                     

                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-12"> 
                <center><input type="submit" class="btn btn-success" class="form-control"
                                   value="Feedback" name="add" style="height: 40px;width: 100px;">&nbsp;&nbsp;&nbsp;&nbsp;

                </center></div>
                </div>
                     
    </head>
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

