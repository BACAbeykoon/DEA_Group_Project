<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.List" %>
<%@page import="pd_packge.Product" %>
<%@page import="pd_packge.ProductDAO" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Catalog</title>
    <style>
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 300px;
            margin: auto;
            text-align: center;
            font-family: Arial, sans-serif;
        }

        .price {
            color: grey;
            font-size: 22px;
        }

        .card button {
            border: none;
            outline: 0;
            padding: 12px;
            color: white;
            background-color: #000;
            text-align: center;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
        }

        .card button:hover {
            opacity: 0.7;
        }
    </style>
</head>
<body>
    <div class="container">
        <% ProductDAO productDAO = new ProductDAO();
           List<Product> products = productDAO.getAllProducts();
           for (Product product : products) { %>
            <div class="card">
                <h1><%= product.getId() %></h1>
                <h1><%= product.getName() %></h1>
                <p class="price">$<%= product.getPrice() %></p>
                <p><%= product.getDescription() %></p>
                <p><button>Add to Cart</button></p>
            </div>
        <% } %>
</body>
</html>
