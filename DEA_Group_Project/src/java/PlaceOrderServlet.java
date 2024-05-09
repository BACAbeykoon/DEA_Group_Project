import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PlaceOrderServlet")
public class PlaceOrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve cart items from session
        List<Product> selectedProducts = (List<Product>) request.getSession().getAttribute("cart");
        
        // Calculate subtotal, tax, shipping cost, and total amount
        double subtotal = calculateSubtotal(selectedProducts);
        double tax = calculateTax(subtotal);
        double shippingCost = calculateShippingCost();
        double totalAmount = subtotal + tax + shippingCost;
        
        // Save order details to database
        saveOrderToDatabase(selectedProducts, subtotal, tax, shippingCost, totalAmount);
        
        // Redirect to thank you page or order confirmation page
        response.sendRedirect("summery.jsp");
    }

    private double calculateSubtotal(List<Product> selectedProducts) {
        // Check if selectedProducts is null
        if (selectedProducts == null) {
            return 0.0; // or handle it according to your application's logic
        }
        
        // Calculate subtotal based on selected products
        double subtotal = 0.0;
        for (Product product : selectedProducts) {
            subtotal += product.getPrice() * product.getQuantity();
        }
        return subtotal;
    }

    private double calculateTax(double subtotal) {
        // Calculate tax based on subtotal (e.g., 10% tax)
        return subtotal * 0.1; // Assuming 10% tax
    }

    private double calculateShippingCost() {
        // Calculate shipping cost based on shipping method, location, etc.
        return 5.0; // Example shipping cost
    }

    private void saveOrderToDatabase(List<Product> selectedProducts, double subtotal, double tax, double shippingCost, double totalAmount) {
        // JDBC variables
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Open a connection
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/checkout page?zeroDateTimeBehavior=CONVERT_TO_NULL", "root", "null");

            // Insert order details into the database
            String sql = "INSERT INTO order_details (product_id, product_name, quantity, price, subtotal, tax, shipping_cost, total_amount) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            for (Product product : selectedProducts) {
                pstmt.setInt(1, product.getId());
                pstmt.setString(2, product.getName());
                pstmt.setInt(3, product.getQuantity());
                pstmt.setDouble(4, product.getPrice());
            }
            pstmt.setDouble(5, subtotal);
            pstmt.setDouble(6, tax);
            pstmt.setDouble(7, shippingCost);
            pstmt.setDouble(8, totalAmount);
            pstmt.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            // Log or handle exceptions
            
        } finally {
            // Close JDBC objects
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                // Log or handle exceptions
                
            }
        }
    }
}
