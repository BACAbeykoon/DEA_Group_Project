package Project;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        // Check if username and password are correct
        if (username.equals("Admin") && password.equals("DEA2024")) {
            // Redirect to the Interface.jsp page
            response.sendRedirect("Interface.jsp");
        } else {
            // Display an error message
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Invalid username or password');");
            out.println("window.location.href = 'Login.jsp';");
            out.println("</script>");
        }
    }
}
