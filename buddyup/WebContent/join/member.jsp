<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/common/header.jsp" %>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script type="text/javascript">
	function register(){
		//var name = document.memberform.name.value;
		//alert(name);
		if(document.memberform.name.value == ""){
			alert("이름을 입력하세요!!!");
			return;
		}else if(document.memberform.id.value == ""){
			alert("아이디를 입력하세요!!!");
			return;
		}else if(document.memberform.pass.value == ""){
			alert("비밀번호를 입력하세요!!!");
			return;
		}else if(document.memberform.pass.value != document.memberform.pass.value){
			alert("비밀번호를 확인하세요!!!");
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
            <h3>회원가입</h3>
            <hr/>
        
            <div class=form-inline style="margin-bottom:5px">
                <label style="width:150px">이름</label>
                <input id="name" name="name" type="text" class="form-control"/>
            </div>
            
            <div class=form-inline style="margin-bottom:5px">
                <label style="width:150px">아이디</label>
                <input id="id" name="id" type="text" class="form-control" readonly ="readonly"/>
                <input type="button" class="btn btn-primary" value="중복체크" onclick = "javascript:openidck();"/>
            </div>
    
            <div class=form-inline style="margin-bottom:5px">
                <label style="width:150px">비밀번호</label>
                <input id="pass" name="pass" type="password" class="form-control"/>
                <div style="margin-bottom:5px"></div>
                <label style="width:154px"></label>
                <input id="passok" name="passok" type="password" class="form-control" style="margin-right:5px"/>확인을 위해 한번 더 입력해 주세요.
            </div>
            
            <div class=form-inline style="margin-bottom:5px">
                <label style="width:150px">이메일</label>
                <input id="email1" name="email1" style="width:120px; margin-right:5px" type="text" class="form-control"/>@
                <select id="email2" name="email2" class="form-control">
                	<option value="naver.com">네이버</option>
                	<option value="nate.com">네이트</option>
                	<option value="daum.net">다음</option>
                	<option value="kitri.com">키트리</option>
                </select>
                <p><label style="width:154px"></label>영문으로 시작하는 4~10자리의 영문, 숫자 조합만 가능합니다.</p>
            </div>
            
            
            
            <div class=form-inline style="margin-bottom:5px">
                <label style="width:150px">전화번호</label>
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
                <label style="width:150px">우편번호</label>
                <input id="zip1" name="zip1" style="width:80px; margin-right:5px" type="text" class="form-control" readonly="readonly"/>
                -
                <input id="zip2" name="zip2" style="width:80px; margin-right:5px" type="text" class="form-control" readonly="readonly"/>
                <input type="button" class="btn btn-default" value="검색" onclick = "javascript:openzip();"/>
            </div>
            
            <div class=form-inline style="margin-bottom:5px">
                <label style="width:150px">주소</label>
                <input id="addr1" name="addr1" style="width:170px; margin-right:5px" type="text" class="form-control" readonly="readonly"/>
                <input id="addr2" name="addr2" style="width:250px; margin-right:5px" type="text" class="form-control" />
            </div>
            
            
            <hr />
            
            <div align="center"><input type="button" class="btn btn-success" value="회원가입" onclick="javascript:register();"/></div>
        </div>
    </div>
    </form>
    </section>
<%@ include file="/common/footer.jsp" %>