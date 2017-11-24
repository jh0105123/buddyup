<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="/common/header.jsp" %>

<%

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




<style rel="stylesheet">

@import url(https://fonts.googleapis.com/css?family=Lato:400,700);
* {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body .container12 {
  font-family: 'Lato', sans-serif;
  background-color: #f8f8f8;
}
body .container12 {
  position: relative;
  overflow: hidden;
  width: 800px;
  height: 700px;
  margin: 80px auto 0;
  background-color: #ffffff;
  -moz-box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
  -webkit-box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
  box-shadow: rgba(0, 0, 0, 0.1) 0px 10px 30px;
}
body .container12 .half {
  float: left;
  width: 50%;
  height: 100%;
  padding: 58px 40px 0;
}
body .container12 .half.bg {
  background-image: url("http://www.blueb.co.kr/SRC2/_image/v01.jpg");
  background-size: 600px;
  background-repeat: no-repeat;
}
body .container12 h1 {
  font-size: 18px;
  font-weight: 700;
  margin-bottom: 23px;
  text-align: center;
  text-indent: 6px;
  letter-spacing: 7px;
  text-transform: uppercase;
  color: #263238;
}
body .container12 .tabs {
  width: 100%;
  margin-bottom: 29px;
  border-bottom: 1px solid #d9d9d9;
}
body .container12 .tabs .tab {
  display: inline-block;
  margin-bottom: -1px;
  padding: 20px 15px 10px;
  cursor: pointer;
  letter-spacing: 0;
  border-bottom: 1px solid #d9d9d9;
  -moz-user-select: -moz-none;
  -ms-user-select: none;
  -webkit-user-select: none;
  user-select: none;
  transition: all 0.1s ease-in-out;
}
body .container12 .tabs .tab a {
  font-size: 11px;
  text-decoration: none;
  text-transform: uppercase;
  color: #d9d9d9;
  transition: all 0.1s ease-in-out;
}
body .container12 .tabs .tab.active a, body .container12 .tabs .tab:hover a {
  color: #263238;
}
body .container12 .tabs .tab.active {
  border-bottom: 1px solid #263238;
}
body .container12 .content12 .loginform {
  position: relative;
  height: 287px;
}
body .container12 .content12 .memberform {
  position: relative;
  height: 500px;
}


body .container12 .content12 label:first-of-type, body .container12 .content12 input:first-of-type, body .container12 .content12 .more:first-of-type {
  -moz-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
  -webkit-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
  animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .container12 .conten2 label:nth-of-type(2), body .containe2 .content12 input:nth-of-type(2), body .container12 .content12 .more:nth-of-type(2) {
  -moz-animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
  -webkit-animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
  animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .container12 .content12 label:nth-of-type(3), body .container12 .content12 input:nth-of-type(3), body .container12 .content12 .more:nth-of-type(3) {
  -moz-animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
  -webkit-animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
  animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
}
body .container12 .content12 label {
  font-size: 12px;
  color: #263238;
  -moz-user-select: -moz-none;
  -ms-user-select: none;
  -webkit-user-select: none;
  user-select: none;
}
body .container12 .content12 label:not([for='remember']) {
  display: none;
}
body .container12 .content12 input.inpt {
  font-size: 14px;
  display: block;
  width: 100%;
  height: 42px;
  margin-bottom: 12px;
  padding: 16px 13px;
  color: #999999;
  border: 1px solid #d9d9d9;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
}
body .container12 .content12 input.inpt::-webkit-input-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}
body .container12 .content12 input.inpt:-moz-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}
body .container12 .content12 input.inpt::-moz-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}
body .container12 .content12 input.inpt:-ms-input-placeholder {
  font-size: 14px;
  color: #999999;
  font-family: 'Lato', sans-serif;
}
body .container12 .content12 input.inpt:focus {
  border-color: #999999;
}
body .container12 .content12 input.submit {
  font-size: 12px;
  line-height: 42px;
  display: block;
  width: 100%;
  height: 42px;
  cursor: pointer;
  vertical-align: middle;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: #263238;
  border: 1px solid #263238;
  background: transparent;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
}
body .container12 .content12 input.submit:hover {
  background-color: #263238;
  color: #ffffff;
  -moz-transition: all 0.2s;
  -o-transition: all 0.2s;
  -webkit-transition: all 0.2s;
  transition: all 0.2s;
}
body .container12 .content12 input:focus {
  outline: none;
}


body .container12 .content12 .submit-wrap {
  position: absolute;
  bottom: 0;
  width: 100%;
}
body .container12 .content12 .submit-wrap a {
  font-size: 12px;
  display: block;
  margin-top: 20px;
  text-align: center;
  text-decoration: none;
  color: #999999;
}
body .container12 .content12 .submit-wrap a:hover {
  text-decoration: underline;
}
body .container12 .content12 .signup-cont {
  display: none;
}

@keyframes slideIn {
  0% {
    filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
    opacity: 0;
    margin-left: -320px;
  }
  100% {
    filter: progid:DXImageTransform.Microsoft.Alpha(enabled=false);
    opacity: 1;
    margin-left: 0px;
  }
}
@-webkit-keyframes slideIn {
  0% {
    filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
    opacity: 0;
    margin-left: -320px;
  }
  100% {
    filter: progid:DXImageTransform.Microsoft.Alpha(enabled=false);
    opacity: 1;
    margin-left: 0px;
  }
}
.credits {
  display: block;
  position: absolute;
  right: 0;
  bottom: 0;
  color: #999999;
  font-size: 14px;
  margin: 0 10px 10px 0;
}
.credits a {
  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=80);
  opacity: 0.8;
  color: inherit;
  font-weight: 700;
  text-decoration: none;
}

</style>

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
	

	
	

</script>
<section id="works" class="home-section color-dark text-center bg-white">
<section class="container12">
		    <article class="half">
			        <h1>LOGIN</h1>
			        <div class="tabs form-inline">
				            <span class="tab signin active"><a href="#signin">Sign in</a></span>
				            <span class="tab signup"><a href="#signup">Sign up</a></span>
			        </div>
			        <div class="content12 form-inline">
				            <div class="signin-cont cont form-inline">
					                <form name="loginform" class="loginform"action="" method="post" >
					                	<input type="hidden"  id="act" name ="act" value = "login">
						                    <input type="text" name="id" id="id" class="inpt"  placeholder="Your id">
						                    <label for="id">Your id</label>
						                    <input type="password" name="pass" id="pass" class="inpt"  placeholder="Your password">
                						    <label>Your password</label>
						                    <input type="checkbox" id="idsv" class="checkbox" value="saveid" <%=checkid%>>
						                    <label for="remember">Remember me</label>
						                     
						                    <div class="submit-wrap">
							                       <input type="button" value="Sign in" class="submit" onclick="javascript:login()"/>
							                        <a href="#" class="more">Forgot your password?</a>
						                    </div>
        					        </form>
    				        </div>
    				        
    				        <div class="signup-cont cont form-inline">
             					   <form name="memberform" class="memberform" action="" method="post" enctype="multipart/form-data">
             					   		<input type="hidden"  id="act" name ="act" value = "register">
						                    <input type="text" name="id" id="id" class="inpt" required="required" placeholder="아이디를 입력하세요">
						                    <label for="name">Your id</label>
                  							 <input type="email" name="name" id="name" class="inpt" required="required" placeholder="이름을 입력하세요">
						                    <label for="email">Your name</label>
						                    <input type="password" name="password" id="password" class="inpt" required="required" placeholder="비밀번호를 입력하세요">
                						    <label for="password">Your password</label>
                						    <input type="password" name="passwordok" id="passwordok" class="inpt" required="required" placeholder="비밀번호를 입력하세요">
                						    <label for="passwordok">Your password</label>
						                    <input type="text" name="gender" id="gender" class="inpt" required="required" placeholder="생년월일 입력">
                						    <label for="password">Your password</label>
						                
                							 <input id="email1" name="email1" style="width:200px; margin-right:5px; float: left; " type="text" class="inpt" required="required"> @ 
                							<select id="email2" name="email2" style="height: 40px; width: 95px;">
                							<option value="naver.com">네이버</option>
                							<option value="nate.com">네이트</option>
                							<option value="daum.net">다음</option>
                							<option value="gmail.com">구글</option>
                							</select>
                							<label style="width:200px">이메일</label>
						                  
						                   <div class="submit-wrap form-inline">
							                        <input type="button" value="Sign up" class="submit" onclick=""/>
							                        <a href="#" class="more">Terms and conditions</a>
						                    </div>
        					        </form>
            
            							 
            </div>
			        </div>
		    </article>
		    <div class="half bg form-inline"></div>
	</section>
</section>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script type="text/javascript">


$('.tabs .tab').click(function(){
    if ($(this).hasClass('signin')) {
        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');
        $('.cont').hide();
        $('.signin-cont').show();
    } 
    if ($(this).hasClass('signup')) {
        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');
        $('.cont').hide();
        $('.signup-cont').show();
    }
});
$('.container12 .bg').mousemove(function(e){
    var amountMovedX = (e.pageX * -1 / 30);
    var amountMovedY = (e.pageY * -1 / 9);
    $(this).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px');
});
</script>
<%@ include file="/common/footer.jsp" %>