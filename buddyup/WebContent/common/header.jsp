<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"
	import="com.kitri.member.model.MemberDto,com.kitri.member.model.MemberDetailDto,com.kitri.util.PageMove"%>
<%
	String root = request.getContextPath();
	/*  MemberDto memberDto = (MemberDto) session.getAttribute("userInfo"); */
	MemberDto memberDto = new MemberDto();
%>

<!DOCTYPE html>
<html lang="EUC-KR">


<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- 달력 링크 -->
<link rel="stylesheet"
	href="http://www.blueb.co.kr/SRC2/rangecalendar/css/normalize.css">
<link rel="stylesheet"
	href="http://www.blueb.co.kr/SRC2/rangecalendar/css/style.css">
<link
	href='https://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,100,100italic'
	rel='stylesheet' type='text/css'>
	
<!-- /#c -->
		<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<script src="http://www.blueb.co.kr/SRC2/rangecalendar/js/index.js"></script>
<!--  -->


<script type="text/javascript">
	
	
	
	function movemove() {
		document.location.href="<%=root%>/MakePlan/Newpaln.jsp";
	}
</script>
<title>메인</title>

<!-- css -->
<link href="<%=root%>/res/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="<%=root%>/res/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="<%=root%>/res/css/nivo-lightbox.css" rel="stylesheet" />
<link href="<%=root%>/res/css/nivo-lightbox-theme/default/default.css"
	rel="stylesheet" type="text/css" />
<link href="<%=root%>/res/css/owl.carousel.css" rel="stylesheet"
	media="screen" />
<link href="<%=root%>/res/css/owl.theme.css" rel="stylesheet"
	media="screen" />
<link href="<%=root%>/res/css/flexslider.css" rel="stylesheet" />
<link href="<%=root%>/res/css/animate.css" rel="stylesheet" />
<link href="<%=root%>/res/css/style.css" rel="stylesheet">
<link href="<%=root%>/res/color/default.css" rel="stylesheet">

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
	<div id="navigation">
		<nav class="navbar navbar-custom" role="navigation">
			<div class="container">
				<div class="row">
					<div class="col-md-2 mob-logo">
						<div class="row">
							<div class="site-logo">
								<!--로고 이미지 넣기-->
								<a href="<%=root%>/index.jsp"><img
									src="<%=root%>/res/img/logo.png" alt="" /></a>
							</div>
						</div>
					</div>


					<div class="col-md-10 mob-menu">
						<div class="row">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse" data-target="#menu">
									<i class="fa fa-bars"></i>
								</button>
							</div>
							<!-- Collect the nav links, forms, and other content for toggling -->
							<div class="collapse navbar-collapse" id="menu">
								<ul class="nav navbar-nav navbar-right">

									<%
										if (memberDto != null) {
									%>


									<li class="active"><a data-toggle="modal" data-target="#plan">plan</a></li>
									<div class="modal fade" id="plan" role="dialog">
										<div class="modal-dialog modal-lg">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h4 class="modal-title">Modal Header</h4>
												</div>
												<div class="modal-body">
													<p>This is a large modal.</p>

													<div id="c">
														<h1>
															<b>여행 일정</b>
														</h1>

														<!--<input type="text" class="date">-->

														<div id="calHelp">
															<div class="first active">
																<i style="width:35px; height:35px;">시작일</i> <b id="sel1text"></b>
															</div>
															<div class="disabled">
																<i style="width:35px; height:35px;">종료일</i> <b id="sel2text"></b>
															</div>
														</div>
														<div id="disp">
															<div id="prev" class="nav">←</div>
															<div id="month">Hello wold</div>
															<div id="next" class="nav">→</div>
														</div>
														<div id="cal"></div>


													</div>
													

												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn" id="mv"
														onclick="javascript:movemove();">이동</button>

												</div>
											</div>
										</div>
									</div>








									<li><a href="#myplan">MyPlan</a></li>
									<li><a href="#mypage">MyPage</a></li>
									<li><a href="">Community</a></li>
									<li><a href="">Help</a></li>
									<%
										} else {
									%>
									<li class="active"><a href="<%=root%>/user?act=mvlogin">Login</a></li>
									<li><a href="<%=root%>/user?act=mvjoin">Joinus</a></li>
									<li><a href="/ksh/test.jsp">Help</a></li>
									<li><a href="#works">Community</a></li>
									<%
										}
									%>
								</ul>
							</div>
							<!-- /.Navbar-collapse -->
						</div>
					</div>
				</div>
			</div>

			<!-- /.container -->
			<%
				if (memberDto != null) {
			%>
			<b><%=memberDto.getName()%>(<a
				href="mailto:<%=memberDto.getEmail1()%>@<%=memberDto.getEmail2()%>"><%=memberDto.getId()%></a>)</b>님
			안녕하세요. <a href="<%=root%>/user?act=logout">로그아웃</a>
			<%
				}
			%>
		</nav>
	</div>
	<!-- /Navigation -->