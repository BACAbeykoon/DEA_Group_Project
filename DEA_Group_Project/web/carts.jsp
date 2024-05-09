<%-- 
    Document   : carts
    Created on : May 9, 2024, 6:55:56 PM
    Author     : Ishara Muthumini
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <style> body{
	background: #ddb5b5;
}
.cart{
	margin: 20px 0;
	background-color: #F6F5FA;;
	padding: 60px 0;
}
.total-price{
	padding-bottom: 15px;
}
.cart-item{
	background-color: #fff;
	border-radius: 10px;
	padding: 15px 20px;
	margin-bottom: 20px;
}
.center-item{
    display: flex;
    align-items: center;
    justify-content: flex-start;
}
.cart-item img{
	width: 115px;
}
.cart-item h5{
    padding: 0 45px;
}
.cart-item .remove-item{
	width: 25px!important;
}
.btn-default{
	background-color: #fff;
}
.cart-item .form-control{
	background-color: #F6F5FA;
	border: none;
    width: 65px;
    border-radius: 10px!important;
    font-weight: 700;
    font-size: 20px;
}
.input-group{
	width: unset;
	flex-wrap: nowrap;
}
.status{
	text-align: right;
}
.check-out{
    float: right;
    padding: 10px 30px;
	font-size: 19px;
	background-color: #2FBE70;
	border: none;
}

.remove-item {
    background-color: #dc3545;
    color: #fff;
    border: none;
    padding: 8px 16px;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.remove-item:hover {
    background-color: #c82333;
}
.food {
    color: red;
    border: none;
    width:100%;
    font-size: 18px;
    padding: 8px 16px;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color0.3s ease;
    
}
.none{
    color: blue;
	
        
}

.check-out{
    float: right;
   
 padding: 10px 30px;
	font-size: 19px;
	background-color: #2FBE70;
	border: none;
}    </style>
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