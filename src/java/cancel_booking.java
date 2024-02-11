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
public class cancel_booking extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                PrintWriter out=resp.getWriter();

        
        String booking_id =req.getParameter("Bid");
       String username=req.getParameter("uname");
        String contact=req.getParameter("Cno");
       String date=req.getParameter("date");
       String discription=req.getParameter("disc");
        String btn=req.getParameter("add");
      
       
       out.println(booking_id);
       out.println(username);
       out.println(date);
       out.println(contact);
       out.println(discription);
       
        database db=new database();
       out.println(db.connectdb());
       
       
//       if(btn.equals("Submit"))
//       {
//           String insert=db.Insert("insert into cancel_booking(username,date,contact_no,discription)values('"+username.toString()+"','"+date.toString()+"','"+contact.toString()+"','"+discription.toString()+"' ) ");
//                   out.println(insert);
//                   
//                  resp.setContentType("text/html;charset=UTF-8");
//        out.println("<script type=\"text/javascript\">");
//        out.println("alert('Records Submitted');");
//        out.println("location='cancel_booking.jsp';");
//        out.println("</script>");
//       }
       
       if(btn.equals("Submit"))
         {
          String delete=db.Delete("delete from cancel_booking where booking_id='"+booking_id.toString()+"'");
          out.println(delete);
          
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Deleted');");
        out.println("location='cancel_booking.jsp';");
        out.println("</script>");
         }
    
    }

    
}
