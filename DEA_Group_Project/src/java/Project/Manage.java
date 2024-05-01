package Project;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/Manage")

public class Manage extends HttpServlet {
    
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
            String P_id = req.getParameter("P_id");
            String categary = req.getParameter("categary");
            String dis= req.getParameter("dis");
            String price= req.getParameter("price");
            Part ImagePart = req.getPart("image");
            InputStream image= null;
            
            if (ImagePart != null) {
            image = ImagePart.getInputStream();
        }

            
            
            
            pst = con.prepareStatement("insert into product(id,categary,discription,price,image)values(?,?,?,?,?) ");
            pst.setString(1, P_id);
            pst.setString(2, categary);
            pst.setString(3, dis);
            pst.setString(4, price);
            pst.setBlob(5,image);
            row = pst.executeUpdate();
            
            out.println("<font color='green'>  Record Added   </font>");
 
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Manage.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
           
             out.println("<font color='red'>  Record Failed   </font>");
        } 
    }
  
}