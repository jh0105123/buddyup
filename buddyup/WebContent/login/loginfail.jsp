<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    String root = request.getContextPath();
    %>
<script>
	alert("��й�ȣ�� Ȯ���ϼ���");
	document.location.href = "<%=root%>/login/login.jsp";
</script>