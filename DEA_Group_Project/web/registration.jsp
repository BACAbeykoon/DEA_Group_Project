<%-- 
    Document   : registration
    Created on : 25-Apr-2024, 00:08:24
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <link rel="stylesheet"
              href="fonts/material-icon/css/material-design-iconic-font.min.css">
        
        <!-- Main css -->
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        
        <!-- create a hidden field -->
        <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">

        
        <div class="main">
            <section class="signup">
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form">
                            
                            <h2 class="form-title">Sign up</h2>
                            <form action="Registration" method="POST" >
                                
                                <div class="form-group">
                                   <label for="name"><i class= "zmdi zmdi-account material-icons-name"></i></label>
                                   <input type="text" name="name"  placeholder="Your Name" />
                                </div>
                                
                                
                                <div class="form-group">
                                    <label for="email"><i class="zmdi zmdi-email"></i></label> 
                                    <input type="email" name="email"  placeholder="Your Email" />
                                </div>
                                
                                <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label> 
                                    <input type="password" name="password"  placeholder="Password" />
                                </div>
                                
                                <div class="form-group">
                                     <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                    <input type="password" name="re_pass"  placeholder="Repeat your password" />
                                </div>
                                
                                <div class="form-group">
                                    <label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
                                    <input type="text" name="mobile"  placeholder="Contact no" />
                                </div>
                                
                                <div class="form-group">
                                    <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                    <label for="agree-term" class="label-agree-term"><span><span></span></span>
                                        I agree all statements in <a href="#" class="term-service">Terms of service</a></label>
                                </div>
                               
                                <a href="login.jsp" class="signup-image-link">I already have an Account </a>
                                <div class="form-group form-button">
                                    <input type="submit" name="signup" id="signup" class="form-submit" value="Register" />
                               </div>
                                </form>
                           </div>
                        
                        <div class="signup-image">
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
            if (status == "success"){
                swal("Congratulations","Account Created Successfully","success");
            }
        </script>
        
            </body>
            </html>
