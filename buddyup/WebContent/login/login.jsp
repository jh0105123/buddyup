<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%
 String root = request.getContextPath();
 Cookie cookie[] = request.getCookies();
 String saveid = "";
 String checkid = "";
 if(cookie != null){
	 int len = cookie.length;
	 for(int i=0;i<len;i++){
		 if("nid_sid".equals(cookie[i].getName())){
			 saveid = cookie[i].getValue();
			 System.out.println("saveid == "+ saveid);
			 checkid = "checked=\"checked\"";
			 break;
		 }
	 }
 }
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>로그인</title>
<script type="text/javascript">
	function login() {
		
		if(document.loginform.id.value == ""){
			alert("아이디를 입력하세요.");
			return;
		}
		else if(document.loginform.pass.value == ""){
			alert("비밀번호를 입력하세요");
			return;
		}
		else{
			document.loginform.action = "<%=root%>/user";
			document.loginform.submit();
		}
	}
	function movejoin() {
		document.location.href = "<%=root%>/user?act=mvjoin";
	}
</script>

</head>
<body>
	<form name="loginform" method="post" action="">
	<input type="hidden"  id="act" name ="act" value = "login">
		<div class="container" align="center">
			<div align="center"
				style="width: 400px; border: 1px solid #cccccc; padding: 20px; margin-top: 30px">
				<h4>로그인</h4>
				<hr />
					<div class="form-inline" style="margin-bottom: 5px; text-align: right">
					 <input id="idsv" name="idsv"type="checkbox" class="form-control" value="saveid" <%=checkid%>/>
					 <label style="width: 80px">아이디저장</label>
				</div>
				
				
				<div class="form-inline" style="margin-bottom: 5px">
					<label style="width: 80px">아이디</label> <input id="id" name="id"
						type="text" class="form-control" value="<%=saveid%>" placeholder="아이디를 입력하세요." />
				</div>
				

				<div class="form-inline" style="margin-bottom: 5px">
					<label style="width: 80px">비밀번호</label> <input id="pass"
						name="pass" type="password" class="form-control"
						placeholder="비밀번호를 입력하세요." />
				</div>

				<hr />

				<div align="center">
					<input type="button" class="btn btn-success" value="로그인"
						onclick="javascript:login()" /> <input type="button"
						class="btn btn-primary" value="회원가입"
						onclick="javascript:movejoin()" />
				</div>
			</div>
		</div>
	</form>
</body>
</html>