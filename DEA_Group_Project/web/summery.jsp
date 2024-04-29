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
    <link rel ="stylesheet" href ="summery.css">
</head>
<body>
  <div class="card">
         <h2 style="color:red;">Order Summary</h2>
    <table border="0">
        <div class="summer"><tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
        </tr>
        </div>
        <c:forEach var="product" items="${selectedProducts}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.description}</td>
                <td>${product.price}</td>
            </tr>
        </c:forEach>
    </table>
    
            <div class="order"> 
    <p>Subtotal: $<%= request.getAttribute("subtotal") %></p>
    <p>Tax: $<%= request.getAttribute("tax") %></p>
    <p>Shipping Cost: $<%= request.getAttribute("shippingCost") %></p>
    <p style="font-size: 17px;ss">Total: $<%= request.getAttribute("totalAmount") %></p>
            </div>
    
   
        <button type="submit">Place Order</button>
    </div>
   
</body>
</html>
