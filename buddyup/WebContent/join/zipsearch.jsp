<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.List, com.kitri.member.model.ZipDto"%>
    
    <%
    String root = request.getContextPath();
    String dong = (String)request.getAttribute("sdong"); //받을 때 오브젝트를 받으므로 스트링으로 형변환해서 받느다.
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>우편번호검색</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript">
function zipsearch(){
	
	if(document.zip.dong.value == ""){
			alert("동을 입려해주세요");
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
		<h4>우편번호검색</h4>
		<hr />
		<div class="form-inline" style="margin-bottom:5px">
			<label style="width:80px">주소입력</label>
			<input id="dong" name="dong" type="text" class="form-control" placeholder="동을 입력하세요." onkeypress="javascript:if(event.keyCode == 13) {idcheck();}"/>
			<input type="button" class="btn btn-success" value="검색" onclick = "javascript:zipsearch();"/>
		</div>
		<hr />
<%
if(dong == null){
%>
		<div>
		검색 하실 동을 정확히 입력하세요
		예) 삼성,역삼
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
		검색하신 <%=dong%>은 없습니다.
		다른 동으로 검색해 주세요
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