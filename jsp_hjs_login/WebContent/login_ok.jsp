<%@page import="edu.sejong.ex.dto.MemberDto"%>
<%@page import="edu.sejong.ex.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인 OK 페이지</h1>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	MemberDao dao = new MemberDao();
	int check = dao.userCheck(id,pw);
	
	if(check == MemberDao.MEMBER_LOGIN_SUCCESS){
		response.sendRedirect("main.jsp");
		MemberDto member = dao.getMember(id);
		session.setAttribute("member",member);
	}else if(check == MemberDao.MEMBER_LOGIN_FAIL){
		response.sendRedirect("login.jsp");
	}
%>
</body>
</html>