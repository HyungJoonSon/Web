<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>MBTI TOWN</title>
	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script src="https://kit.fontawesome.com/e387ad5e3a.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="./css/main.css">
</head>
<body>
	<nav class="navbar">
		<div class="navbar__logo">
			<i class="fab fa-monero"></i> <a href="">MBTI TOWN</a>
		</div>

		<ul class="navbar__menu">
			<li><a href="main.jsp">#Main</a></li>
			<li>
				<a href="">#MBTI board</a>
				<div class="sub">
					<ul class="list">
						<li><a href="boardmbti.jsp?mbti=INTJ">INTJ</a></li>
						<li><a href="boardmbti.jsp?mbti=INTP">INTP</a></li>
						<li><a href="boardmbti.jsp?mbti=ENTJ">ENTJ</a></li>
						<li><a href="boardmbti.jsp?mbti=ENTP">ENTP</a></li>
					</ul>
						
					<ul class="list">
						<li><a href="boardmbti.jsp?mbti=INFJ">INFJ</a></li>
						<li><a href="boardmbti.jsp?mbti=INFP">INFP</a></li>
						<li><a href="boardmbti.jsp?mbti=ENFJ">ENFJ</a></li>
						<li><a href="boardmbti.jsp?mbti=ENFP">ENFP</a></li>
					</ul>	
					
					<ul class="list">
						<li><a href="boardmbti.jsp?mbti=ISTJ">ISTJ</a></li>
						<li><a href="boardmbti.jsp?mbti=ISFJ">ISFJ</a></li>
						<li><a href="boardmbti.jsp?mbti=ESTJ">ESTJ</a></li>
						<li><a href="boardmbti.jsp?mbti=ESFJ">ESFJ</a></li>
					</ul>	
					
					<ul class="list">
						<li><a href="boardmbti.jsp?mbti=ISTP">ISTP</a></li>
						<li><a href="boardmbti.jsp?mbti=ISFP">ISFP</a></li>
						<li><a href="boardmbti.jsp?mbti=ESTP">ESTP</a></li>
						<li><a href="boardmbti.jsp?mbti=ESFP">ESFP</a></li>
					</ul>
				</div>
			</li>
			<li>
				<a href="psychology1.jsp">#Psychology</a>
				<div class="sub">
					<ul class="list">
						<li><a href="psychology1.jsp">Job</a></li>
						<li><a href="psychology2.jsp">Relationship</a>
					</ul>
				</div>
			</li>
		</ul>

		<ul class="navbar__user">
			<li><i class="fas fa-user-check"></i></li>
			<li>~님 환영합니다</li>
		</ul>
	</nav>

	<br>

	<div class="section1">

		<font size="50px">16</font>가지 <font size="60px">성격유형</font>의 우리가
		<p>이해하고 소통하는 공간
		<p>
			<font size="150px" color="black"><strong>"MBTI TOWN"</strong></font>
			입니다
	</div>
	<!-- 이미지 슬라이드 JS 코드 -->
	<div class="section2">
		<img src="http://gayounghosting.dothome.co.kr/image/AnalystImg.png" id=mainImage alt="img">
		<script type="text/javascript">
        var myImage=document.getElementById("mainImage");
        var imageArray=["http://gayounghosting.dothome.co.kr/image/AnalystImg.png","http://gayounghosting.dothome.co.kr/image/DiplomaImg.png",
        	"http://gayounghosting.dothome.co.kr/image/ExploerImg.png","http://gayounghosting.dothome.co.kr/image/MangerImg.png"];
        var imageIndex=0;

        function changeImage(){
          myImage.setAttribute("src",imageArray[imageIndex]);
          imageIndex++;
          if(imageIndex>=imageArray.length){
            imageIndex=0;
          }
        }
        setInterval(changeImage,3000);
      </script>
	</div>

	<div class="footer">
		<center>
			<br>
			<br> 출처 어찌구 저찌구
			<p>contact us
			<p>
		</center>
	</div>
	
	
</body>