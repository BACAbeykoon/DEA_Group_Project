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

@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet  {
    
    
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    int row;

    public void doPost(HttpServletRequest req,HttpServletResponse rsp ) throws IOException,ServletException
    {
        
        rsp.setContentType("text/html");
        PrintWriter out = rsp.getWriter();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/pdb","root","");
           
             String P_id = req.getParameter("P_id");
             String categary = req.getParameter("categary");
             String discription = req.getParameter("discription");
             String price = req.getParameter("price");
             
             pst = con.prepareStatement("update product set categary = ?, discription = ?, price = ? where id = ?");
             pst.setString(1, categary);
             pst.setString(2, discription );
             pst.setString(3, price);
             pst.setString(4, P_id);
             row = pst.executeUpdate();
             
              out.println("<font color='green'>Sucsessfully Updated</font>");
   
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Manage.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");
 
        }

    }
  
}