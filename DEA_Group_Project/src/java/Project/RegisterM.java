package Project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegisterM")

public class RegisterM extends HttpServlet {
    
    Connection con;
    PreparedStatement pst;
    int row;
    
    public void doPost(HttpServletRequest req,HttpServletResponse rsp ) throws IOException,ServletException
    {
        
        rsp.setContentType("text/html");
        PrintWriter out = rsp.getWriter();
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/pdb","root","");
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            String email = req.getParameter("email");
            String no = req.getParameter("no");
            
            pst = con.prepareStatement("insert into users(username,password,email,no)values(?,?,?,?) ");
            pst.setString(1, username);
            pst.setString(2, password);
            pst.setString(3, email);
            pst.setString(4, no);
            row = pst.executeUpdate();
            
            out.println("<font color='green'> Succsefully Added   </font>");
 
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterM.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");
        } 
    }
  
}