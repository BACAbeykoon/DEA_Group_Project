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
    
     <%@include file="header.jsp"%>
     <!-- create a hidden field -->
        <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
    <div class="main">
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        
                    </div>
                    <div class="signin-form">
                        <h2>Login</h2>
                        <form method="POST" action="Login" ><br><br>
                            
                            <div class="form-group">
                                <input type="email" name="email"  placeholder="Your Email"  required>
                            </div>
                            
                            <div class="form-group">
                                <input type="password" name="password"  placeholder="Password" required>
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
    
    <!-- js -->
        
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
        
        <script type="text/javascript">
            var status = document.getElementById("status").value;
            if (status == "failed"){
                swal("Sorry","Wrong Username or Password ","error");
            }
            
            else if (status == "invalidEmail"){
                swal("Sorry","Please Enter Username ","error");
            }
                
            else if (status == "invalidpassword"){
                swal("Sorry"," Please Enter Password ","error");
            }
        </script>
        
</body>
</html>
