package Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ViewUsers")
public class ViewUsers extends HttpServlet {
    
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    int row;

    public void doGet(HttpServletRequest req,HttpServletResponse rsp ) throws IOException,ServletException
    {
        
        rsp.setContentType("text/html");
        PrintWriter out = rsp.getWriter();
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/pdb","root","");
           
            String sql;
            
            sql = "select * from users";
            Statement stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
            
            out.println("<table cellspacing='0' width='350px' border='1' style='margin: auto; width: 75%; border: 2px solid #333; padding: 20px; border-radius: 10px;'>");
            out.println("<tr>");
            out.println("<td>Username</td>");
            out.println("<td>Password</td>");
            out.println("<td>Email</td>");
            out.println("<td>Phone No</td>");
            out.println("<td> Edit </td>");
            out.println("<td> Delete </td>");
            
            out.println("</tr>");
            
            while(rs.next())
            {
             out.println("<tr>");
             out.println("<td>"  + rs.getString("username")   +  "</td>");
             out.println("<td>"  + rs.getString("password")   +  "</td>");  
             out.println("<td>"  + rs.getString("email")   +  "</td>"); 
             out.println("<td>"  + rs.getString("no")   +  "</td>");
             
             out.println("<td>"  + "<a href='EditreturnU?username=" +  rs.getString("username")  + "'> Edit </a>" + "</td>");
             out.println("<td>"  + "<a href='DeleteU?username=" +  rs.getString("username")  + "'> Delete </a>" + "</td>");
             out.println("</tr>");

            }
             out.println("<tr style='text-align: center;>  <td colspan='7' ><a href='Interface.jsp'> Back </a></td> </tr>");
            out.println("</table>");
 
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterM.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");  
        }
    }  
}