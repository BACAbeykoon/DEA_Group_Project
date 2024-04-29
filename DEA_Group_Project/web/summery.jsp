<%-- 
    Document   : summery
    Created on : Apr 29, 2024, 12:36:02 PM
    Author     : Nipu
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Checkout</title>
    <link rel ="stylesheet" href ="summery.css">
</head>
<body>
    <h1>Checkout</h1>
    
    <h2>Order Summary</h2>
    <div class="card">
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
        </tr>
        <c:forEach var="product" items="${selectedProducts}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.description}</td>
                <td>${product.price}</td>
            </tr>
        </c:forEach>
    </table>
    
    <h2>Order Total</h2>
    <p>Subtotal: $<%= request.getAttribute("subtotal") %></p>
    <p>Tax: $<%= request.getAttribute("tax") %></p>
    <p>Shipping Cost: $<%= request.getAttribute("shippingCost") %></p>
    <p>Total: $<%= request.getAttribute("totalAmount") %></p>
    
   
        <button type="submit">Place Order</button>
    </div>
   
</body>
</html>
