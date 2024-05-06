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
    <title>FlavorDash Food Delivery Service</title>
    <link rel="stylesheet" href="style1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

    <section id="Home">
        <nav>
            <div class="logo">
                <img src="image/logo1.jpg">
            </div>

            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="#About">About</a></li>
                <li><a href="#Menu">Menu</a></li>
                <li><a href="#Gallary">Gallery</a></li>
                <li><a href="login.jsp">Users</a></li>
            </ul>

            <div class="icon">
                <i class="fa-solid fa-magnifying-glass"></i>
                <i><a href="Admin.jsp" class="fas fa-user"></a></i>
                <i class="fa-solid fa-cart-shopping"></i>
            </div>
        </nav>
        
        <div class="main">

            <div class="men_text">
                <h1><span><br><br>&nbsp;&nbsp;&nbsp;Savor </span><br>&nbsp;Every Moment,<br>&nbsp;&nbsp;&nbsp;Delivered to <br><span>Your Doorstep</span></h1>
            </div>
            
            <div class="main_image">
                <img src="image/food_plate.jpg">
            </div>
        </div>
    </section>
    <p>
    <h3><center><h2 style="color: burlywood">FlavorDash</h2> It is like having a virtual marketplace for food on your phone.<br>
            You can use it to look through different restaurants or stores, pick what you want to eat,and then order it for delivery or to pick up yourself. <br>
        You can place your order,keep track of when it will arrive, and pay for it all through the app.</center></h3>
        </p>

    <!--About-->

    <div class="about" id="About">
        <div class="about_main">

            <div class="image">
                <img src="image/pizza1.jpg">
            </div>

            <div class="about_text">
                <h1><span>&nbsp;About</span>Us</h1>
                <h3>&nbsp;&nbsp;Why Choose us?</h3>
                <p>&nbsp;
                    We are <b>FlavorDash</b>, offers a convenient way for users to browse menus, place orders, &nbsp;and have food delivered to their doorstep. 
                    The service aims to provide a wide range of food &nbsp;options, quick delivery times, and a user-friendly experience. 
                    FlavorDash partners with &nbsp;local restaurants to offer a diverse selection of cuisines, catering to different tastes and &nbsp;preferences. 
                    Overall, we seeks to make the food ordering and delivery process seamless &nbsp;and enjoyable for customers.
                </p>
            </div>
        </div>
    </div>
    
    <!--Menu-->

    <div class="menu" id="Menu">
        <h1>Our<span>Menu</span></h1>

        <div class="menu_box">
            <div class="menu_card">

                <div class="menu_image">
                    <img src="image/short-eat.webp">
                </div>

                <div class="menu_info">
                    <h2>Short Eats</h2>
                    <p>
                        Samosas,Cutlets,Fish Buns,Vegetable Roti,Patties,Masala Vadai,Egg Rolls,Pol Roti,Mutton Rolls,Seeni Sambol Buns<br><br><br>
                    </p>
                    
                    <a href="#" class="menu_btn">Go To Collection</a>
                </div>

            </div> 
            
            <div class="menu_card">

                <div class="menu_image">
                    <img src="image/dish.webp">
                </div>

                <div class="menu_info">
                    <h2>Main Dishes</h2>
                    <p>
                        Rice and Curry,Kottu,Egg Fried Rice,Chicken Fried Rice,Mixed Fried Rice,Pasta,Nasi Goreng,Biriyani<br><br><br>
                    </p>
                    
                    <a href="#" class="menu_btn">Go To Collection</a>
                </div>

            </div> 

            <div class="menu_card">

                <div class="menu_image">
                    <img src="image/dessert1.jpeg">
                </div>

                <div class="menu_info">
                    <h2>Desserts</h2>
                    <p>
                        Ice Cream,Watalappan,Jelly,Pudding,Custard,
                        <br>Trifle,Sorbet,Mousse,Parfait,Blancmange<br><br><br>
                    </p>
                    
                    <a href="#" class="menu_btn">Go To Collection</a>
                </div>

            </div> 

            <div class="menu_card">

                <div class="menu_image">
                    <img src="image/drink.webp">
                </div>

                <div class="menu_info">
                    <h2>Drinks</h2>
                    <p>
                        Tea,Coffee,Juice,Soft drinks,Smoothies,Milkshakes.Alcoholic beverages,Mocktails,Energy drinks<br><br><br>
                    </p>
                    
                    <a href="#" class="menu_btn">Go To Collection</a>
                </div>
            </div>   
        </div>
    </div>
    
    
    
     <!--Gallary-->

    <div class="gallary" id="Gallary">
        <h1>Our<span>Gallery</span></h1>

        <div class="gallary_image_box">
            <div class="gallary_image">
                <img src="image/g1.jpg">

                <h3>Hoppers</h3>
                
                <a href="#" class="gallary_btn">Order Now</a>
            </div>

            <div class="gallary_image">
                <img src="image/g2.jpg">

                <h3>Rice and Curry</h3>
                
                <a href="#" class="gallary_btn">Order Now</a>
            </div>
            
            <div class="gallary_image">
                <img src="image/g3.jpg">

                <h3>Milk Rice</h3>
                
                <a href="#" class="gallary_btn">Order Now</a>
            </div>
            
            <div class="gallary_image">
                <img src="image/g4.jpg">

                <h3>Rotti</h3>
                
                <a href="#" class="gallary_btn">Order Now</a>
            </div>
            
            <div class="gallary_image">
                <img src="image/g5.webp">

                <h3>String Hoppers</h3>
                
                <a href="#" class="gallary_btn">Order Now</a>
            </div>
            
            <div class="gallary_image">
                <img src="image/g6.jpeg">

                <h3>Kottu</h3>
                
                <a href="#" class="gallary_btn">Order Now</a>
            </div>
            
            <div class="gallary_image">
                <img src="image/g11.jpg">

                <h3>Pasta</h3>
                
                <a href="#" class="gallary_btn">Order Now</a>
            </div>
            
            <div class="gallary_image">
                <img src="image/g8.webp">

                <h3>Vegetable Rotti</h3>
                
                <a href="#" class="gallary_btn">Order Now</a>
            </div>
            
            <div class="gallary_image">
                <img src="image/g9.jpg">

                <h3>Pan Cake</h3>
                
                <a href="#" class="gallary_btn">Order Now</a>
            </div>
            
            <div class="gallary_image">
                <img src="image/g7.webp">

                <h3>Wade</h3>
                
                <a href="#" class="gallary_btn">Order Now</a>
            </div>
            
            <div class="gallary_image">
                <img src="image/g10.jpg">

                <h3>Fried Rice</h3>
                
                <a href="#" class="gallary_btn">Order Now</a>
            </div>
            
            <div class="gallary_image">
                <img src="image/g12.jpg">

                <h3>Noodles</h3>
                
                <a href="#" class="gallary_btn">Order Now</a>
            </div>

        </div>

    </div>

     
     
    <!--Team-->

    <div class="team">
        <h1>Our<span>Team</span></h1>

        <div class="team_box">
            <div class="profile">
                <img src="image/peter.jpg">

                <div class="info">
                    <h2 class="name">Chef Peter Kuruvita</h2>
                    <p class="bio">Peter Kuruvita is a celebrated Sri Lankan chef known for his successful restaurants and culinary ventures.</p>

                    <div class="team_icon">
                        <i class="fa-brands fa-facebook-f"></i>
                        <i class="fa-brands fa-twitter"></i>
                        <i class="fa-brands fa-instagram"></i>
                    </div>

                </div>

            </div>

            <div class="profile">
                <img src="image/chathu.avif">

                <div class="info">
                    <h2 class="name">Chef Chathurika</h2>
                    <p class="bio">Chathurika is an award-winning food specialist from Win-Stone School of Culinary Arts, known for her excellence in the culinary world and the Knorr kitchen.</p>

                    <div class="team_icon">
                        <i class="fa-brands fa-facebook-f"></i>
                        <i class="fa-brands fa-twitter"></i>
                        <i class="fa-brands fa-instagram"></i>
                    </div>

                </div>

            </div>

            <div class="profile">
                <img src="image/Chef3.webp">

                <div class="info">
                    <h2 class="name">Chef Ramasamy <br>Selvaraju</h2>
                    <p class="bio">Selvaraju is the Executive Chef at Vivanta by Taj in Bangalore, with over 25 years of culinary experience.</p>

                    <div class="team_icon">
                        <i class="fa-brands fa-facebook-f"></i>
                        <i class="fa-brands fa-twitter"></i>
                        <i class="fa-brands fa-instagram"></i>
                    </div>

                </div>

            </div>

            <div class="profile">
                <img src="image/warm.jpg">

                <div class="info">
                    <h2 class="name">Chef Shashi <br>Hareendra</h2>
                    <p class="bio">Chef Warm, also known as Chef Shashi Hareendra, is a respected Sri Lankan chef who began his career in wedding cake design in 2000.</p>

                    <div class="team_icon">
                        <i class="fa-brands fa-facebook-f"></i>
                        <i class="fa-brands fa-twitter"></i>
                        <i class="fa-brands fa-instagram"></i>
                    </div>

                </div>

            </div>

        </div>

    </div>



    <!--Footer-->

    <footer>
        <div class="footer_main">

            <div class="footer_tag">
                <h2>Location</h2>
                <p>Colombo</p>
                <p>Kandy</p>
                <p>Kegalle</p>
                <p>Galle</p>
                <p>Jaffna</p>
            </div>

            <div class="footer_tag">
                <h2>Quick Link</h2>
                <ul>
                    <a href="#Home">Home</a><br><br>
                    <a href="#About">About</a><br><br>
                    <a href="#Menu">Menu</a><br><br>
                    <a href="#Gallary">Gallery</a><br><br>
                    <a href="#Order">Order</a>
                </ul>
            </div>

            <div class="footer_tag">
                <h2>Contact</h2>
                <p>+94 762 244 668</p>
                <p>+94 752 345 678</p>
                <p>flavordash4@gmail.com</p>
                <p>foodfav15@gmail.com</p>
            </div>

            <div class="footer_tag">
                <h2>Our Service</h2>
                <p>Fast Delivery</p>
                <p>Easy Payments</p>
                <p>24 x 7 Service</p>
            </div>

            <div class="footer_tag">
                <h2>Follows</h2>
                <i class="fa-brands fa-facebook-f"></i>
                <i class="fa-brands fa-twitter"></i>
                <i class="fa-brands fa-instagram"></i>
                <i class="fa-brands fa-linkedin-in"></i>
            </div>

        </div>

        <p class="end">Thank you for visit us!<span><i class="fa-solid fa-face-grin"></i></span></p>

    </footer>
</body>
</html>
