<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="./css/loginstyle.css">
<title>Login main page</title>
</head>
<body>
<div class="wrap">
<div class="form-wrap">
<div class="button-wrap">
<div id="btn"></div>
<button type="button" class="togglebtn" onclick="login()">LOG IN</button>
                    <button type="button" class="togglebtn" onclick="register()">REGISTER</button>
                </div>
                <div class="logo">
                MBTI_TOWN
                </div>
                <form method="post" id="login" action="loginaction.jsp" class="input-group">
                    <input type="text" name="userID" class="input-field" maxlength="20" placeholder="User ID" required>
                    <input type="password" name="userPassword" class="input-field" maxlength="20" placeholder="Enter Password" required>
                    <button class="submit">Login</button>
                </form>
                <form method="post" id="register" action="register.jsp" class="input-group">
                    <input type="text" class="input-field" placeholder="User ID" required>
                    <input type="email" class="input-field" placeholder="Your Email" required>
                    <input type="password" class="input-field" placeholder="Enter Password" required>
                    <button class="submit">REGISTER</button>
                </form>
            </div>
        </div>
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
        </script>
</body>
</html>