<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String root = request.getContextPath();
    %>
<script>
	alert("비밀번호를 확인하세요");
	document.location.href = "<%=root%>/login/login.jsp";
</script>