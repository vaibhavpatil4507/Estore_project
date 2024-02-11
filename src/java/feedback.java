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
public class feedback extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        
        
       String username=req.getParameter("uname");
       String Eid=req.getParameter("Eid");
       String cno=req.getParameter("Cno");
       String feedback=req.getParameter("feedback");
       String btn=req.getParameter("add");
     
       
       out.println(username);
       out.println(Eid);
       out.println(cno);
       out.println(feedback);
       database db=new database();
       out.println(db.connectdb());
       
       
       if(btn.equals("Feedback"))
       {
           String insert=db.Insert("insert into feedback(username,email,contact_no,feedback)values('"+username.toString()+"','"+Eid.toString()+"','"+cno.toString()+"','"+feedback.toString()+"') ");
                   out.println(insert);
       }
      
    }
    }

    
