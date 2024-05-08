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

@WebServlet("/EditreturnU")
public class EditreturnU extends HttpServlet {

    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    int row;

    public void doGet(HttpServletRequest req, HttpServletResponse rsp) throws IOException, ServletException {

        rsp.setContentType("text/html");
        PrintWriter out = rsp.getWriter();

        String username = req.getParameter("username");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/pdb", "root", "");

            pst = con.prepareStatement("select * from users where username = ?");
            pst.setString(1, username);
            rs = pst.executeQuery();

            while (rs.next()) {
                out.print("<form action='EditServletU' method='POST' style='margin: auto; width: 50%; border: 2px solid #333; padding: 20px; border-radius: 10px;'> ");
                out.print("<table>");
               
                out.print("<tr> <td>Username</td>    <td> <input type='text' name ='username' id='username' value= '" + rs.getString("username") + "'/> </td> </tr>");
                out.print("<tr> <td>Password</td>    <td> <input type='text' name ='password' id='password' value= '" + rs.getString("password") + "'/> </td> </tr>");
                out.print("<tr> <td>Email</td>    <td> <input type='text' name ='email' id='email' value= '" + rs.getString("email") + "'/> </td> </tr>");
                out.print("<tr> <td>Phone NO</td>    <td> <input type='text' name ='no' id='no' value= '" + rs.getString("no") + "'/> </td> </tr>");
                out.print("<tr>  <td colspan ='2'> <input type='submit'  value= 'Edit'/> </td> </tr>");
                out.println("<tr>  <td colspan='2' ><a href='ViewUsers'> Back </a></td> </tr>");
                out.print("</table>");
                out.print("</form>");

            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterM.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {

            out.println("<font color='red'>  Record Failed   </font>");

        }
    }

}
