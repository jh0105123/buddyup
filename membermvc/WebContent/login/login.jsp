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
<title>�α���</title>
<script type="text/javascript">
	function login() {
		
		if(document.loginform.id.value == ""){
			alert("���̵� �Է��ϼ���.");
			return;
		}
		else if(document.loginform.pass.value == ""){
			alert("��й�ȣ�� �Է��ϼ���");
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
				<h4>�α���</h4>
				<hr />
					<div class="form-inline" style="margin-bottom: 5px; text-align: right">
					 <input id="idsv" name="idsv"type="checkbox" class="form-control" value="saveid" <%=checkid%>/>
					 <label style="width: 80px">���̵�����</label>
				</div>
				
				
				<div class="form-inline" style="margin-bottom: 5px">
					<label style="width: 80px">���̵�</label> <input id="id" name="id"
						type="text" class="form-control" value="<%=saveid%>" placeholder="���̵� �Է��ϼ���." />
				</div>
				

				<div class="form-inline" style="margin-bottom: 5px">
					<label style="width: 80px">��й�ȣ</label> <input id="pass"
						name="pass" type="password" class="form-control"
						placeholder="��й�ȣ�� �Է��ϼ���." />
				</div>

				<hr />

				<div align="center">
					<input type="button" class="btn btn-success" value="�α���"
						onclick="javascript:login()" /> <input type="button"
						class="btn btn-primary" value="ȸ������"
						onclick="javascript:movejoin()" />
				</div>
			</div>
		</div>
	</form>
</body>
</html>