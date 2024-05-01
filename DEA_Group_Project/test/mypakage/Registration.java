package mypakage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "Registration", urlPatterns = {"/Registration"})
public class Registration extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name= request.getParameter("name");
        String email = request.getParameter("email");
        String password= request.getParameter("password");
        String mobile = request.getParameter("mobile");
        
        RequestDispatcher dispatcher = null;
        Connection con = null;
        try{
           Class.forName("com.mysql.cj.jdbc.Driver"); 
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/authendication?useSSL=false","root"," ");
           PreparedStatement pst = con.prepareStatement("insert into user(name,email,password,mobile)values(?,?,?,?)");
           pst.setString(1,name);
           pst.setString(2,email);
           pst.setString(3,password);
           pst.setString(4,mobile);
           
           int rowCount = pst.executeUpdate();
           dispatcher = request.getRequestDispatcher("registration.jsp");
           if (rowCount > 0){
               request.setAttribute("status", "success");
               
           }else{
               request.setAttribute("status", "failed");
           }
           dispatcher.forward(request,response);
        }catch(Exception e){
           e.printStackTrace();
        
        }finally{
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
                
            }
       }   
   
}

        
}



