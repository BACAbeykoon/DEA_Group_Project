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

@WebServlet("/EditServletU")
public class EditServletU extends HttpServlet {

    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    int row;

    public void doPost(HttpServletRequest req, HttpServletResponse rsp) throws IOException, ServletException {

        rsp.setContentType("text/html");
        PrintWriter out = rsp.getWriter();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/pdb", "root", "");

            String username = req.getParameter("username");
            String no = req.getParameter("no");
            String email = req.getParameter("email");
            String password = req.getParameter("password");

            pst = con.prepareStatement("update users set password = ?, email = ?, no = ? where username = ?");
            pst.setString(1, password);
            pst.setString(2, email);
            pst.setString(3, no);
            pst.setString(4, username);

            row = pst.executeUpdate();

            out.println("<font color='green'>  Record Updated   </font>");

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterM.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {

            out.println("<font color='red'>  Record Failed   </font>");

        }

    }

}
