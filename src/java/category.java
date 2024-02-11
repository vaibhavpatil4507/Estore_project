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

/**
 *
 * @author vaibh
 */
public class category extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        
        String category_id=req.getParameter("Cid");
        String category_name=req.getParameter("Cname");
        String img=req.getParameter("img");
        String Discription=req.getParameter("disc");
        String btn=req.getParameter("add");

        
        out.println(category_id);
        out.println(category_name);
        out.println(img);
        out.println(Discription);
        
        
        database db=new database();
       out.println(db.connectdb());
        
         if(btn.equals("Insert"))
       {
           String insert=db.Insert("insert into Category(category_name,image,Product_discription )"+"values('"+category_name.toString()+"','images/"+img.toString()+"','"+Discription.toString()+"') ");
                   out.println(insert);
                   
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Inserted');");
        out.println("location='category.jsp';");
        out.println("</script>");
       }
      
         if(btn.equals("Update"))
       {
           String update=db.Update("update Category set category_name='"+category_name.toString()+"',image='"+img.toString()+"',Product_discription='"+Discription.toString()+"'where category_id='"+category_id.toString()+"'");
           out.println(update);
           
           resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Updated');");
        out.println("location='category.jsp';");
        out.println("</script>");
           
       }
         
         if(btn.equals("Delete"))
         {
          String delete=db.Delete("delete from Category where category_id='"+category_id.toString()+"'");
          out.println(delete);
          
          
          
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Deleted');");
       // out.println("category_id-1");
        out.println("location='category.jsp';");
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
        String sql="select * from category where category_id='"+category_id.toString()+"' ";
        
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
        req.setAttribute("Cid", rs.getString("category_id"));
        req.setAttribute("Cname", rs.getString("category_name"));
        req.setAttribute("img", rs.getString("image"));
        req.setAttribute("disc", rs.getString("Product_discription"));
        
        
        req.getRequestDispatcher("category.jsp").forward(req, resp);
        }
        }
        catch(Exception ex)
        {
            out.println(ex.toString());
        }
        }
         
    }

}
