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
public class sub_category extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         PrintWriter out=resp.getWriter();
        
        String subcategory_id=req.getParameter("SC_id");
        String category =req.getParameter("Cname");
        String subcategory_name=req.getParameter("SC_name");
        String img=req.getParameter("img");
        String Discription=req.getParameter("disc");
        String btn=req.getParameter("add");
        
        out.println(subcategory_id);
        out.println(category);
        out.println(subcategory_name);
        out.println(img);
        out.println(Discription);
        
       database db=new database();
       out.println(db.connectdb());
         
       
       if(btn.equals("Insert"))
       {
           String insert=db.Insert("insert into add_subcategory(category_name,subcategory_name,image,Product_discription)values('"+category.toString()+"','"+subcategory_name.toString()+"','images/"+img.toString()+"','"+Discription.toString()+"') ");
           out.println(insert);
           
        resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Inserted');");
        out.println("location='sub_category.jsp';");
        out.println("</script>");
       }
       
       if(btn.equals("Update"))
       {
           String update=db.Update("update Add_subcategory set subcategory_name='"+subcategory_name.toString()+"',image='images/"+img.toString()+"',Product_discription='"+Discription.toString()+"'where subcategory_id='"+subcategory_id.toString()+"'");
           out.println(update);
           
           resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Updated');");
        out.println("location='sub_category.jsp';");
        out.println("</script>");
       }
       
       if(btn.equals("Delete"))
         {
          String delete=db.Delete("delete from Add_subcategory where subcategory_id='"+subcategory_id.toString()+"'");
          out.println(delete);
          
          resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Deleted');");
        out.println("location='sub_category.jsp';");
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
        String sql="select * from add_subcategory where subcategory_id='"+subcategory_id.toString()+"'";
        
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
        req.setAttribute("subcategory_id", rs.getString("subcategory_id"));
        req.setAttribute("category_name", rs.getString("category_name"));
        req.setAttribute("subcategory_name", rs.getString("subcategory_name"));
        req.setAttribute("image", rs.getString("image"));
        req.setAttribute("Product_discription", rs.getString("Product_discription"));
       
        
        req.getRequestDispatcher("sub_category.jsp").forward(req, resp);
        }
        }
        catch(Exception ex)
        {
            out.println(ex.toString());
        }
        }
    }
}
