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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vaibh
 */
public class Adminlogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
    
   HttpSession session=req.getSession();
       Connection cn=null;
       Statement st=null;
       String adminname=req.getParameter("Aname");
       String pass=req.getParameter("Rpass");
       String btn=req.getParameter("btn");
       
       
       out.println(adminname);
       out.println(pass);
       
       database db=new database();
       out.println(db.connectdb());
       
       if(btn.equals("Login"))
         {
             try
             {
              Class.forName("com.mysql.jdbc.Driver");
              cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/estore","root","root");
              st=cn.createStatement();
              String sql="select * from registration where username='"+adminname.toString()+"'and password='"+pass.toString()+"'";
              ResultSet rs=st.executeQuery(sql);
              if(rs.next())
              {
                  
                  session.setAttribute("fname",rs.getString("Fname"));
                  session.setAttribute("address",rs.getString("address"));
                  session.setAttribute("cno",rs.getString("contact"));
                  resp.sendRedirect("category.jsp");
              }
              else
              {
                  out.println("Login Faild");
              }
                 
             }catch(Exception ex)
             {
                 out.println(ex.toString());
             }
         
         }
       
}

}

