import java.io.IOException;
import java.io.PrintWriter;
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
import javax.servlet.http.HttpSession;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // JDBC URL, username, and password of MySQL server
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/your_database_name";
    private static final String JDBC_USER = "your_username";
    private static final String JDBC_PASSWORD = "your_password";

    // SQL query to retrieve cart items from the database
    private static final String SELECT_CART_ITEMS_QUERY = "SELECT * FROM cart_items";

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.println("This is the CartServlet. Use doPost method to handle cart actions.");
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
    
    if (action != null && !action.isEmpty()) {
        if (action.equals("remove")) {
            // Handle item removal from cart
            String itemId = request.getParameter("itemId");
            // Your code to remove item with itemId from the database
        } else if (action.equals("buy")) {
            // Handle buy action (checkout)
            // Your code to proceed with the checkout
        }
    }
        // Your code to handle cart actions (add/remove items) goes here
        
        if (action != null && action.equals("add")) {
            String itemId = request.getParameter("itemId");
            
            // Get the session and the cart from the session
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            
            // If the cart doesn't exist yet, create a new one
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            
            // Add the item to the cart (you would implement this method in your Cart class)
            cart.addItem(itemId);
        }
        
    }

    // Method to establish a connection to the MySQL database
    private Connection getConnection() throws SQLException {
        Connection connection = null;
        try {
            // Register the JDBC driver (optional for newer JDBC drivers)
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish the connection
            connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
        }
        return connection;

      //  return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
    }

    // Method to retrieve cart items from the database
    private ResultSet getCartItems() throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(SELECT_CART_ITEMS_QUERY)) {
            return statement.executeQuery();
        }
    }

    private static class Cart {

        public Cart() {
        }

        private void addItem(String itemId) {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }
    }
}

