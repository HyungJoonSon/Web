<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.*"%>
<%
	response.setCharacterEncoding("UTF-8");
	PrintWriter script = response.getWriter();
	String boardType = request.getParameter("mbti");
	request.setAttribute("mbti", boardType);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글수정 : <%=boardType%> 게시판</title>
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="https://kit.fontawesome.com/e387ad5e3a.js"></script>
<link rel="stylesheet" type="text/css" href="./css/boarddiv.css">
<link rel="stylesheet" type="text/css" href="./css/boardtable.css">
<link rel="stylesheet" type="text/css" href="./css/main.css">
<style>
input:focus {outline:none;}
textarea:focus {outline:none;}
</style>
</head>
<body>
	<!-- 상단 메뉴 -->
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
			<li><a href="psychology1.jsp">#Psychology</a></li>
		</ul>
		<ul class="navbar__user">
			<li><i class="fas fa-user-check"></i></li>
			<li>~님 환영합니다</li>
		</ul>
	</nav>
	
	<!-- 게시판 이름과 글제목 -->
	<div class="containar-board-nonmain">
		<!-- 게시간이름, 글제목, 작성일 -->
		<div class="center-board-nonmain" style="background-color: #ffffff; padding-top: 5px; padding-bottom: 5px; border-radius: 5px">
		<form method="post" action="boardmodifyaction.jsp">
			<table class="write-table">
				<thead>
					<tr class="table-top">
						<th colspan="2" style="border-bottom: #000000;">
							<div style="float:left; margin-left: 0px; padding: 5px 0px;">
								<font style="font-size: 32px">게시글 수정</font>
							</div>
							<div style="float: right; margin-right: 0px; padding: 5px 0px;">
								<input type="submit" class="write-ripple-btn" value="수정">
								<a class="view-button-btn" href="javascript:void(0)" onclick="javascript:history.back()">취소</a>
								<input type="hidden" name = "mbti" value="<%=boardType %>">
								<input type="hidden" name = "id" value="<%=request.getParameter("id") %>">
							</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr class="table-middle" style="border-top: #000000;">
						<td><input type="text" class="form-write" placeholder="글 제목" name="boardTitle" maxlength="50"></td>
					</tr>
					<tr class="table-middle">
						<td><textarea class="form-write" style = "overflow: hidden; height: 300px"placeholder="글 내용" name="boardContent" maxlength="1000"></textarea></td>
					</tr>
				</tbody>
			</table>
		</form>
		</div>
	</div>
</body>
</html>