import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author iresh
 */

public class checkoutServlet extends HttpServlet {
    
    public class CheckoutServlet extends HttpServlet {
    // JDBC URL, username, and password
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/your_database_name";
    private static final String JDBC_USER = "your_username";
    private static final String JDBC_PASSWORD = "your_password";

    @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            
        // Retrieve form data    
        String fullName = request.getParameter("fullname");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zipCode = request.getParameter("zipcode");
        String cardName = request.getParameter("cardname");
        String cardNumber = request.getParameter("cardnumber");
        String expMonth = request.getParameter("expmonth");
        int expYear = Integer.parseInt(request.getParameter("expyear"));
        String cvv = request.getParameter("cvv");
        
        
        // JDBC variables
        Connection conn = null;
        PreparedStatement pstmt = null;
   
            
          try {
            // Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Open a connection
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
   
    
       // SQL query to insert data into the database
            String sql = "INSERT INTO checkout_details (full_name, email, address, city, state, zip_code, card_name, card_number, exp_month, exp_year, cvv) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, fullName);
            pstmt.setString(2, email);
            pstmt.setString(3, address);
            pstmt.setString(4, city);
            pstmt.setString(5, state);
            pstmt.setString(6, zipCode);
            pstmt.setString(7, cardName);
            pstmt.setString(8, cardNumber);
            pstmt.setString(9, expMonth);
            pstmt.setInt(10, expYear);
            pstmt.setString(11, cvv);
   
     // Execute the query
            pstmt.executeUpdate();

            // Redirect to a thank you page or any other page

            response.sendRedirect("checkout.jsp");
        } catch (SQLException | ClassNotFoundException ex) {
        } finally {
            // Close JDBC objects
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
            } finally {
            // Close JDBC objects
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
            }
        }
    }
        
        }
    }
}

        
    

    
          
 
  
    
