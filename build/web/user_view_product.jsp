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
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap.css">
        
                <%@include file="user_menubar.jsp"%>   

        <style>
           .container
           {
               margin-left: 70px;
              padding: 10px;
               margin-top:20px;
               background-color: #E0E0E0;
               width: 90%;
           }
           
            .div1
            {
                display: inline-block;
                margin-left: 60px;
                margin-top: 50px;
                margin-right:0px;
                background-color: white;
                box-shadow:1px 1px 1px 1px black;
                width: 40%;
                
            }
           
            
        </style>
    </head>
    <body>
         <div class="container">
        <%
        Connection cn=null;
        
       Statement st=null;
         try
        {
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Estore","root","root");
   st=cn.createStatement();
        String sql="select * from product_details where sub_category_name='"+request.getParameter("subcategory_name") +"'";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next())
                       {
            String cname=rs.getString("category_name");
            String sname=rs.getString("sub_category_name");
            String img=rs.getString("product_image");
            String pname=rs.getString("product_name");
            String discription=rs.getString("discription");
            String price=rs.getString("price");
                 
  %>
  
  <div class="div1">
         
             
      <form name="abc" action="booking.jsp" method="post">  
              <br><br>
              
       
                  <div class="row">
                      <div class="col-sm-6">
                          <img src="<%=img%>" height="200" width="200">
                      </div> 
                      <div class="col-sm-6">
                          <label>Product Name:-</label>
                          <label><%=pname%></label><input type="hidden" name="pname" value="<%=pname%>">
                          <br><br>
                          <label>Category Name:-</label><input type="hidden" name="cname" value="<%=cname%>">
                          <label><%=cname%></label>
                         <br> <br><label>Sub Category Name:-</label><input type="hidden" name="sname" value="<%=sname%>">
                          <label><%=sname%></label>
                          <br><br>
                          
                          <label>Description:-</label>
                          <label><%=discription%></label><input type="hidden" name="description" value="<%=discription%>">
                          <br><br>
                          
                           <label>Price-</label>
                          <label><%=price%></label><input type="hidden" name="price" value="<%=price%>">
                          <br><br>
                          
                          <input type="submit" value="Book Product" name="book" class="form-control btn btn-warning" style="width:80%   ">
                      </div>
         
                 </div>
                      <br>
              
      </form>
                
     
  </div>
        <%   
        }
        
        }catch(Exception ex)
        {
           out.println(ex.toString());
        }


%>
</div>
    </body>
</html>

