<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/search.css">

<!-- 부트스트랩 -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<div class="row"  style="margin:20px; margin-bottom:30px;">
  <span class=" col-md-6 wrap"  style="margin-top:15px; ">
   <span class="search" >
      <input type="text" class="searchTerm" placeholder="검색어를 입력해주세요!!"" style="margin-right:10px; margin-left:20px;">
      <button type="submit" class="searchButton">
        <i class="fa fa-search"></i>
     </button>
   </span>
</span>
<!-- 선택버튼 -->
<div class="container" >

<!-- 나이선택 -->	
	<span class="dropdown">
   <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" style="margin:15px 10px 15px 10px;">나이
   <span class="caret"></span></button>
   <ul class="dropdown-menu" style="margin-top:10px;">
      <li><a href="#">10대</a></li>
            <li class="divider"></li>
      <li><a href="#">20대</a></li>
            <li class="divider"></li>
      <li><a href="#">30대</a></li>
            <li class="divider"></li>
      <li><a href="#">40대</a></li>            
      <li class="divider"></li>
      <li><a href="#">50대</a></li>
   </ul>
	</span> 
	
<!-- 성별 -->	
	<span class="dropdown">
   <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" style="margin:15px 10px 15px 10px;">성별
   <span class="caret"></span></button>
   <ul class="dropdown-menu" style="margin-top:10px;">
      <li><a href="#">남자</a></li>
            <li class="divider"></li>
      <li><a href="#">여자</a></li>
            <li class="divider"></li>
      <li><a href="#">무관</a></li>
   </ul>
	</span>
	
	
	
	
	<button class="btn btn-default"  style="margin:15px 10px 15px 10px;">날짜</button>	
	<button class="btn btn-warning" style="margin:15px 10px 15px 10px;">자동매칭</button>	
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal" style="margin:15px 10px 15px 10px;">PLAN</button>


  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">일정선택</h4>
        </div>
        
        <div class="modal-body">
        <div class="row">
          		<div class="col-md-4" style="margin: 10px; padding: 10px; border: 1px solid rgb(204, 204, 204);">
						<img style="border-image: none; width: 100%" src="img/map.JPG">
								<div style="max-width: none;">제주도 2박 3일</div>
										<div class="  heart_eye  d-lg-block" style="color: black; padding-left: 15px; max-width: none; text-align: left;">
											<i class="fa fa-heart fa-1x"></i> + 278 &nbsp 
											<i class="fa fa-eye fa-1x"></i>+ 982
										</div>
										<div class=" d-lg-block" style="color: black; max-width: none; text-align:right; ">
											&lt;아이디&gt;</div>
				</div>
			</div>	
        </div>
        
        
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!-- 모달 끝 -->	

<!-- 선택버튼끝 -->
</div>
</div>

<div class="row" style="margin-left:20px; margin-right:20px;">

									<div class=" col-md-2"
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
									
									
																		<div class=" col-md-2"
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
									
									
									
									
																		<div class=" col-md-2"
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
									
									
									
									
																		<div class=" col-md-2"
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

</body>
</html>