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
    <title>Amantha</title>
    <link rel="stylesheet" href="AddStyle.css">
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
               
                <tr>
                    <td>Categary</td>
                    <td><select name="categary" id="categary"><option>Main Dish</option><option>Short Eats</option><option>Drinks</option><option>Desserts</option></select></td>
                    
                </tr>
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

