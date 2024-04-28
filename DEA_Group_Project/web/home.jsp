<%-- 
    Document   : home
    Created on : 25-Apr-2024, 00:07:38
    Author     : yasar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Website</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

    <section id="Home">
        <nav>
            <div class="logo">
                <img src="image/logo.png">
            </div>

            <ul>
                <li><a href="#Home">Home</a></li>
                <li><a href="#About">About</a></li>
                <li><a href="#Menu">Menu</a></li>
                <li><a href="#Gallary">Gallery</a></li>
                <li><a href="#Review">Review</a></li>
                <li><a href="#Order">Order</a></li>
            </ul>

            <div class="icon">
                <i class="fa-solid fa-magnifying-glass"></i>
                <i class="fa-solid fa-heart"></i>
                <i class="fa-solid fa-cart-shopping"></i>
            </div>
        </nav>
        
        <div class="main">

            <div class="men_text">
                <h1><span>Savor </span><br>Every Moment,<br>Delivered to <br><span1>Your Doorstep</span1></h1>
            </div>
            
            <div class="main_image">
                <img src="image/main_img.avif">
            </div>
        </div>

        <p>
            <br><br>
            <b>FlavorDash</b> is like having a virtual marketplace for food on your phone. 
            You can use it to look through different restaurants or stores, pick what you want to eat, and then order it for delivery or to pick up yourself. 
            You can place your order, keep track of when it will arrive, and pay for it all through the app.
        </p>

        <div class="main_btn">
            <a href="#">Order Now</a>
            <i class="fa-solid fa-angle-right"></i>
        </div>
    </section>
</body>
</html>
