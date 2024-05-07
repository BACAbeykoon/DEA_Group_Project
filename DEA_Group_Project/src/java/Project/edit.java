package Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/edit")
public class edit extends HttpServlet {
    
    
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    int row;

    public void doGet(HttpServletRequest req,HttpServletResponse rsp ) throws IOException,ServletException
    {
        
        rsp.setContentType("text/html");
        PrintWriter out = rsp.getWriter();
        
        String Pid = req.getParameter("id");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/pdb","root","");
           
           pst = con.prepareStatement("select * from product where id = ?");
           pst.setString(1,Pid);
           rs = pst.executeQuery();
           
           while(rs.next())
           {
               out.print("<form action='EditServlet' method='POST'");
                out.print("<table");
               
                out.print("<tr> <td>Product ID</td>    <td> <input type='text' name ='P_id' id='P_id' value= '" + rs.getString("id") + "'/> </td> </tr><br><br>");
                out.print("<tr> <td>Categary</td>    <td> <select  name ='categary' id='categary'> <option>Main Dish</option><option>Short Eats</option><option>Drinks</option><option>Desserts</option></select> </td> </tr><br><br>");
                out.print("<tr> <td>Discription</td>    <td> <input type='text' name ='discription' id='discription' value= '" + rs.getString("discription") + "'/> </td> </tr><br><br>");
                out.print("<tr> <td>Price</td>    <td> <input type='text' name ='price' id='price' value= '" + rs.getString("price") + "'/> </td> </tr><br><br>");
                out.print("<tr>  <td colspan ='2'> <input type='submit'  value= 'Edit'/> </td> </tr>");
                out.print("</table");
                out.print("</form");
               
           }
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Manage.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");
 
        }
    }

}
