<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div class="main">
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <img src="https://eskilly.com/wp-content/uploads/2023/07/6300959.jpg" alt="Sign up image">
                    </div>
                    <div class="signin-form">
                        <h2>Login</h2>
                        <form method="POST" action="login.php" id="login-form"><br><br>
                            <div class="form-group">
                                <input type="text" name="username" id="username" placeholder="Username" required>
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" id="password" placeholder="Password" required>
                            </div>
                            
                            
                            <div class="form-group form-button">
                                    <input type="submit" name="signin" id="signin"
                                           class="form-submit" value="Log in" />
                                </div>
                        </form>
                        <br>
                            <a href="registration.jsp">Create an account</a>
                        
                    </div>
                </div>
            </div>
        </section>
    </div>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>
