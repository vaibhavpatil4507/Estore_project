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
        <title>View_subcat</title>
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
        String sql="select * from add_subcategory where category_name='"+request.getParameter("category_name") +"'";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next())
                       {
            String subcategory_name=rs.getString("subcategory_name");
            String des=rs.getString("Product_discription");
            String img=rs.getString("image");
                 
  %>
  
  <div class="div1">
      <form name="abcd" action="user_view_product.jsp" method="post">
              <img src="<%=img%>" height="250" width="270">
              
              <br><br>
              
              <center> <label><%=subcategory_name%></label></center>
         <input type="hidden" name="subcategory_name"  value="<%=subcategory_name%>">
                  <input type="submit" value="view" class="form-control btn-success">       
              
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
