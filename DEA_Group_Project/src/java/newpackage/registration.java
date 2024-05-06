package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "registration", urlPatterns = {"/registration"})
public class registration extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String name= request.getParameter("name");
            String email = request.getParameter("email");
            String password= request.getParameter("password");
            String re_pass= request.getParameter("re_pass");
            String mobile = request.getParameter("mobile");
            
            
            
           
         Register r = new Register();
            r.insertRegister(name,email,password,mobile);
        } catch (SQLException ex) {
            Logger.getLogger(registration.class.getName()).log(Level.SEVERE, null, ex);
        }
        
         
        
    }


}
