<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.*"%>
<%
	response.setCharacterEncoding("UTF-8");
	PrintWriter script = response.getWriter();
	String boardType = request.getParameter("mbti");
	int boardID = Integer.parseInt(request.getParameter("boardID"));
	request.setAttribute("mbti", boardType);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글제목 : <%=boardType%> 게시판
</title>
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="https://kit.fontawesome.com/e387ad5e3a.js"></script>
<script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
<link rel="stylesheet" type="text/css" href="./css/boarddiv.css">
<link rel="stylesheet" type="text/css" href="./css/boardtable.css">
<link rel="stylesheet" type="text/css" href="./css/main.css">
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
						<li><a href="#">INTJ</a></li>
						<li><a href="#">INTP</a></li>
						<li><a href="#">ENTJ</a></li>
						<li><a href="#">ENTP</a></li>
					</ul>
						
					<ul class="list">
						<li><a href="#">INFJ</a></li>
						<li><a href="#">INFP</a></li>
						<li><a href="#">ENFJ</a></li>
						<li><a href="#">ENFP</a></li>
					</ul>	
					
					<ul class="list">
						<li><a href="#">ISTJ</a></li>
						<li><a href="#">ISFJ</a></li>
						<li><a href="#">ESTJ</a></li>
						<li><a href="#">ESFJ</a></li>
					</ul>	
					
					<ul class="list">
						<li><a href="#">ISTP</a></li>
						<li><a href="#">ISFP</a></li>
						<li><a href="#">ESTP</a></li>
						<li><a href="#">ESFP</a></li>
					</ul>
				</div>
			</li>
			<li><a href="">#Psychology</a></li>
		</ul>
		<ul class="navbar__user">
			<li><i class="fas fa-user-check"></i></li>
			<li>~님 환영합니다</li>
		</ul>
	</nav>
	
	<!-- 게시판 이름과 글쓰기 Title -->
	<div class="containar-board-nonmain">
		<!-- 글 제목, 글 내용 입력 table, from, input -->
		<div class="center-board-nonmain"
			style="background-color: #ffffff; padding-top: 5px; padding-bottom: 5px; border-radius: 5px">
			<table class="view-table">
				<thead>
					<tr class="table-top">
						<th style="border-bottom: #000000;">
							<div style="text-align: left; margin: 0px auto; width: 1040px">
								<a class="view-title" href="mbtiBoard.jsp?mbti=<%=boardType%>"><font
									style="font-size: 15px"><%=boardType%> 게시판</font></a>
							</div>
							<div
								style="margin: 5px 0px; margin-left:10px; text-align: left; width: 1040px;">
								<font style="font-size: 30px">글 제목</font>
							</div>
							<div style="float:left; margin-left:10px; margin-bottom: 9px; text-align: left; width: 300px;">
								<font style="font-size: 13px; color: #808080">2020.11.15.08:32</font>
							</div>
							<div style="float:right; margin-right:10px; text-align: right; width: 300px;">
								<a style="width: 25px; height: 25px; padding-top: 5px" onclick="return confirm('좋아요하시겠습니까?')" href="LikeAction.jsp?boardID=<%=boardID%>">
									<img src = "image/baseline_thumb_up.png">
								</a>
								<font style="font-size: 25px;">개수</font>
							</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr class=table-middle style="border-top: #000000;">
						<td>
							<div class="form-view-body">
								여기는 글이 들어갈 공간입니다<br>
								여기는 글이 들어갈 공간입니다<br>
								여기는 글이 들어갈 공간입니다<br>
								여기는 글이 들어갈 공간입니다<br>
								여기는 글이 들어갈 공간입니다<br>
								여기는 글이 들어갈 공간입니다<br>
								여기는 글이 들어갈 공간입니다<br>
								여기는 글이 들어갈 공간입니다<br>
							</div>
						</td>
					</tr>
					<!-- 댓글을 받아온 뒤 반복문 사용해서 출력해야 함 -->
					<tr class="view-bottom">
						<td>
							<div class="form-view-ripple">
								여기는 댓글이 들어갈 공간입니다<br> 여기는 댓글이 들어갈 공간입니다<br> <font
									style="font-size: 12px; color: #808080">2020.11.15.
									08:32</font>
							</div>
						</td>
					</tr>
					<tr class="table-bottom">
						<td>
							<div class="form-view-ripple">
								여기는 댓글이 들어갈 공간입니다<br> 여기는 댓글이 들어갈 공간입니다<br> <font
									style="font-size: 12px; color: #808080">2020.11.15.
									08:32</font>
							</div>
						</td>
					</tr>
					<!-- 댓글 쓰는 form -->
					<tr class="table-bottom">
						<td>
							<div class="input-ripple">
								<form method="post" action="rippleAction.jsp">
									<textarea rows="1" placeholder="댓글을 남겨보세요" name="boardContent"
										maxlength="300"></textarea>
									<script>autosize(document.querySelectorAll('textarea'));</script>
									<div style="text-align:right; padding: 5px 5px;">
										<input type="submit" class="write-btn" value="등록">
									</div>
								</form>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>