<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.*"%>
<%
	response.setCharacterEncoding("UTF-8");
	PrintWriter script = response.getWriter();
	String boardType = request.getParameter("mbti");
	
	// 초기화 하는거 지워주세요!!
	// 초기화 하는거 지워주세요!!
	// 초기화 하는거 지워주세요!!
	if(boardType == null)
		boardType = "INTJ";
	// 초기화 하는거 지워주세요!!
	// 초기화 하는거 지워주세요!!
	// 초기화 하는거 지워주세요!!
	
	int pageNumber = 1;
	if (request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=boardType%> 게시판</title>
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="https://kit.fontawesome.com/e387ad5e3a.js"></script>
<link rel="stylesheet" type="text/css" href="./css/board.css">
<link rel="stylesheet" type="text/css" href="./css/main.css">
<script>
	$(function() {
		$('div.board-main-sideBar ul#right-sidebar li ul.subbar').hide();
		$('div.board-main-sideBar ul#right-sidebar').click(function() {
			$('div.board-main-sideBar ul#right-sidebar li ul.subbar').slideToggle();
		});
	});
</script>
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
	
	<!-- 게시판 이름 및 특성 -->
	<div class="Container-board-main">
		<div class="Top-board-main">
			<font style="font-size: 100px; line-height: 100%; font-weight:bold;"><%=boardType%></font><br>
			<%
				if (boardType != null) {
					switch (boardType) {
					case "INTJ":
			%>
			<font style="font-size: 15px;">용의주도한 전력가들의 모임</font>
			<%
					break;
					case "INTP":
			%>
			<font style="font-size: 15px;">논리적인 사색가들의 모임</font>
			<%
					break;
					case "ENTJ":
			%>
			<font style="font-size: 15px;">대담한 통솔자들의 모임</font>
			<%
					break;
					case "ENTP":
			%>
			<font style="font-size: 15px;">뜨거운 논쟁을 즐기는 변론가들의 모임</font>
			<%
					break;
					case "INFJ":
			%>
			<font style="font-size: 15px;">선의의 옹호자들의 모임</font>
			<%
					break;
					case "INFP":
			%>
			<font style="font-size: 15px;">열정적인 중재자들의 모임</font>
			<%
					break;
					case "ENFJ":
			%>
			<font style="font-size: 15px;">정의로운 사회운동가의 모임</font>
			<%
					break;
					case "ENFP":
			%>
			<font style="font-size: 15px;">재기발란한 활동가의 모임</font>
			<%
					break;
					case "ISTJ":
			%>
			<font style="font-size: 15px;">청렴결백한 논리주의자들의 모임</font>
			<%
					break;
					case "ISFJ":
			%>
			<font style="font-size: 15px;">용감한 수호자들의 모임</font>
			<%
					break;
					case "ESTJ":
			%>
			<font style="font-size: 15px;">엄격한 관리자들의 모임</font>
			<%
					break;
					case "ESFJ":
			%>
			<font style="font-size: 15px;">사교적인 외교관들의 모임</font>
			<%
			
					break;
					case "ISTP":
			%>
			<font style="font-size: 15px;">만능 재주꾼들의 모임</font>
			<%
					break;
					case "ISFP":
			%>
			<font style="font-size: 15px;">호기심 많은 예술가들의 모임</font>
			<%
					break;
					case "ESTP":
			%>
			<font style="font-size: 15px;">모험을 즐기는 사업가들의 모임</font>
			<%
					break;
					case "ESFP":
			%>
			<font style="font-size: 15px;">자유로운 영혼의 연예인들의 모임</font>
			<%
					}
				}
			%>
		</div>
		
		<!-- 게시물 목록 -->
        <div class="Center-board-main">
            <table class="List-Board">
                <thead>
                    <tr class="List-top">
                        <th style="width: 160px;">말머리</th>
                        <th style="width: 538px;">제목</th>
                        <th style="width: 133px;">작성자</th>
                        <th style="width: 133px;">작성일</th>
                        <th style="width: 106px;">좋아요</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="List-middle">
                        <td>15</td>
                        <td class = "list-main"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=1"></a></td>
                        <td class = "list-main">홍길동</td>
                        <td>2020.11.14.</td>
                        <td>25</td>
                    </tr>
                    <tr class="List-middle">
                        <td>14</td>
                        <td class = "list-main"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=1">웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍</a></td>
                        <td class = "list-main">웹프그래밍의 홍길동전 천원권</td>
                        <td>2020.11.14.</td>
                        <td>25</td>
                    </tr>
                    <tr class="List-middle">
                        <td>13</td>
                        <td class = "list-main"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=2">웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍</a></td>
                        <td class = "list-main">웹프그래밍의 홍길동</td>
                        <td>2020.11.14.</td>
                        <td>25</td>
                    </tr>
                    <tr class="List-middle">
                        <td>12</td>
                        <td class = "list-main"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=1">웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍</a></td>
                        <td class = "list-main">웹프그래밍의 홍길동전</td>
                        <td>2020.11.14.</td>
                        <td>25</td>
                    </tr>
                    <tr class="List-middle">
                        <td>11</td>
                        <td class = "list-main"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=2">웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍</a></td>
                        <td class = "list-main">웹프그래밍의 홍길동</td>
                        <td>2020.11.14.</td>
                        <td>25</td>
                    </tr>
                    <tr class="List-middle">
                        <td>10</td>
                        <td class = "list-main"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=1">웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍</a></td>
                        <td class = "list-main">웹프그래밍의 홍길동전</td>
                        <td>2020.11.14.</td>
                        <td>25</td>
                    </tr>
                    <tr class="List-middle">
                        <td>9</td>
                        <td class = "list-main"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=2">웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍</a></td>
                        <td class = "list-main">웹프그래밍의 홍길동</td>
                        <td>2020.11.14.</td>
                        <td>25</td>
                    </tr>
                    <tr class="List-middle">
                        <td>8</td>
                        <td class = "list-main"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=1">웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍</a></td>
                        <td class = "list-main">웹프그래밍의 홍길동전</td>
                        <td>2020.11.14.</td>
                        <td>25</td>
                    </tr>
                    <tr class="List-middle">
                        <td>7</td>
                        <td class = "list-main"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=2">웹프그래밍, 웹프그래밍, 웹프그래밍, 웹프그래밍</a></td>
                        <td class = "list-main">웹프그래밍의 홍길동</td>
                        <td>2020.11.14.</td>
                        <td>25</td>
                    </tr>
                    <tr class="List-middle">
                        <td>6</td>
                        <td class = "list-main"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=1">웹프그래밍, 웹프그래밍, 웹프그래밍</a></td>
                        <td class = "list-main">웹프그래밍의 홍길동전</td>
                        <td>2020.11.14.</td>
                        <td>25</td>
                    </tr>
                    <tr class="List-middle">
                        <td>5</td>
                        <td class = "list-main"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=2">웹프그래밍, 웹프그래밍, 웹프그래밍</a></td>
                        <td class = "list-main">웹프그래밍의 홍길동</td>
                        <td>2020.11.14.</td>
                        <td>25</td>
                    </tr>
                    <tr class="List-middle">
                        <td>4</td>
                        <td class = "list-main"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=1">웹프그래밍, 웹프그래밍</a></td>
                        <td class = "list-main">웹프그래밍의 홍길동전</td>
                        <td>2020.11.14.</td>
                        <td>25</td>
                    </tr>
                    <tr class="List-middle">
                        <td>3</td>
                        <td class = "list-main"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=2">웹프그래밍, 웹프그래밍</a></td>
                        <td class = "list-main">웹프그래밍의 홍길동</td>
                        <td>2020.11.14.</td>
                        <td>25</td>
                    </tr>
                    <tr class="List-middle">
                        <td>2</td>
                        <td class = "list-main"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=1">웹프그래밍</a></td>
                        <td class = "list-main">웹프그래밍의 홍길동전</td>
                        <td>2020.11.14.</td>
                        <td>25</td>
                    </tr>
                    <tr class="List-middle">
                        <td>1</td>
                        <td class = "list-main"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=2">웹프그래밍</a></td>
                        <td class = "list-main">웹프그래밍의 홍길동</td>
                        <td>2020.11.14.</td>
                        <td>25</td>
                    </tr>
                </tbody>
            </table>
        </div>
        
        <!-- 오른쪽 사이드 바 -->
        <div class="board-main-sideBar">
            <ul id="right-sidebar">
                <li>
                	<a id="right-side-bar" href="javascript:void(0)">MBTI</a>
                	<ul class="subbar">
                	    <li style="background: #f1f1f1;"><a id="one" <%if(boardType.equals("INTJ")){%> class="active-one" <%}%> href="mbtiBoard.jsp?mbti=INTJ">INTJ</a></li>
		                <li style="background: #f1f1f1;"><a id="one" <%if(boardType.equals("INTP")){%> class="active-one" <%}%> href="mbtiBoard.jsp?mbti=INTP">INTP</a></li>
		                <li style="background: #f1f1f1;"><a id="one" <%if(boardType.equals("ENTJ")){%> class="active-one" <%}%> href="mbtiBoard.jsp?mbti=ENTJ">ENTJ</a></li>
		                <li style="background: #f1f1f1;"><a id="one" <%if(boardType.equals("ENTP")){%> class="active-one" <%}%> href="mbtiBoard.jsp?mbti=ENTP">ENTP</a></li>
		                <li style="background: #f1f1f1;"><a id="two" <%if(boardType.equals("INFJ")){%> class="active-two" <%}%> href="mbtiBoard.jsp?mbti=INFJ">INFJ</a></li>
		                <li style="background: #f1f1f1;"><a id="two" <%if(boardType.equals("INFP")){%> class="active-two" <%}%> href="mbtiBoard.jsp?mbti=INFP">INFP</a></li>
		                <li style="background: #f1f1f1;"><a id="two" <%if(boardType.equals("ENFJ")){%> class="active-two" <%}%> href="mbtiBoard.jsp?mbti=ENFJ">ENFJ</a></li>
		                <li style="background: #f1f1f1;"><a id="two" <%if(boardType.equals("ENFP")){%> class="active-two" <%}%> href="mbtiBoard.jsp?mbti=ENFP">ENFP</a></li>
		                <li style="background: #f1f1f1;"><a id="three" <%if(boardType.equals("ISTJ")){%> class="active-three" <%}%> href="mbtiBoard.jsp?mbti=ISTJ">ISTJ</a></li>
		                <li style="background: #f1f1f1;"><a id="three" <%if(boardType.equals("ISFJ")){%> class="active-three" <%}%> href="mbtiBoard.jsp?mbti=ISFJ">ISFJ</a></li>
		                <li style="background: #f1f1f1;"><a id="three" <%if(boardType.equals("ESTJ")){%> class="active-three" <%}%> href="mbtiBoard.jsp?mbti=ESTJ">ESTJ</a></li>
		                <li style="background: #f1f1f1;"><a id="three" <%if(boardType.equals("ESFJ")){%> class="active-three" <%}%> href="mbtiBoard.jsp?mbti=ESFJ">ESFJ</a></li>
		                <li style="background: #f1f1f1;"><a id="fore" <%if(boardType.equals("ISTP")){%> class="active-fore" <%}%> href="mbtiBoard.jsp?mbti=ISTP">ISTP</a></li>
		                <li style="background: #f1f1f1;"><a id="fore" <%if(boardType.equals("ISFP")){%> class="active-fore" <%}%> href="mbtiBoard.jsp?mbti=ISFP">ISFP</a></li>
		                <li style="background: #f1f1f1;"><a id="fore" <%if(boardType.equals("ESTP")){%> class="active-fore" <%}%> href="mbtiBoard.jsp?mbti=ESTP">ESTP</a></li>
		                <li style="background: #f1f1f1;"><a id="fore" <%if(boardType.equals("ESFP")){%> class="active-fore" <%}%> href="mbtiBoard.jsp?mbti=ESFP">ESFP</a></li>
                	</ul>
                </li>
			</ul>
        </div>	
		
		<!-- 게시글 목록 밑  -->
		<div class="Botton-board-main">
			<div style="float: left;">
			<%
				if (pageNumber != 1) {
			%>
				<a href="mbtiBoard.jsp?mbti=<%=boardType%>&pageNumber=<%=pageNumber - 1%>"	class="board-btn">이전</a>
			<%
				}
				if (true)// if문 조건 달아서 현재 마지막 페이지라면 다음 버튼이 안나오게 해야함(함수 사용)
				{
			%>
				<a href="mbtiBoard.jsp?mbti=<%=boardType%>&pageNumber=<%=pageNumber + 1%>"	class="board-btn">다음</a>
			<%
				}
			%>
			</div>
			<div style="float: right;">
				<a href="boardWrite.jsp?mbti=<%= boardType%>" class="board-btn">글쓰기</a>
			</div>
		</div>
	</div>
</body>
</html>