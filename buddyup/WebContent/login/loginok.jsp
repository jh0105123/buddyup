<%@page import="com.kitri.util.PageMove"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.kitri.member.model.MemberDto, com.kitri.util.PageMove"%>
    
<%
String root = request.getContextPath();
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
<%=memberDto.getName()%>(<a href="mailto:<%=memberDto.getEmail1()%>@<%=memberDto.getEmail2()%>"><%=memberDto.getId()%></a>)�� �ȳ��ϼ���? �ݰ�����
<a href="<%=root%>/user?act=maillist">���Ϻ���</a><br>
<a href="">����������</a><br>
<a href="">Ż��</a><br>
<a href="<%=root%>/user?act=logout">�α׾ƿ�</a><br>
</body>
</html>
<%
}else{
	PageMove.redirect(request, response, "/login/login.jsp");
}
%>