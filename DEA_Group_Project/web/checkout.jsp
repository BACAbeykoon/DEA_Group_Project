<%-- 
    Document   : checkout
    Created on : Apr 27, 2024, 12:53:07 PM
    Author     : iresh
--%>

<%@page contentType="tex
 </html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-compatible " content="IE-edge">
        <meta name="view port" content="width=device width.initial-scale=1.0">
        
        
        <link rel="Stylesheet" href="checkout.css">
        
    </head>   
        <body>
            
        <div class="container">
            
            <form action="checkoutServlet"method="post">
                
            <div class="row">
                
                <div class="col">
                    
                  <h3 class="title">Delivery Information</h3>
                  
                  <div class="inputBox">
                      <span>Full name :</span>
                      <input type="text" placeholder="Mr. D Silva">
                  </div>
                  <br>
                  <div class="inputBox">
                      <span> e-mail :</span>
                      <input type="email" placeholder="example@example.com">
                  </div>
                  <br>
                  <div class="inputBox">
                      <span> Confirm e-mail :</span>
                      <input type="email" placeholder="example@example.com">
                  </div>
                  <br>
                  <div class="inputBox">
                      <span> Address :</span>
                      <input type="text" placeholder="room-street-locality">
                 </div>
                  <br>
                  <div class="inputBox">
                      <span>City:</span>
                      <input type="text" placeholder="Kandy">
                  </div>
                  <br>
                  
                  <div class="flex">
                    <div class="inputBox">
                       <span>State :</span>
                       <input type="text" placeholder="Sri Lanka">
                  </div>
                      <br>
                   <div class="inputBox">
                       <span>Zip code:</span>
                       <input type="text" placeholder="20480">
                  </div>
                      <br>
                  
                   <div class="col">
                  <h3 class="title">Payment Option</h3>
                  <div class="inputBox">
                      
                      <span>Cards accepted :</span>
                      <img src="a.jpg">
                  </div>
                  <br>
                  <div class="inputBox">
                      <span> Name on card :</span>
                      <input type="text" placeholder=" Mr.D Silva">
                  </div>
                  <br>
                  <div class="inputBox">
                      <span> Credit card number :</span>
                      <input type="text" placeholder="0000 1111 2222 3333">
                 </div>
                  <br>
                  <div class="inputBox">
                      <span> Expiry month :</span>
                      <input type="text" placeholder="April">
                      
                  </div>
                  <br>
                    <div class="flex">
                       <span> Expiry year :</span>
                       <input type="number" placeholder="2028">
                  </div>
                  <br>
                   <div class="inputBox">
                       <span>CVV :</span>
                       <input type="text" placeholder=" 123">
                       </div>
                  <br>
                  </div>
                </div>
                </div>
                  
                  <input type="Submit" value="Proceed to checkout" class="submit-btn">
                  
                  </form>
                  
                  
    </head>
   
    </body>
</html>
