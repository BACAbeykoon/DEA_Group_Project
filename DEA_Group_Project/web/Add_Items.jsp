<%-- 
    Document   : Add_Items
    Created on : Apr 21, 2024, 7:18:30 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Foods</title>
   <link rel="stylesheet" href="">
    <style>
        
        
*{
    margin: 0;
    padding: 0;
    font-family: "poppins";
}
body{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: linear-gradient(45deg ,#098dc1,60% ,#f417de);
    
    
}
.container{
    height: 650px;
    width: 410px;
    background: #eee;
    border-radius: 15px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    overflow: hidden;
    position: relative;
}
.Form{
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;

}

.login-form{
    position: absolute;
    transform: translateX(0px);
    transition: .5s ease;

}
.login-form.active{
    transform: translateX(-410px);
}

.Register-form{
    transform: translateX(410px);
    transition: .5s ease;
    
}
.Register-form.active{
    transform: translateX(0);
}
h2{
    color: #333;
    font-size: 32px;
}
.input-box1{
    margin: 45px 0;
    height: 40px;
    width: 300px;
    position: relative;
}
.input-box{
    margin: 45px 0;
    height: 40px;
    width: 300px;
    border-bottom: 2px solid rgba(0,0,0,.5);
    position: relative;
}
.input-box input{
    width: 90%;
    height: 100%;
    float: right;
    border: none;
    outline: none;
    font-size: 15px;
    color: rgba(0,0,0,.9);
  
    padding: 5px 0;
    background: transparent;
}
.input-box label{
    position: absolute;
    left: 0;
    transform: translateY(-56%);
    font-size: 15px;
    font-weight: 500;
    color: #333;
}
.input-box i{
    position: absolute;
    left: 0px;
    transform: translateY(75%);
    font-size: 22px;
    color: rgba(0,0,0,.5);
}
input::placeholder{
    font-size: 13px;
}
input#checked{
    margin-right: 3px;
}

.btn{
    width: 100%;
    height: 40px;
    margin-top: 20px;
    border-radius: 50px;
    border: none;
    outline: none;
    background: linear-gradient(45deg ,#098dc1,60% ,#f417de);
    font-size: 19px;
    font-weight: 500;
    color: #eee;
    position: relative;
    cursor: pointer;
    z-index: 1;
    overflow: hidden;
}
.btn::before{
    content: "";
    position: absolute;
    left: 0;
    top: 0%;
    height: 100%;
    width: 00%;
    background: linear-gradient(45deg ,#f417de,60% ,#098dc1);
    transition: .5s ease;
    z-index: -1;
}
.btn:hover{
    color: #eee;
}
.btn:hover:before{
width: 100%;
}

p{
    color: rgba(0,0,0,.5);
    font-size: 13px;
    font-weight: 500;
    margin: 25px 0;
}

.RegisteBtn a{
    text-decoration: none;
    font-size: 14px;
}

        
    </style>
     
    
</head>
<body>
    <div class="container">
        <div class="Form login-form">
        <h2>Add New Products</h2>
        <form action="Manage" method="post" enctype="multipart/form-data">
            <div class="input-box">
                <i class='bx bxs-user'></i>
                <label for="#">Product ID</label>
                <input type="text" name="P_id" id="P_id"> 
            </div>
            
            <div class="input-box1">
               
                
                    <label for="#">Category</label>
                    <select name="categary" id="categary"><option>Main Dish</option><option>Short Eats</option><option>Drinks</option><option>Desserts</option></select>
                    
               
            </div>
            
            
            <div class="input-box">
                <i class='bx bxs-envelope' ></i>
                <label for="#">Description</label>
                 <input type="text" name="dis" id="dis">
              
            </div>
            <div class="input-box">
                <i class='bx bxs-user'></i>
                <label for="#">Price</label>
                <input type="text" name="price" id="price"> 
            </div>
            
            <div class="input-box">
                <i class='bx bxs-user'></i>
                <label for="#">Image</label>
                <input type="file" name="image" id="image"> 
            </div>
   
            <button class="btn">Submit</button>
        </form>
      
        <p class="RegisteBtn RegiBtn"> <a href="viewproduct">View All Product List</a></p>
    </div>
  

</body>
</html>

