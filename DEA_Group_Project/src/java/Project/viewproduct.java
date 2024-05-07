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


@WebServlet("/viewproduct")

public class  viewproduct extends HttpServlet {
    
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
            
            sql = "select * from product";
            Statement stmt = con.createStatement();
            rs = stmt.executeQuery(sql);
            
            out.println("<table cellspacing='0' width='350px' border='1'>");
            out.println("<tr>");
            out.println("<td> Product Id </td>");
            out.println("<td> Product Categary  </td>");
            out.println("<td> Product Description </td>");
            out.println("<td> Product Price </td>");
             out.println("<td> Product Image </td>");
            out.println("<td> Edit </td>");
            out.println("<td> Delete </td>");
            
            out.println("</tr>");
            
            while(rs.next())
            {
             out.println("<tr>");
             out.println("<td>"  + rs.getString("id")   +  "</td>");
             out.println("<td>"  + rs.getString("categary")   +  "</td>");  
             out.println("<td>"  + rs.getString("discription")   +  "</td>");  
             out.println("<td>"  + rs.getString("price")   +  "</td>");
             out.println("<td>"  + rs.getBlob("image")   +  "</td>");
             
             out.println("<td>"  + "<a href='edit?id=" +  rs.getString("id")  + "'> Edit </a>" + "</td>");
             out.println("<td>"  + "<a href='delete?id=" +  rs.getString("id")  + "'> Delete </a>" + "</td>");
             out.println("</tr>");

            }
            
            out.println("</table>");
 
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Manage.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");  
        }
    }  
}