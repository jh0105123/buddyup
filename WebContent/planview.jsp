<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">


<!-- Custom styles for this template -->
<link href="css/resume.css" rel="stylesheet">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
<script src="https://use.fontawesome.com/a43d94933d.js"></script>


<script src="https://s.codepen.io/assets/libs/modernizr.js"
	type="text/javascript"></script>

<link href='https://fonts.googleapis.com/css?family=Karla:400,700'
	rel='stylesheet' type='text/css'>

<script
	src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.15.0/utils/Draggable.min.js'></script>


<div id="page-top">
	<!-- 작은메뉴 -->
	<div class="menu-block menu-small"
		style="position: fixed; left: 30px; top: 30px; width: 50px; height: 50px;">
		<div class="bar">
			<div class="bar-i bar-1"></div>
			<div class="bar-i bar-2"></div>
			<div class="bar-i bar-3"></div>
		</div>
		<ul>
			<div class="menu">
				<ul>
					<li class="page_item page-item-2 js-scroll-trigger "><a
						href="#">BuddyUP</a></li>
					<li
						class="page_item page-item-21 current_page_item nav-link js-scroll-trigger "><a
						href="#Experience">Cal&Map</a></li>
					<li class="page_item page-item-14"><a href="#">Day Choose</a></li>
					<li class="page_item page-item-33"><a href="#">Other Plan</a></li>
				</ul>
			</div>
		</ul>
	</div>

	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.15.0/TweenMax.min.js'></script>
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.15.0/jquery.gsap.min.js'></script>

	<script src="js/index.js"></script>
<!-- 전체 화면분할 2:10 -->
	<div class="row">

		<div class="col-md-2" >
<!-- 네비바 -->
			<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top"
				id="sideNav" style="margin-bottom: 80px; ">
				<link rel="stylesheet" href="css/style.css">


				<div class="menu">
					<div class="mx-auto mb-2 d-lg-block d-none"  style="position:absolute; top:20px; display:block; width:100%;">
						<p class="heart_eye  d-lg-block">
							<i class="fa fa-heart fa-1x"></i> + 278 &nbsp <i
								class="fa fa-eye fa-1x"></i>+ 982
						</p>
					</div>



					<a class="navbar-brand js-scroll-trigger" data-toggle="modal"
						data-target="#myModal"> <span class=" d-lg-block d-none">
							<img
							class="img-fluid img-profile rounded-circle mx-auto mb-2 d-lg-block d-none"
							src="img/profile.jpg" style="position:absolute; top:50px; display:block; width:100%; margin-left:10px !important; margin-right:10px;" alt="">
					</span>

					</a>


					<!-- Modal -->
					<div class="modal fade" id="myModal" role="dialog" style="z-index:0;">
						<div class="modal-dialog modal-lg" style="index-z: 0;">

							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title korean">전체 플랜보기</h4>
								</div>
								<div class="modal-body">
									<div class="row col-md-4"
										style="margin: 10px; padding: 10px; border: 1px solid rgb(204, 204, 204);">
										<img style="border-image: none; width: 100%" src="img/map.JPG">
										<div class="row col-md-12" style="max-width: none;">제주도
											2박 3일</div>
										<div class=" row col-md-12 heart_eye  d-lg-block"
											style="color: black; padding-left: 15px; max-width: none; text-align: left;">

											<i class="fa fa-heart fa-1x"></i> + 278 &nbsp 
											<i class="fa fa-eye fa-1x"></i>+ 982
										</div>

										<div class=" row col-md-12   d-lg-block"
											style="color: black; max-width: none; text-align:right; ">
											&lt;아이디&gt;</div>


									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
								</div>
							</div>

						</div>
					</div>

					<div class=" navId d-lg-block d-none" style="position:absolute; top:240px; display:block; width:100%;" > 아이디 <a> <i
							class="fa fa-plane fa-1x"></i>
					</a>
					</div>


					<div class="mx-auto mb-2 d-lg-block d-none">
						<a class="title js-scroll-trigger" href="#about" style="position:absolute; top:270px; display:block; width:100%;">PLAN-TITLE</a>
					</div>


					<div class="collapse navbar-collapse" id="navbarSupportedContent">

						<ul class="navbar-nav " style="position:absolute; top:290px; display:block; width:100%;">

							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="#experience">DAY1</a></li>
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="#education">DAY2</a></li>
							<li class="nav-item"><a class="nav-link js-scroll-trigger"
								href="#skills">DAY3</a></li>
						</ul>
					</div>



					<div class="mx-auto mb-2 d-lg-block d-none" style="position:absolute; top:440px; display:block; width:100%;">
						<i class="fa fa-arrow-down fa-2x" style="color: white;"
							aria-hidden="true"></i>
					</div>
					<div>
						
						<button class="btn default nav-item" style="position:absolute; top:490px; display:block; width:65%; margin-left:35px; margin-right:35px;">BUDDYUP!</button>
						
					</div>




				</div>
			</nav>
		</div>

		<div class="col-md-10"">

			<section class="resume-section" id="about">
				<div class="my-auto" id="title">
					<h2 style="margin-bottom: 48px; margin-top: 48px;">
						SUMMARY <span class="text-primary">MAP&CAL</span>
					</h2>

					<!-- small title -->
					<div class="row col-md-12">
						<h3 class="korean"
							style="margin-left: 50px; margin-bottom: 30px; border-bottom: 1px solid #f1f3f6;">
							<i class="fa fa-plane fa-1x"></i> 홍콩으로 2박 3일 GOGO
						</h3>
					</div>




					<div class="row">
						<div class="col-md-6">
							<img
								style="padding: 20px; border: 1px solid rgb(204, 204, 204); border-image: none; width: 98%"
								src="img/map.JPG">
						</div>
						<div class="col-md-6">
							<img
								style="padding: 20px; border: 1px solid rgb(204, 204, 204); border-image: none; width: 98%"
								src="img/map.JPG">
						</div>
					</div>





					<ul class="list-inline list-social-icons mb-0">
						<li class="list-inline-item"><a href="#"> </a></li>
				</div>
			</section>

			<section class="resume-section p-3 p-lg-5 d-flex flex-column"
				id="experience">
				<div class="my-auto" id="title">
					<h2 style="margin-bottom: 48px; margin-top: 48px;">
						<span class="text-primary">DAY1</span>(2017.11.24)
					</h2>




					<div class="row col-md-12 ">
						<h3 class="korean"
							style="margin-left: 50px; margin-bottom: 30px; border-bottom: 1px solid #f1f3f6;">
							<i class="fa fa-plane fa-1x"></i> 홍콩으로 2박 3일 GOGO
						</h3>

					</div>


					<div class="row col-md-6 container">
						<table class="table">
							<thead>
								<tr>
									<th colspan="2">DAY1</th>
									<th colspan="2">71,000원</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="4">부대찌개>>소호거리>>에그타르트>>동물원</td>
								</tr>
								<tr style="background-color: #b3f2d8;">
									<td>번호</td>
									<td>장소</td>
									<td>메모</td>
									<td>가격</td>
								</tr>

								<tr>
									<td>1</td>
									<td>부대찌개</td>
									<td>점심</td>
									<td>2,0000</td>
								</tr>

								<tr>
									<td>2</td>
									<td>소호거리</td>
									<td>쇼핑</td>
									<td>4,0000</td>
								</tr>

								<tr>
									<td>3</td>
									<td>에그타르트</td>
									<td>간식</td>
									<td>1,1000</td>
								</tr>



							</tbody>
						</table>
					</div>
				</div>
			</section>

			<section class="resume-section p-3 p-lg-5 d-flex flex-column"
				id="education">
				<div class="my-auto">
					<h2 class="mb-5">Education</h2>

					<div class="resume-item d-flex flex-column flex-md-row mb-5">
						<div class="resume-content mr-auto">
							<h3 class="mb-0">University of Colorado Boulder</h3>
							<div class="subheading mb-3">Bachelor of Science</div>
							<div>Computer Science - Web Development Track</div>
							<p>GPA: 3.23</p>
						</div>
						<div class="resume-date text-md-right">
							<span class="text-primary">August 2006 - May 2010</span>
						</div>
					</div>

					<div class="resume-item d-flex flex-column flex-md-row">
						<div class="resume-content mr-auto">
							<h3 class="mb-0">James Buchanan High School</h3>
							<div class="subheading mb-3">Technology Magnet Program</div>
							<p>GPA: 3.56</p>
						</div>
						<div class="resume-date text-md-right">
							<span class="text-primary">August 2002 - May 2006</span>
						</div>
					</div>

				</div>
			</section>

			<section class="resume-section p-3 p-lg-5 d-flex flex-column"
				id="skills">
				<div class="my-auto">
					<h2 class="mb-5">Skills</h2>

					<div class="subheading mb-3">Programming Languages &amp;
						Tools</div>
					<ul class="list-inline list-icons">
						<li class="list-inline-item"><i
							class="devicons devicons-html5"></i></li>
						<li class="list-inline-item"><i
							class="devicons devicons-css3"></i></li>
						<li class="list-inline-item"><i
							class="devicons devicons-javascript"></i></li>
						<li class="list-inline-item"><i
							class="devicons devicons-jquery"></i></li>
						<li class="list-inline-item"><i
							class="devicons devicons-sass"></i></li>
						<li class="list-inline-item"><i
							class="devicons devicons-less"></i></li>
						<li class="list-inline-item"><i
							class="devicons devicons-bootstrap"></i></li>
						<li class="list-inline-item"><i
							class="devicons devicons-wordpress"></i></li>
						<li class="list-inline-item"><i
							class="devicons devicons-grunt"></i></li>
						<li class="list-inline-item"><i
							class="devicons devicons-gulp"></i></li>
						<li class="list-inline-item"><i class="devicons devicons-npm"></i>
						</li>
					</ul>

					<div class="subheading mb-3">Workflow</div>
					<ul class="fa-ul mb-0">
						<li><i class="fa-li fa fa-check"></i> Mobile-First,
							Responsive Design</li>
						<li><i class="fa-li fa fa-check"></i> Cross Browser Testing
							&amp; Debugging</li>
						<li><i class="fa-li fa fa-check"></i> Cross Functional Teams</li>
						<li><i class="fa-li fa fa-check"></i> Agile Development &amp;
							Scrum</li>
					</ul>
				</div>
			</section>




			<!-- Bootstrap core JavaScript -->
			<script src="vendor/jquery/jquery.js"></script>
			<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

			<!-- Plugin JavaScript-->
			<script src="vendor/jquery-easing/jquery.easing.js"></script>

			<!-- Custom scripts for this template -->
			<script src="js/resume.js"></script>



		</div>
	</div>

	</html>