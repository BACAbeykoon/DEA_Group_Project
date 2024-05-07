<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <style>
 body {
     
    background-image: url('images/AdminB.jpg'); /* Replace 'background.jpg' with the path to your background image */
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
}

.container {
    width: 100%;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.login-box {
    width: 300px;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.login-box h2 {
    margin-bottom: 20px;
    text-align: center;
    color: #333;
}

.textbox {
    margin-bottom: 20px;
}

.textbox input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
    box-sizing: border-box;
}

.btn {
    width: 100%;
    padding: 10px;
    background-color: #4caf50;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.btn:hover {
    background-color: #45a049;
}
</style>
    
</head>
<body>
    <%@include file="header.jsp"%>
    <div class="container">
        <div class="login-box">
            <h2>Admin Login</h2>
            <form action="LoginServlet" method="post">
                <div class="textbox">
                    <input type="text" placeholder="Username" name="username" required>
                </div>
                <div class="textbox">
                    <input type="password" placeholder="Password" name="password" required>
                </div>
                <input type="submit" class="btn" value="Login">
            </form>
        </div>
    </div>
</body>
</html>
