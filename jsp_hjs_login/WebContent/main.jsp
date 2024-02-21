<%@page import="edu.sejong.ex.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>메인 페이지입니다.</h1>
<%
	MemberDto member = (MemberDto) session.getAttribute("member");
%>
<h1><%= member.getId() %>님 안녕하세요</h1>
<a href="login.jsp">로그인 페이지 이동</a>
</body>
</html>