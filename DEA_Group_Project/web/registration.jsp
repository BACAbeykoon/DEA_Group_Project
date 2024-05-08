<%-- 
    Document   : registration
    Created on : 25-Apr-2024, 00:08:24
    Author     : User
--%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <style>
       body {
            font-family: Arial, sans-serif;
            background-image: url('images/go.jpg'); /* Replace 'background.jpg' with the path to your background image */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            background-color: #f0f0f0;
            margin: 5;
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
    padding: 25px;
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
</head>
<body>
   
    <form action="RegisterM" method="post">
         <h2>Registration Form</h2>
         <br>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>
        
        <label for="no">Phone No:</label>
        <input type="text" id="no" name="no" required><br><br>
        
        
        <input type="submit" value="Register">
         <p> <a href="login.jsp">Login</a></p>
    </form>
    <p > <a href="ViewUsers">View All Product List</a></p>
</body>
</html>

