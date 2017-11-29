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
<%=memberDto.getName()%>(<a href="mailto:<%=memberDto.getEmail1()%>@<%=memberDto.getEmail2()%>"><%=memberDto.getId()%></a>)님 안녕하세요? 반가워용
<a href="<%=root%>/user?act=maillist">메일보기</a><br>
<a href="">내정보수정</a><br>
<a href="">탈퇴</a><br>
<a href="<%=root%>/user?act=logout">로그아웃</a><br>
</body>
</html>
<%
}else{
	PageMove.redirect(request, response, "/login/login.jsp");
}
%>