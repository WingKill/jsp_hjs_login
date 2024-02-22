<%@page import="edu.sejong.ex.dao.MemberDao"%>
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
<%	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	
	MemberDto member = new MemberDto(id,pw,email,address);
	
	MemberDao dao = new MemberDao();
	
	int result = dao.insertMember(member);
	System.out.println(result);
	
	if(result == 0){
		response.sendRedirect("login.jsp");
	}else if(result > 0){
		session.setAttribute("member", member);
		response.sendRedirect("main.jsp");
	}
%>
</body>
</html>