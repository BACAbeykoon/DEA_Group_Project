<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
       <form action="Manage" method="post">

            <table width="400px" border="1">
                <tr>
                   <td colspan="2"><center>
                   <h1>Add New Products</h1>
                  </center> </td>
                </tr>

                <tr>
                    <td>Product ID</td>
                    <td><input type="text" name="P_id" id="P_id"></td>
                </tr>

                <tr>
                    <td>Category</td>
                    <td><select name="categary" id="categary"><option>Food</option><option>Vegetable</option><option>Fruits</option></select></td>
                    
                </tr>

                <tr>
                    <td>Description</td>
                    <td><input type="text" name="dis" id="dis"></td>
                </tr>
                
                 <tr>
                    <td>Price</td>
                    <td><input type="text" name="price" id="price"></td>
                </tr>
                

                <tr>
                    <td colspan="2"> <input type="submit" value="Submit"></td>

                </tr>
                

            </table>


        </form>
        
        <p> <a href="viewproduct">View All Product List</a> </p> 
    </center>    
    </body>
</html>