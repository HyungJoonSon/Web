<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
 @import url(http://fonts.googleapis.com/earlyaccess/hanna.css);
* {
    margin: 0;
    padding: 0;
    font-family: 'hanna';
}
.wrap {
    height: 100%;
    width: 100%;
    background-position: center;
    background-size: cover;
    position: absolute;
}
.logo{
	margin: 3px auto;
    text-align: center;
    width: 160px ;
    cursor: pointer;
    color: #6f00cc;
    font-weight: bold;
    font-size: 28px
}
.form-wrap {
    width: 380px;
    height: 480px;
    position: relative;
    margin: 6% auto;
    background: #fff;
    padding: 5px;
    overflow: hidden;
}
.button-wrap {
    width: 230px;
    margin: 35px auto;
    position: relative;
    box-shadow: 0 0 600px 9px #fcae8f;
    border-radius: 30px;
}
.togglebtn {
    padding: 10px 30px;
    cursor: pointer;
    background: transparent;
    border: 0;
    outline: none;
    position: relative;
}
#btn {
    top: 0;
    left: 0;
    position: absolute;
    width: 110px;
    height: 100%;
    background: linear-gradient(to right, #ff00ff, #6f00cc);
    border-radius: 30px;
    transition: .5s;
}
.input-group {
    top: 180px;
    position: absolute;
    width: 280px;
    transition: .5s;
}
.input-field {
    width: 100%;
    padding: 10px 0;
    margin: 5px 0;
    border: none;
    border-bottom: 1px solid #999;
    outline: none;
    background: transparent;
}
.submit {
    width: 85%;
    padding: 10px 30px;
    cursor: pointer;
    display: block;
    margin: auto;
    background: linear-gradient(to right, #ff00ff, #6f00cc);
    border: 0;
    outline: none;
    border-radius: 30px;
}

span {
    color: #777;
    font-size: 12px;
    bottom: 68px;
    position: absolute;
}
#login {
    left: 50px;
}
#register {
    left: 450px;
} 
</style>
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
                <a href="main.jsp">MBTI_TOWN</a>
                </div>

                <form method="post" id="login" action="loginaction.jsp" class="input-group">
                    <input type="text" name="userID" class="input-field" maxlength="20" placeholder="User ID" required>
                    <input type="password" name="userPassword" class="input-field" maxlength="20" placeholder="Enter Password" required>
                    <br><br><br><br><button class="submit">Login</button>
                </form>
                <form method="post" id="register" action="register.jsp" class="input-group">
                	<center>
                	<select name="mbti">
                	<option value="">mbti유형을 선택해주세요</option>
                	<option value="ISTJ">ISTJ</option>
                	<option value="ISFJ">ISFJ</option>
                	<option value="INFJ">INFJ</option>
                	<option value="INTJ">INTJ</option>
                	<option value="ISTP">ISTP</option>
                	<option value="ISFP">ISFP</option>
                	<option value="INFP">INFP</option>
                	<option value="INTP">INTP</option>
                	<option value="ESTP">ESTP</option>
                	<option value="ESFP">ESFP</option>
                	<option value="ENFP">ENTP</option>
                	<option value="ESTJ">ESFJ</option>
                	<option value="ENFJ">ENFJ</option>
                	<option value="ENTJ">ENTJ</option>
                	</select></center>
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