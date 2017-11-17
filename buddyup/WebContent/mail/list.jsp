<%@page import="com.kitri.util.PageMove"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.kitri.member.model.MemberDto, com.kitri.util.PageMove"%>
    
<%
MemberDto memberDto = (MemberDto)session.getAttribute("userinfo");
if(memberDto != null){
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<h3><%=memberDto.getName()%>님 메일 목록.</h3>
10.안녕하세요<br>
9.제출하세요
</center>
</body>
</html>
<%
}else{
	PageMove.redirect(request, response, "/login/login.jsp");
}
%>