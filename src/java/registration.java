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
public class registration extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         PrintWriter out=resp.getWriter();

        
        String full_name =req.getParameter("Fname");
        String address =req.getParameter("address");
        String Cno =req.getParameter("Cno");
        String uname =req.getParameter("uname");
        String  pass=req.getParameter("pass");
        String  Cpass=req.getParameter("Cpass");
        String  gender=req.getParameter("gender");
        String btn=req.getParameter("add");
       
       
       out.println(full_name);
       out.println(address);
       out.println(Cno);
       out.println(uname);
       out.println(pass);
       out.println(Cpass);
       out.println(gender);
       
       database db=new database();
       out.println(db.connectdb());
       
       if(btn.equals("Register"))
       {
           String insert=db.Insert("insert into Registration(Fname,address,contact,username,password,rpassword,gender)"
  + "values('"+full_name.toString()+"','"+address.toString()+"','"+Cno.toString()+"','"+uname.toString()+"','"+pass.toString()+"','"+Cpass.toString()+"','"+gender.toString()+"' ) ");
                   out.println(insert);
                   
                   resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Successfully registerd');");
        out.println("location='registration.jsp';");
        out.println("</script>");
       }
    }

    
    
}
