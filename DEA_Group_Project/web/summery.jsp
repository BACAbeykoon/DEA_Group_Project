<%-- 
    Document   : summery
    Created on : Apr 29, 2024, 12:36:02 PM
    Author     : Nipu
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Summary</title>
    <link rel="stylesheet" type="text/css" href="summery.css">
</head>
<body>
    <div class="card-body">
        <div class="card">
            <h2>Order Summary</h2>
            <div class="image">
                <img src="https://via.placeholder.com/150" alt="Product Image">
            </div>
            <table>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <!-- Add more table headers if needed -->
                </tr>
                <!-- Loop through order items -->
                <c:forEach var="item" items="${orderItems}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.name}</td>
                        <td>${item.price}</td>
                        <!-- Add more table cells if needed -->
                    </tr>
                </c:forEach>
            </table>
            <div class="order">
                <p>Subtotal: ${subtotal}</p>
                <p>Tax: ${tax}</p>
                <p>Shipping Cost: ${shippingCost}</p>
                <hr>
                <p>Total Amount: ${totalAmount}</p>
            </div>
            <form action="PlaceOrderServlet" method="post">
    <input type="hidden" name="productId" value="1"> <!-- Example product ID -->
    <input type="text" name="quantity">
    <!-- Add more input fields as needed -->
    <button type="submit">Place Order</button>
</form>
            <div>
        </div>
    </div>
</body>
</html>
