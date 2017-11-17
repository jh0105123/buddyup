<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.kitri.member.model.MemberDto,com.kitri.member.model.MemberDetailDto,com.kitri.util.PageMove"%>
    <%
    String root = request.getContextPath();
    MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
    %>
<!DOCTYPE html>
<html lang="EUC-KR">

<head>
  <meta charset="EUC-KR">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>����</title>

  <!-- css -->
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="css/nivo-lightbox.css" rel="stylesheet" />
  <link href="css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
  <link href="css/owl.carousel.css" rel="stylesheet" media="screen" />
  <link href="css/owl.theme.css" rel="stylesheet" media="screen" />
  <link href="css/flexslider.css" rel="stylesheet" />
  <link href="css/animate.css" rel="stylesheet" />
  <link href="css/style.css" rel="stylesheet">
  <link href="color/default.css" rel="stylesheet">

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">

  <!-- page loader -->
  <div id="page-loader">
    <div class="loader">
      <div class="spinner">
        <div class="spinner-container con1">
          <div class="circle1"></div>
          <div class="circle2"></div>
          <div class="circle3"></div>
          <div class="circle4"></div>
        </div>
        <div class="spinner-container con2">
          <div class="circle1"></div>
          <div class="circle2"></div>
          <div class="circle3"></div>
          <div class="circle4"></div>
        </div>
        <div class="spinner-container con3">
          <div class="circle1"></div>
          <div class="circle2"></div>
          <div class="circle3"></div>
          <div class="circle4"></div>
        </div>
      </div>
    </div>
  </div>
  <!-- /page loader -->

  <!-- Navigation -->
  <div id="navigation" style="text-align: right; padding-right: 100px;">
    <nav class="navbar navbar-custom" role="navigation">
      <div class="container">
        <div class="row">
          <div class="col-md-2 mob-logo">
            <div class="row">
              <div class="site-logo">
			  <!--�ΰ� �̹��� �ֱ�-->
                <a href="index.html"><img src="img/logo.png" alt="" /></a>
              </div>
            </div>
          </div>


          <div class="col-md-10 mob-menu">
            <div class="row">
              <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
                                                <i class="fa fa-bars"></i>
                                                </button>
              </div>
              <!-- Collect the nav links, forms, and other content for toggling -->
              <div class="collapse navbar-collapse" id="menu">
                <ul class="nav navbar-nav navbar-right">
                <%
      				if(memberDto !=null){
     		 	%>
     		 	    <li><a href="">Plan</a></li> 
                  <li> <a href="">MyPlan</a></li>
				  <li><a href="">MyPage</a></li>
                  <li><a href="">Community</a></li>
                  <li><a href="">Help</a></li>
     		 	<%}else{ %>
                  <li><a href="<%=root %>/user?act=mvlogin">Login</a></li> 
                  <li> <a href="<%=root %>/user?act=mvjoin">Joinus</a></li>
				  <li><a href="#service">Help</a></li>
                  <li><a href="#works">Community</a></li>
                  <%} %>
                </ul>
              </div>
              <!-- /.Navbar-collapse -->
            </div>
          </div>
        </div>
      </div>
      <!-- /.container -->
      	<%
      		if(memberDto !=null){
      	%>
      		<b><%=memberDto.getName() %>(<a href="mailto:<%=memberDto.getEmail1() %>@<%=memberDto.getEmail2() %>"><%=memberDto.getId() %></a>)</b>�� �ȳ��ϼ���.
      	<a href="<%=root%>/user?act=logout">�α׾ƿ�</a>
      	<%} %>
    </nav>
  </div>
  <!-- /Navigation -->