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
<link rel="stylesheet" href="summery.css">
</head>
<body>
  <div class="card">
      <div>
          
          <div>
      <div class="card-body">
         <h2 style="color:red;">Order Summary</h2>
         <div class="image">
             <img scr="https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vectorstock.com%2Froyalty-free-vector%2Ffood-delivery-vector-4904365&psig=AOvVaw2PZ-TSgGae-ZZ4MwteVGJx&ust=1714542617437000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCOC0qpOf6YUDFQAAAAAdAAAAABAE" alt="Foods Delivery" class="img">
             
         </div>
    <table border="0">
        <div class="summer"><tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
        </tr>
        </div>
        <c:forEach var="product" items="${selectedProducts}">
            <div class="food"><tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.price}</td>
            </tr></div>
        </c:forEach>
    </table>
    
            <div class="order"> 
    <p>Subtotal: $<%= request.getAttribute("subtotal") %></p>
    <p>Tax: $<%= request.getAttribute("tax") %></p>
    <p>Shipping Cost: $<%= request.getAttribute("shippingCost") %></p>
    <hr>
    <p style="font-size:25px">Total: $<%= request.getAttribute("totalAmount") %></p>
            </div>
    
        <div class="card button">
            <form action="placeOrderServlet" method="post">
                <button type="submit">Place Order</button>
            </form>
            </div>
      </div>
          </div>
            </div>
    </div>
   
</body>
</html>
