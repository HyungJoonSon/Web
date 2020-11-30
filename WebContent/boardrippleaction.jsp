<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String userID = null;
	// 세션에서 유저 아이디 받아와서 유저에 넣어줌(if문 사용)
	userID = "webprogramming";
	
	// 유저 mbti, 로그인여부 확인, sql 연결 확인
	boolean test = true;
	if(test) {
		PrintWriter script = response.getWriter();
		script.print("<script>");
		script.print("location.href = 'boardview.jsp?mbti="+ request.getParameter("mbti") + "&boardID=" + request.getParameter("id") +"'");
		script.print("</script>");
	} else {
		PrintWriter script = response.getWriter();
		script.print("<script type='text/javascript'>");
		script.print("alert('좋아요에 실패했습니다.');");
		script.print("history.back();");
		script.print("</script>");
	}
%>
</body>
</html>