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
public class product_details extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         PrintWriter out=resp.getWriter();

        
      String product_id =req.getParameter("pid");
      String category =req.getParameter("Cname");
      String sub_category =req.getParameter("SCname");
      String img =req.getParameter("img");
      String Product_name =req.getParameter("Pname");
      String discription =req.getParameter("disc");
      String price =req.getParameter("price");
      String btn=req.getParameter("add");
 
       
       out.println(product_id);
       out.println(category);
       out.println(sub_category);
       out.println(img);
       out.println(Product_name);
       out.println(discription);
       out.println(price);
       
       database db=new database();
       out.println(db.connectdb());
       HttpSession session=req.getSession();
        
   
       if(btn.equals("Insert"))
       {
           String insert=db.Insert("insert into product_details(category_name,sub_category_name,product_image,product_name,discription,price) "+" values('"+category.toString()+"','"+sub_category.toString()+"','images/"+img.toString()+"','"+Product_name.toString()+"','"+discription.toString()+"','"+price.toString()+"') ");
           out.println(insert);
           session.setAttribute("price",price);
           resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Inserted');");
        out.println("location='product_details.jsp';");
        out.println("</script>");
       }
       
       if(btn.equals("Update"))
       {
           String update=db.Update("update product_details set category_name='"+category.toString()+"',sub_category_name='"+sub_category.toString()+"',product_image='images/"+img.toString()+"',product_name='"+Product_name.toString()+"',discription='"+discription.toString()+"',price='"+price.toString()+"' where product_id='"+product_id.toString()+"'");
           out.println(update);
           
           resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Updated');");
        out.println("location='product_details.jsp';");
        out.println("</script>");
           
       }
       
       if(btn.equals("Delete"))
         {
          String delete=db.Delete("delete from product_details where product_id='"+product_id.toString()+"'");
          out.println(delete);
          
          resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Records Deleted');");
        out.println("location='product_details.jsp';");
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
        String sql="select * from product_details where product_id='"+product_id.toString()+"'";
        
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
        req.setAttribute("product_id", rs.getString("product_id"));
        req.setAttribute("category_name", rs.getString("category_name"));
        req.setAttribute("sub_category_name", rs.getString("sub_category_name"));
        req.setAttribute("product_image", rs.getString("product_image"));
        req.setAttribute("product_name", rs.getString("product_name"));
        req.setAttribute("discription", rs.getString("discription"));
        req.setAttribute("price", rs.getString("price"));
        
        req.getRequestDispatcher("product_details.jsp").forward(req, resp);
        }
        }
        catch(Exception ex)
        {
            out.println(ex.toString());
        }
        }
    }
} 
       
       
    

    
    

