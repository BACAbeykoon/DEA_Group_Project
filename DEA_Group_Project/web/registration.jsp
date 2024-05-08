<%-- 
    Document   : registration
    Created on : 25-Apr-2024, 00:08:24
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <%--CSS--%>
    <style>
        body {
    font-family: Arial, sans-serif;
    background-image: url('images/free.jpg'); 
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    background-color: #f7f7f7;
    margin: 0;
    padding: 0;
}

h2 {
    text-align: center;
    color: #333;
}

form {
    width: 300px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
    display: block;
    margin-bottom: 10px;
    color: #555;
}

input[type="text"],
input[type="password"],
input[type="email"],
input[type="submit"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-sizing: border-box;
}

input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    border: none;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

p {
            text-align: center;
            margin-top: 10px;
            color: #777;
        }
        a {
            text-decoration: none;
            color: #007bff;
        }
        a:hover {
            text-decoration: underline;
        }
        
    </style>
    <script>
    function showError(message) {
        alert('Alert: ' + message);
    }
    </script>
</head>
<body>
    <h2>Registration Form</h2>
    <form action="registration" method="post" onsubmit="return validateForm()">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        
        <label for="re-password">Confirm Password:</label>
        <input type="password" id="re-password" name="re-password" required><br><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="no">Mobile Number:</label>
        <input type="text" id="no" name="no" required><br><br>

        
        <input type="submit" value="Register">
        <p> <a href="login.jsp">Login</a></p>
        
        
    </form>
    
  <%--Data Validation --%> 
    
    <script>
        function validateForm() {
            var password = document.getElementById("password").value;
            var rePassword = document.getElementById("re-password").value;
            var no = document.getElementById("no").value;
            
            if (password !== rePassword) {
                showError("Passwords do not match.");
                return false;
            }
            
            if (no.length !== 10) {
                showError("Mobile number must be 10 characters long.");
                return false;
            }
            
            return true;
        }
    </script>
</body>
</html>
