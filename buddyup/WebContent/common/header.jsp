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

  <title>메인</title>

<!--  
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/gmap.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.appear.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easing.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.fitvids.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.flexslider-min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.mb.YTPlayer.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.nicescroll.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.scrollTo.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.sticky.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/morphext.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/nivo-lightbox.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/stellar.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/waypoints.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/wow.min.js"></script>
           
            
             
             -->

  <!-- css -->
	

  <link href="<%=root %>/resource/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="<%=root %>/resource/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="<%=root %>/resource/css/nivo-lightbox.css" rel="stylesheet" />
  <link href="<%=root %>/resource/css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
  <link href="<%=root %>/resource/css/owl.carousel.css" rel="stylesheet" media="screen" />
  <link href="<%=root %>/resource/css/owl.theme.css" rel="stylesheet" media="screen" />
  <link href="<%=root%>/resource/css/flexslider.css" rel="stylesheet" />
  <link href="<%=root %>/resource/css/animate.css" rel="stylesheet" />
  <link href="<%=root %>/resource/css/style.css" rel="stylesheet">
  <link href="<%=root %>/resource/color/default.css" rel="stylesheet">

	




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
			  <!--로고 이미지 넣기-->
                <a href="<%=root %>/index.jsp"><img src="<%=root %>/img/logo.png" alt="" /></a>
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
				  <li><a href="/ksh/test.jsp">Help</a></li>
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
      		<b><%=memberDto.getName() %>(<a href="mailto:<%=memberDto.getEmail1() %>@<%=memberDto.getEmail2() %>"><%=memberDto.getId() %></a>)</b>님 안녕하세요.
      	<a href="<%=root%>/user?act=logout">로그아웃</a>
      	<%} %>
    </nav>
  </div>
  <!-- /Navigation -->