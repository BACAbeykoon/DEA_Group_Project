package newpackage;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "registration", urlPatterns = {"/registration"})
public class registration extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String no = request.getParameter("no");
        
        
        String URL = "jdbc:mysql://localhost:3306/pdb";
        String Username = "root";
        String Password = "";
        
        
        Connection connection = null;
        PreparedStatement checkStatement = null;
        PreparedStatement insertStatement = null;

    

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(URL, Username, Password);

        // Check if the username already exists
        String checkSql = "SELECT * FROM users WHERE username = ?";
        checkStatement = connection.prepareStatement(checkSql);
        checkStatement.setString(1, username);
        ResultSet resultSet = checkStatement.executeQuery();

        if (resultSet.next()) {
            // Username already exists, redirect to registration error page
            response.sendRedirect("registrationError.jsp");
        } else {
            // Username does not exist, proceed with registration
            String query = "INSERT INTO users (username, password, email,no) VALUES (?, ?, ?,?)";
            insertStatement = connection.prepareStatement(query);
            insertStatement.setString(1, username);
            insertStatement.setString(2, password);
            insertStatement.setString(3, email);
            insertStatement.setString(4, no);
            int rowsInserted = insertStatement.executeUpdate();
            if (rowsInserted > 0) {
                response.sendRedirect("registrationSuccess.jsp");
            } else {
                response.sendRedirect("registrationError.jsp");
            }
        }
    } catch (ClassNotFoundException | SQLException ex) {
        ex.printStackTrace();
        response.sendRedirect("registrationError.jsp");
    } finally {
        // Close resources
        try {
            if (checkStatement != null) {
                checkStatement.close();
            }
            if (insertStatement != null) {
                insertStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
}

