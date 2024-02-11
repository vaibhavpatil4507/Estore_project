

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View_cat</title>
        <link rel="stylesheet" href="bootstrap.css">
        <%@include file="user_menubar.jsp"%>   

        <style>
           .container
           {
               margin-left: 70px;
              padding: 10px;
               margin-top:20px;
               background-color: white;
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
                border-radius: 5px 5px 5px 5px;
                

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
        String sql="select * from category";
        ResultSet rs=st.executeQuery(sql);
        while(rs.next())
                       {
            String cname=rs.getString("category_name");
            String des=rs.getString("Product_discription");
            String img=rs.getString("image");
                 
  %>
  
  <div class="div1">
      <form name="abc" action="view_subcat.jsp" method="post">
              <img src="<%=img%>" height="290" width="290">
              
              <br><br>
              
              <center> <label><%=cname%></label></center>
              <input type="hidden" name="category_name"  value="<%=cname%>">
              <input type="submit" value="view" class="form-control btn-primary">      
              
   
                
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
