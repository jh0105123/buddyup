<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- header.jsp -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>yanghee's index for test</title>

<!-- for common -->
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/common.css">

<!-- for yanghee -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<script src="<%= request.getContextPath() %>/js/chatbtn.js"></script>
<script src="https://use.fontawesome.com/b4e68bb341.js"></script>
<link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/css/chat.css">

</head>
<body>

<!-- chat.jsp -->
<%@ include file="/chat/chat.jsp" %>

<!-- footer.jsp -->
</body>
</html>