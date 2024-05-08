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
        
        <style>
            @import url('https://fonts.googleapls.com/css2/?family=Poppins:weight@100;300;400;500;600&display=swap');

body{
  font-family:'poppins',sans-serif;
  margin:0; 
  padding:0;
  box-sizing:border-box;
  outline:none;
  border:none;
  text-transform:capitalize;
  transition:all 0.2s linear;
    
}
.container{
    display:flex;
    justify-content: center;
    align-items:center;
    padding:20px;
    min-height:100vh;
    background:linear-gradient(90deg,#2ecc71 60%,#27ae60 4.1%);
    padding-bottom:70px;
    
}

.container form{
    width:400px;
    background:#fff;
    box-shadow: 0 5px 10px rgba(0,0,0,0.1);
    padding:20px;
    justify-content: space-between;
}
.container.row{
        display:flex;
        flex-wrap:wrap;
        gap:15px;
}

.container.form.row.col{
    flex:1 1 250px;
}


.container.row.col.title{
    font-size:10px;
    color:#333;
    padding-bottom:5px;
    text-transform:uppercase;
    
}
.container.title:before{
    content:"";
    position:absolute;
    left:0;
    bottom:0;
    height:3px;
    width:10px;
    
}
.container.col.inputbox{
    margin:25px 0;
}


.container.col.inputbox span{
    width:calc(100%/2 20px); 
}

 .container.col.inputbox input{
        width:100px;
        height:15px;
        border:1px solid #ccc;
        padding:5px 10px;
        font-size:15px;
        text-transform:none;
    }

 .container form.row.col.inputBox input focus{
        border:1px solid #000;
    
    }
    
  .container.col.flex {
    display: flex;
    gap:15px;
    
   }

    .container form.row.col.input img{
        height:24px;
        margin-top:5px;
        filter:drop-shadow(0,0, 1px #000);
    }
    
    .container.submit-btn{
      width: 100%;
      padding: 12px;
      font-size:17px;
      background:#27ae60;
      color:#fff;
      margin-top:5px;
      cursor:pointer;   
    }
   
    .container form.submit-btn:hover{
        background:#2ecc71;
    }   
        </style>
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
