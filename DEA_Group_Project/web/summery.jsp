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
    <div class="card-body">
    <form style="text-align: center" action="placeOrderServlet" method="get">
        <div class="card">
      
          
          <div>
      <h2 style="color:red;">Order Summary</h2>
         <div class="image">
             <img scr="https://www.google.com/imgres?q=food%20delivery%20colombo&imgurl=https%3A%2F%2Fwc-flavours-cinnamonhotels.s3.ap-southeast-1.amazonaws.com%2F2021%2F04%2Fcinnamon_banner_5-2.jpg&imgrefurl=https%3A%2F%2Fflavours.cinnamonhotels.com%2F&docid=tSUoHWhqKe7dvM&tbnid=2yr1ejAjndmCqM&vet=12ahUKEwi9roLujf6FAxV01zgGHfDfAcQQM3oECBwQAA..i&w=1024&h=680&hcb=2&ved=2ahUKEwi9roLujf6FAxV01zgGHfDfAcQQM3oECBwQAA " alt="Foods Delivery" class="img">
             
         </div>
    <table border="0">
        <div class="summer"><tr>
             <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Subtotal</th>
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
    <p>Subtotal: $<%= request.getAttribute("Subtotal") %></p>
    <p>Tax: $<%= request.getAttribute("Tax") %></p>
    <p>Shipping Cost: $<%= request.getAttribute("ShippingCost") %></p>
    <hr>
    <p style="font-size:25px">Total Amount: $<%= request.getAttribute("TotalAmount") %></p>
            </div>
    </form>
        <div class="card button">
            <form action="placeOrderServlet" method="post">
                <button type="submit">Place Order</button>
            </form>
            </div>
      </div>
          </div>
            </div>
   
</body>
</html>
