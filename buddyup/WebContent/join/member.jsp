<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/common/header.jsp" %>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script type="text/javascript">
	function register(){
		//var name = document.memberform.name.value;
		//alert(name);
		if(document.memberform.name.value == ""){
			alert("�̸��� �Է��ϼ���!!!");
			return;
		}else if(document.memberform.id.value == ""){
			alert("���̵� �Է��ϼ���!!!");
			return;
		}else if(document.memberform.pass.value == ""){
			alert("��й�ȣ�� �Է��ϼ���!!!");
			return;
		}else if(document.memberform.pass.value != document.memberform.pass.value){
			alert("��й�ȣ�� Ȯ���ϼ���!!!");
			return;
		}else{
			document.memberform.action = "<%=root%>/user";
			document.memberform.submit();
		}
	}
	
	function openidck(){
		window.open("<%=root%>/user?act=mvidck","idck","width=500,height=300,top=200,left=200,location=no,status=no,titlebar=no,toolbar=no,resizable=no,scrollbars=no");
	}
	function openzip(){
		window.open("<%=root%>/user?act=mvzip","zip","width=500,height=300,top=200,left=200,location=no,status=no,titlebar=no,toolbar=no,resizable=no,scrollbars=yes");
	}
	</script>
	<section id="works" class="home-section color-dark text-center bg-white">
	<form name="memberform" method="post" action="">
	<input type ="hidden" id ="act" name="act" value="register">
    <div class="container" align="center">
        <div align="left" style="width:650px; border:1px solid #cccccc; padding:20px">
            <h3>ȸ������</h3>
            <hr/>
        
            <div class=form-inline style="margin-bottom:5px">
                <label style="width:150px">�̸�</label>
                <input id="name" name="name" type="text" class="form-control"/>
            </div>
            
            <div class=form-inline style="margin-bottom:5px">
                <label style="width:150px">���̵�</label>
                <input id="id" name="id" type="text" class="form-control" readonly ="readonly"/>
                <input type="button" class="btn btn-primary" value="�ߺ�üũ" onclick = "javascript:openidck();"/>
            </div>
    
            <div class=form-inline style="margin-bottom:5px">
                <label style="width:150px">��й�ȣ</label>
                <input id="pass" name="pass" type="password" class="form-control"/>
                <div style="margin-bottom:5px"></div>
                <label style="width:154px"></label>
                <input id="passok" name="passok" type="password" class="form-control" style="margin-right:5px"/>Ȯ���� ���� �ѹ� �� �Է��� �ּ���.
            </div>
            
            <div class=form-inline style="margin-bottom:5px">
                <label style="width:150px">�̸���</label>
                <input id="email1" name="email1" style="width:120px; margin-right:5px" type="text" class="form-control"/>@
                <select id="email2" name="email2" class="form-control">
                	<option value="naver.com">���̹�</option>
                	<option value="nate.com">����Ʈ</option>
                	<option value="daum.net">����</option>
                	<option value="kitri.com">ŰƮ��</option>
                </select>
                <p><label style="width:154px"></label>�������� �����ϴ� 4~10�ڸ��� ����, ���� ���ո� �����մϴ�.</p>
            </div>
            
            
            
            <div class=form-inline style="margin-bottom:5px">
                <label style="width:150px">��ȭ��ȣ</label>
                <select id="tel1" name="tel1" class="form-control">
                    <option>010</option>
                    <option>011</option>
                    <option>016</option>
                    <option>017</option>
                </select>
                <input id="tel2" name="tel2" style="width:70px; margin-right:5px" type="text" class="form-control" />-
                <input id="tel3" name="tel3" style="width:70px; margin-right:5px" type="text" class="form-control"/>
            </div>
            

            <div class=form-inline style="margin-bottom:5px">
                <label style="width:150px">�����ȣ</label>
                <input id="zip1" name="zip1" style="width:80px; margin-right:5px" type="text" class="form-control" readonly="readonly"/>
                -
                <input id="zip2" name="zip2" style="width:80px; margin-right:5px" type="text" class="form-control" readonly="readonly"/>
                <input type="button" class="btn btn-default" value="�˻�" onclick = "javascript:openzip();"/>
            </div>
            
            <div class=form-inline style="margin-bottom:5px">
                <label style="width:150px">�ּ�</label>
                <input id="addr1" name="addr1" style="width:170px; margin-right:5px" type="text" class="form-control" readonly="readonly"/>
                <input id="addr2" name="addr2" style="width:250px; margin-right:5px" type="text" class="form-control" />
            </div>
            
            
            <hr />
            
            <div align="center"><input type="button" class="btn btn-success" value="ȸ������" onclick="javascript:register();"/></div>
        </div>
    </div>
    </form>
    </section>
<%@ include file="/common/footer.jsp" %>