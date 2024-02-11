
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author vaibh
 */
public class database {
    
    Connection cn=null;
    Statement st=null;
    
    String connectdb()
    {
    
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
     cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Estore","root","root");
     return("database connected");
        }
    catch(Exception ex)
    {
    return(ex.toString());
    }
  
    }
    

    String Insert(String sql)
    {
     try
     {
         st=cn.createStatement();
         st.executeUpdate(sql);
         return("Record Inserted");
     }
    catch(Exception ex)
    {
        return(ex.toString());
    }
    }
    
    String Update(String sql)
    {
    try
    {
    st=cn.createStatement();
    st.executeUpdate(sql);
    return("Record Updated");
    }
    catch(Exception ex)
    {
    return(ex.toString());
    }
    }
    
    String Delete(String sql)
    {
      try
      {
         st=cn.createStatement();
         st.executeUpdate(sql);
         return ("record deleted");
      }
      catch(Exception ex)
      {
        return (ex.toString());
      }
      
    
    }
    
    
}  


