<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 로그인한 유저의 아이디, MBTI를 가져오기(세션 확인)
	// 해당 게시판과 MBTI가 동일한지 확인
	// 이전의 파라매터로 보낸 게시판 글번호 가져오기
	// 좋아요의 중복에 따라 if문이 다름(현재 true 상태) - 좋아요 성공 시 어차피 MBTI가 같으므로 유저의 MBTI 게시판으로 가면됨, 현재는 INTJ 고정
	if (true) {
		PrintWriter script = response.getWriter();
		script.print("<script>");
		script.print("location.href = 'boardView.jsp?mbti=" + "INTJ&boardID="+ request.getParameter("boardID") +"'");
		script.print("</script>");
	}
%>

</body>
</html>