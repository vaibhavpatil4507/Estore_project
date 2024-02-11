<%-- 
    Document   : Adminlogin
    Created on : 15 Aug, 2023, 3:31:45 PM
    Author     : vaibh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
ul {
  list-style-type: none;
  width: 1500px;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
  border-right:1px solid #bbb;
}

li:last-child {
  border-right: none;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #04AA6D;
}
</style>
</head>
<body>

<ul>
  <li><a class="active" href="#home">   Home  </a></li>
  <li><a href="view_category.jsp">   Category  </a></li>
<!--  <li><a href="view_subcat.jsp">   Sub category  </a></li>
  <li><a href="user_view_product.jsp">   Products </a></li>-->
<!--  <li><a href="booking.jsp">   Booking </a></li>-->
<!--  <li><a href="payment.jsp">  Payment  </a></li>-->
  <li><a href="feedback.jsp">  Feedback  </a></li>
  <li><a href="complaint.jsp">  Complaint  </a></li>
  <li><a href="cancel_booking.jsp">  Cancel Booking  </a></li>
  <li><a href="user_view_myorder.jsp">  My Orders  </a></li>
  <li><a href="index.html">Logout</a></li>
  
  <li style="float:right"><a href="#about">About</a></li>
</ul>

</body>
</html>
