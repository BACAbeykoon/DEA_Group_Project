import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/PlaceOrderServlet")
public class PlaceOrderServlet extends HttpServlet {

    /**
     * Handles POST requests for placing orders.
     * @param request
     * @param response
     * @throws java.io.IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Retrieve order details from request parameters
        String productId = request.getParameter("productId");
        String quantity = request.getParameter("quantity");
        // Add more parameters as needed

        // Establish database connection
        try (Connection conn = getConnection()) {
            // Insert order details into the database
            String sql = "INSERT INTO orders (product_id, quantity) VALUES (?, ?)";
            try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                pstmt.setString(1, productId);
                pstmt.setString(2, quantity);
                // Set more parameters if needed
                pstmt.executeUpdate();
            }

            // Redirect to a confirmation page
            response.sendRedirect("confirmation.jsp");
        } catch (SQLException e) { // Handle database connection or SQL errors
            // For debugging purposes, you might want to log the error
            // For debugging purposes, you might want to log the error
            response.sendRedirect("error.jsp"); // Redirect to an error page
        }
    }

    /**
     * Establishes a JDBC connection to the database.
     */
    private Connection getConnection() throws SQLException {
        String jdbcUrl = "jdbc:mysql://localhost:3306/ecommerce";
        String username = "root";
        String password = " ";
        return DriverManager.getConnection(jdbcUrl, username, password);
    }
}
