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
public class complaint extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
             PrintWriter out=resp.getWriter();

        
       String customer_id =req.getParameter("Cid");
       String username=req.getParameter("uname");
       String email=req.getParameter("Eid");
       String contact=req.getParameter("Cno");
       String discription=req.getParameter("disc");
       String btn=req.getParameter("add");

       
       out.println(customer_id);
       out.println(username);
       out.println(email);
       out.println(contact);
       out.println(discription);       
        
        database db=new database();
       out.println(db.connectdb());
        
        if(btn.equals("Submit"))
       {
           String insert=db.Insert("insert into complaint(username,email,contact_no,disription)values('"+username.toString()+"','"+email.toString()+"','"+contact.toString()+"','"+discription.toString()+"') ");
                   out.println(insert);
                   
                   resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Submitted');");
        out.println("location='complaint.jsp';");
        out.println("</script>");
       }
      
    }

    
}
