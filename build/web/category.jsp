

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>category</title>
       <link rel="stylesheet" href="bootstrap.css">
       <script src="validation.js"></script>
        <%@include file="admin_menubar.jsp"%>   
        <style>
            .div1
            {
                background-color: white;
                height: 890px;
                width: 35%;
                border: none;
                border-radius: 5px 5px 5px 5px;
                box-shadow: 1px 1px 30px 1px black;
                margin-left: 900px;
                margin-top: 100px;
                margin-bottom: 90px;
                
            }
            h2
            {
                font-family:cursive;
                font-size: 45px;
                color: purple;
                padding: 5px 0;
                display: inline-block;
                border-bottom: 3px solid black;

                
            }
            
            input[type=text], input[type=tel]
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
            
            input[type=tel]:hover
            {
               color: white;
               background-color: purple; 
               opacity: 0.5;  
            }
            
                 
            input[type=button]
            {
               height: 30px;
               width: 100px;
               padding: 0px 10px;
               color: purple;
               font-family: cursive;
               font-size: 20px;
               background: none;
               border:1px solid purple;
               box-shadow: 1px 1px 20px 1px white;
               border-radius: 5px 5px 5px 5px;
               
            }
                        input[type=button]:hover
                        {
                            color: white;
                            background-color: purple;
                        }
                    label
                    {
                        font-family: cursive;
                        font-style: normal;
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

                   </style>
                   <script>
                   function clear()
                   {
                    document.getElementById("Cname").value="";
                    document.getElementById("des").value="";
                   }
            </script>
            </head>
            <body style="background-image:url(images/greenwall.jpg);background-size:cover">
               
                <form name="ab" action="category" method="post">

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
                          String sql="select category_id from category";
                          ResultSet rs=st.executeQuery(sql);
                          while(rs.next())
                           {
                              id=Integer.parseInt(rs.getString("category_id"))+1;
                           }
                        }
                      catch(Exception ex)
                         {
                          out.println(ex);
                         }
           %>    
                    
        <div class="div1">
            <br>
            <img src="images/category.png" height="70px" width="70px" style="margin-left: 230px">
            <center><h2>CATEGORY</h2></center><br><br><br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-6">
                <input type="text" class="form-control" placeholder="Category-ID" name="Cid" value="<%=id%>" value="<%=request.getAttribute("Cid")%>" onkeypress="javascript : return isNumber(event)"></div>
                </div><br><br>

                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-6">
                <input type="text" class="form-control" placeholder="Category-name" name="Cname" id="Cname" value="<%=request.getAttribute("Cname")%>"onkeypress="javascript : return isString(event)"></div>
                </div><br><br><br>
                        
        <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-5">
                <label>upload product image</label>
                <input type="file" name="img"  >
            </div></div><br>
            
        <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-5">
                <img src="<%=request.getAttribute("img")%>" height="100" width="100">
             </div></div><br><br><br>
                
                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                <textarea  placeholder="Discription...." name="disc" id="des" onkeypress="javascript : return isAlphanumeric(event)"> <%=request.getAttribute("disc")%> 
                </textarea>
                </div>
            </div><br><br><br>
            
        <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <input type="submit" class="btn btn-primary" class="form-control" value="Insert" name="add">&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="submit" class="btn btn-success" class="form-control" value="Update" name="add">&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="submit" class="btn btn-danger" class="form-control" value="Delete" name="add">&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="submit" class="btn btn-warning" class="form-control" value="Search" name="add">
                </div>
                </div>
        
                </div>
                    <%
             
       if(request.getAttribute("disc")==null)
               {
%> 

         <script>
            clear();
        </script>

<%
}
%>
    </form>
    </body>
</html>



