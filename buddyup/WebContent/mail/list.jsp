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
<h3><%=memberDto.getName()%>�� ���� ���.</h3>
10.�ȳ��ϼ���<br>
9.�����ϼ���
</center>
</body>
</html>
<%
}else{
	PageMove.redirect(request, response, "/login/login.jsp");
}
%>