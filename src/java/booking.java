/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.naming.spi.DirStateFactory;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vaibh
 */
public class booking extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();

        
       String booking_id =req.getParameter("Bid");
       String Custname=req.getParameter("uname");
       String contact=req.getParameter("Cno");
       String product_id =req.getParameter("pname");
       String date =req.getParameter("date");
       String quantity =req.getParameter("Quantity");
       String Price=req.getParameter("Price");
       String Tprice=req.getParameter("Tprice");
       String btn=req.getParameter("add");


       
       
       out.println(booking_id);
       out.println(Custname);
       out.println(contact);
       out.println(product_id);
       out.println(date);
       out.println(quantity);
       out.println(Price);
       out.println(Tprice);
       
       database db=new database();
       out.println(db.connectdb());
       HttpSession session=req.getSession();
       
       
        
       
        if(btn.equals("Booking"))
       {  String insert=db.Insert("insert into booking(username,contact_no,product_name,date,quantity,price,Tprice )values('"+Custname.toString()+"','"+contact.toString()+"','"+product_id.toString()+"','"+date.toString()+"','"+quantity.toString()+"','"+Price.toString()+"','"+Tprice.toString()+"') ");
          out.println(insert);
          session.setAttribute("Tpc",Tprice);
          session.setAttribute("pname",product_id);
          resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Inserted');");
        out.println("location='payment.jsp';");
        out.println("</script>");
           
       }
        
       /* if(btn.equals("Update"))
       {
           String update=db.Update("update booking set user_id='"+user_id.toString()+"',username='"+username.toString()+"',contact_no='"+contact.toString()+"',product_name='"+product_id.toString()+"',quantity='"+quantity.toString()+"',discription='"+discription.toString()+"' where booking_id='"+booking_id.toString()+"'");
           out.println(update);
           
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Updated');");
        out.println("location='booking.jsp';");
        out.println("</script>");
           
       }
        
        if(btn.equals("Delete"))
         {
          String delete=db.Delete("delete from booking where booking_id='"+booking_id.toString()+"'");
          out.println(delete);
          
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Deleted');");
        out.println("location='booking.jsp';");
        out.println("</script>");
         }
        
        if(btn.equals("Search"))
        {
        Connection cn=null;
        Statement st=null;
        
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Estore","root","root");
        st=cn.createStatement();
        String sql="select * from booking where booking_id='"+booking_id.toString()+"'";
        
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
        req.setAttribute("Bid", rs.getString("booking_id"));
        req.setAttribute("uid", rs.getString("user_id"));
        req.setAttribute("uname", rs.getString("username"));
        req.setAttribute("Cno", rs.getString("contact_no"));
        req.setAttribute("Pid", rs.getString("product_name"));
        req.setAttribute("Qty", rs.getString("quantity"));
        req.setAttribute("disc", rs.getString("discription"));
        
        req.getRequestDispatcher("booking.jsp").forward(req, resp);
        }
        }
        catch(Exception ex)
        {
            out.println(ex.toString());
        }
        }*/
}
    
}