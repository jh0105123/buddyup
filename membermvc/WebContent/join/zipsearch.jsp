<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.List, com.kitri.member.model.ZipDto"%>
    
    <%
    String root = request.getContextPath();
    String dong = (String)request.getAttribute("sdong"); //���� �� ������Ʈ�� �����Ƿ� ��Ʈ������ ����ȯ�ؼ� �޴���.
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>�����ȣ�˻�</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript">
function zipsearch(){
	
	if(document.zip.dong.value == ""){
			alert("���� �Է����ּ���");
			return;
		}
	else{
			document.zip.action = "<%=root%>/user";
			document.zip.submit();
		}
}
function selectzip(z1,z2,address){
	opener.document.memberform.zip1.value = z1;
	opener.document.memberform.zip2.value = z2;
	opener.document.memberform.addr1.value = address;
	self.close();
}
</script>
</head>
<body>
<form name="zip" method="get" action="" onsubmit="return false;">
<input type = "hidden" id ="act" name = "act" value = "zipsearch">
<div class="container" align="center">
	<div align="center" style="width:500px; border:1px solid #cccccc; padding:20px; margin-top:30px">
		<h4>�����ȣ�˻�</h4>
		<hr />
		<div class="form-inline" style="margin-bottom:5px">
			<label style="width:80px">�ּ��Է�</label>
			<input id="dong" name="dong" type="text" class="form-control" placeholder="���� �Է��ϼ���." onkeypress="javascript:if(event.keyCode == 13) {idcheck();}"/>
			<input type="button" class="btn btn-success" value="�˻�" onclick = "javascript:zipsearch();"/>
		</div>
		<hr />
<%
if(dong == null){
%>
		<div>
		�˻� �Ͻ� ���� ��Ȯ�� �Է��ϼ���
		��) �Ｚ,����
		</div>
<%
} else {
	List<ZipDto> list = (List<ZipDto>)request.getAttribute("ziplist");
	int size = list.size();
	if(size != 0){
		for(int i=0;i<size;i++){
			ZipDto zipDto = list.get(i);
%>			
		<div>
		<a href="javascript:selectzip('<%=zipDto.getZiq1()%>','<%=zipDto.getZiq2()%>','<%=zipDto.getSido()%><%=zipDto.getGugun()%><%=zipDto.getDong()%>');">
		<%=zipDto.getZiq1()%>-<%=zipDto.getZiq2()%>
		<%=zipDto.getSido()%><%=zipDto.getGugun()%><%=zipDto.getDong()%><%=zipDto.getBunji()%>
		</a>
		</div>
	<%}
	} else {
	%>	
		<div>
		�˻��Ͻ� <%=dong%>�� �����ϴ�.
		�ٸ� ������ �˻��� �ּ���
		</div>
<%
	}
}
%>
	</div>
</div>
</form>
</body>
</html>