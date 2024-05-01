package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
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
        String name= request.getParameter("name");
        String email = request.getParameter("email");
        String password= request.getParameter("password");
        String re_pass= request.getParameter("re_pass");
        String mobile = request.getParameter("mobile");
        
        RequestDispatcher dispatcher = null;
        Connection con = null;
        
         if( name==null || name.equals("")){
            request.setAttribute("status","invalidName ");
            dispatcher = request.getRequestDispatcher("registration.jsp");
            dispatcher.forward(request,response);
         }
         if( email==null || email.equals("")){
            request.setAttribute("status","invalidEmail ");
            dispatcher = request.getRequestDispatcher("registration.jsp");
            dispatcher.forward(request,response);
         }
          if( password==null || password.equals("")){
            request.setAttribute("status","invalidpassword ");
            dispatcher = request.getRequestDispatcher("registration.jsp");
            dispatcher.forward(request,response);
         }else if(!password.equals(re_pass)){
            request.setAttribute("status","invalidConfirmpassword ");
            dispatcher = request.getRequestDispatcher("registration.jsp");
            dispatcher.forward(request,response);
         }
          
          if( mobile==null || mobile.equals("")){
            request.setAttribute("status","invalidMobile ");
            dispatcher = request.getRequestDispatcher("registration.jsp");
            dispatcher.forward(request,response);
         
          }else if(mobile.length()>10){
            request.setAttribute("status","invalidMobileLength ");
            dispatcher = request.getRequestDispatcher("registration.jsp");
            dispatcher.forward(request,response);
         }
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
