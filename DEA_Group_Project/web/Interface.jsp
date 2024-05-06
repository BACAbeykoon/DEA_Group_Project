<%-- 
    Document   : Interface
    Created on : May 5, 2024, 9:31:41 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INTERFACE</title>
            <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }

        .card {
            flex: 0 0 calc(20% - 40px);
            margin: 30px; 
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            transition: transform 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .card-body {
            padding: 20px;
        }

        .card-body i {
            font-size: 3rem;
            margin-bottom: 10px;
        }

        .card-body h4 {
            margin: 0;
            font-size: 1.2rem;
            color: #333;
        }

        a {
            text-decoration: none;
            color: #333;
        }

        a:hover {
            text-decoration: none;
            color: #555;
        }

        @media screen and (max-width: 768px) {
            .card {
                flex-basis: calc(100% - 40px);
            }
        }
    </style>
    </head>
    <body>
   <%@include file="header.jsp"%>
    <div class="container">
        <div class="card">
            <a href="Add_Items.jsp">
                <div class="card-body text-center">
                    <i class="fas fa-plus-square"></i>
                    <h4>MANAGE FOODS</h4>
                </div>
            </a>
        </div>

        <div class="card">
            <a href="ManageOrders.jsp">
                <div class="card-body text-center">
                    <i class="fas fa-layer-group"></i>
                    <h4>MANAGE ORDER</h4>
                </div>
            </a>
        </div>

        <div class="card">
            <a href="ManageUsers.jsp">
                <div class="card-body text-center">
                    <i class="fas fa-shopping-cart"></i>
                    <h4>MANAGE USER</h4>
                </div>
            </a>
        </div>

        
    </div>
    <br>

</body>
</html>
