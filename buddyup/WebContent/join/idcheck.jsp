<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
   <%
  String root = request.getContextPath();
  String id = request.getParameter("id");
  
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>���̵� Ȯ��</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript">
function idcheck(){
	var id = document.idckform.id.value; 
	//alert(id.length)
	if(id ==""){
		alert("�ϻ��� ���̵� �Է�");
		return;
	}else if(id.length < 4 || id.length > 16){
		alert("���̵�� 4�ڸ� �̻� 16�� ���� �Դϴ�.");
		return;
	}
	else{
		document.idckform.action = "<%=root%>/user";
		document.idckform.submit();
	}
}

function useid(uid){
	opener.document.memberform.id.value = uid;
	self.close();
}
</script>
</head>
 
<body>
<form name="idckform" method="get" action="" onsubmit="return false;">
<input type="hidden" id="act" name="act" value="idcheck">
<div class="container" align="center">
	<div align="center" style="width:500px; border:1px solid #cccccc; padding:20px; margin-top:30px">
		<h4>���̵� �ߺ��˻�</h4>
		<hr />
		<div class="form-inline" style="margin-bottom:5px">
			<label style="width:80px">���̵�</label>
			<input id="id" name="id" type="text" class="form-control" placeholder="���̵� �Է��ϼ���." onkeypress="javascript:if(event.keyCode == 13) {idcheck();}"/>
			<input type="button" class="btn btn-success" value="�ߺ�Ȯ��" onclick ="javascript:idcheck();"/>
		</div>
		<hr />
	<% 
		if(id == null){
	%>
		<div align="center">
			�˻��� ���̵� �Է��ϼ���
		</div>
	<%
		} else {
			int idcount = Integer.parseInt(request.getParameter("idcount"));
			if(idcount == 0){
	%>
			<div align="center">
			<b><%=id%>�� ����Ҽ� �ֽ��ϴ�.
			<input type="button" class="btn btn-success" value="���" onclick ="javascript:useid('<%=id%>');"/>
			</div>
	<%
			}else{
	%>
		<div align="center">
			<b><%=id%>�� ����Ҽ� �����ϴ�.<br>
			�ٸ� ���̵� �˻��ϼ���
		</div>
	<%		}
		}
	%>
	</div>
</div>
</form>
</body>
</html>