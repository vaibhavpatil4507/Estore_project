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
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="category.jsp">Category</a></li>
  <li><a href="sub_category.jsp">Sub category</a></li>
  <li><a href="product_details.jsp">Product Details</a></li>
  <li><a href="view_users.jsp">View Users</a></li>
  <li><a href="view_payment.jsp">Payments</a></li>
  <li><a href="view_feedback.jsp">Feedbacks</a></li>
  <li><a href="view_complaint.jsp">Complaints</a></li>
  <li><a href="view_cancel_booking.jsp">Cancel bookings</a></li>
    <li><a href="report.jsp">Report</a></li>

    <li><a href="index.html">Logout</a></li>
  
   
  <li style="float:right"><a href="#about">About</a></li>
</ul>

</body>
</html>


