/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vaibh
 */
public class payment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();

       String payment_id=req.getParameter("Pid");
       String contact=req.getParameter("Cno");
       String Hname=req.getParameter("Hname");
       String Crdno=req.getParameter("date");
       String date=req.getParameter("cvv");
       String Tprice=req.getParameter("Amount");
       String btn=req.getParameter("add");

       
       out.println(payment_id);
       out.println(contact);
       out.println(Hname);
       out.println(Crdno);
       out.println(date);      
       out.println(Tprice);

       
       database db=new database();
       out.println(db.connectdb());
       
       
       if(btn.equals("confirm payment"))
       {
           String insert=db.Insert("insert into payment(Card_Number,Card_Holder_Name,Expiry_Date,CVV,Amount )values('"+contact.toString()+"','"+Hname.toString()+"','"+Crdno.toString()+"','"+date.toString()+"','"+Tprice.toString()+"') ");
            out.println(insert);
           
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('payment done');");
        out.println("location='view_category.jsp';");
        out.println("</script>");
       }
       else{
           out.println("alert('payment Failed')");
       }
       
      /* if(btn.equals("Update"))
       {
           String update=db.Update("update payment set username='"+username.toString()+"',contact='"+contact.toString()+"',product_name='"+product.toString()+"',quantity='"+quantity.toString()+"',price='"+price.toString()+"',Tprice='"+Tprice.toString()+"',email='"+Eid.toString()+"',card_no='"+Crdno.toString()+"',pdate='"+date.toString()+"' where id='"+customer_id.toString()+"'");
           out.println(update);
         
           resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Updated');");
        out.println("location='payment.jsp';");
        out.println("</script>");
       }
       
       if(btn.equals("Delete"))
         {
          String delete=db.Delete("delete from payment where id='"+customer_id.toString()+"'");
          out.println(delete);
          
          resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Deleted');");
        out.println("location='payment.jsp';");
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
        String sql="select * from payment where id='"+customer_id.toString()+"'";
        
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
        req.setAttribute("id", rs.getString("id"));
        req.setAttribute("uname", rs.getString("username"));
        req.setAttribute("Cno", rs.getString("contact"));
        req.setAttribute("Pname", rs.getString("product_name"));
        req.setAttribute("Qty", rs.getString("quantity"));
        req.setAttribute("price", rs.getString("price"));
        req.setAttribute("Tprice", rs.getString("Tprice"));
        req.setAttribute("email", rs.getString("email"));
        req.setAttribute("Cdno", rs.getString("card_no"));
        req.setAttribute("pdate", rs.getString("pdate"));

        
        req.getRequestDispatcher("payment.jsp").forward(req, resp);
        }
        }
        catch(Exception ex)
        {
            out.println(ex.toString());
        }
        }*/
    }
}

    

