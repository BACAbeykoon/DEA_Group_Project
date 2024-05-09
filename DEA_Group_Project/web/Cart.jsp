<%-- 
    Document   : Cart
Created on : Apr 25, 2024, 1:27:22 PM
    Author     : Ishara Muthumini
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="cart.css">
    <script src="script.js" defer></script>
</head>
<body>
    <header>
        <div class="container">
            <div class="logo">
                <img src="logo.png" alt="Your Logo">
            </div>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="products.jsp">Products</a></li>
                    <li class="active"><a href="cart.jsp">Cart</a></li>
                    <!-- Add more navigation links as needed -->
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <section class="cart-items">
            <div class="container">
                <h2>Shopping Cart</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Item</th>
                            <th>Quantity</th>
                            <th>Price</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Populate with cart items dynamically -->
                        <tr>
                            <td>Product Name</td>
                            <td><input type="number" value="2"></td>
                            <td>$20.00</td>
                            <td>
                                <button class="update">Update</button>
                                <button class="remove">Remove</button>
                            </td>
                        </tr>
                        <!-- Repeat for each item in the cart -->
                    </tbody>
                </table>
                <div class="total">
                    <p>Total: $40.00</p>
                </div>
                <button class="proceed-to-checkout">Proceed to Checkout</button>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <p>&copy; 2024 Your Company. All rights reserved.</p>
        </div>
    </footer>

    <script src="script.js"></script>
</body>
</html>
