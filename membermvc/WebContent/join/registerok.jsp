<%@page import="com.kitri.member.model.MemberDetailDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "com.kitri.member.model.MemberDetailDto, com.kitri.util.PageMove"%>
<%
String root = request.getContextPath();
MemberDetailDto memberDetailDto = (MemberDetailDto)request.getAttribute("userinfo");
if(memberDetailDto != null){
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%=memberDetailDto.getName()%>�� ȸ�������� �����մϴ�.<br>
�����Ͻ� ���̵��<%=memberDetailDto.getId() %>�Դϴ�.
<a href = "<%=root %>/user?act=mvlogin">�α���</a>
</body>
</html>
<%
} else{
	PageMove.redirect(request, response, "/index.jsp");
}
%>
