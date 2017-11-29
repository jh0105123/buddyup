<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="/common/header.jsp"%>
<!-- search -->
<link rel="stylesheet" href="css/search.css">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<!-- ��Ʈ��Ʈ�� -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- ��¥ -->
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/cal.css">

<!-- ���ùڽ� -->
<link rel="stylesheet" href="css/select.css">


<title>�˻�</title>
</head>
<body>
<!-- �˻��� -->
<div class="row" style="margin: 20px; margin-bottom: 30px; z-index: -1;">
	<!-- �˻� -->
		<span class=" col-md-6 wrap" style="margin-top: 15px; height:5rem;"> 
		<span class="search"> 
			<input type="text" class="searchTerm" placeholder="�˻�� �Է����ּ���!!" style="margin-right: 10px; margin-left: 20px;">
				<button type="submit" class="searchButton" style="margin-bottom:10px;">
					<i class="fa fa-search"></i>
				</button>
		</span>
		</span>
	<!-- �˻� ��-->
		
<!-- ���ù�ư -->
<div class="container">
	<!-- ���̼��� -->

	<span class="select select--white" style="width: 65px; height: 34px; border-radius: 4px; margin: 15px 10px 15px 10px; display: inline-block;">
  	<span class="placeholder">����</span>
	  <ul>
	    <li>10��</li>
	    <li>20��</li>
	    <li>30��</li>
	    <li>40��</li>
	    <li>50��</li>
	    <li>����</li>
	  </ul>
	</span>
	<!-- ���̼��� ��-->	



	<!-- ���� -->
	<span class="select select--white" style="width: 65px; height: 34px; border-radius: 4px; margin: 15px 10px 15px 10px; display: inline-block;">
	  <span class="placeholder">����</span>
	  <ul>
	    <li>��</li>
	    <li>��</li>
	    <li>����</li>
	  </ul>
	</span>
	<!-- ���� �� -->
	
	<!-- �������� ���� -->
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript"></script>
	<script src="js/select.js"></script>



	<!-- ��¥ -->
	<button type="button" class="btn btn-default" data-toggle="modal" data-target="#calModal" style="margin: 15px 10px 15px 10px;">��¥</button>
			<!-- Modal -->
			<div class="modal fade" id="calModal" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">��¥����</h4>
						</div>

						<div class="modal-body">

							<div class="container"
								style="margin-left: 30px; margin-right: 30px; width: auto;">
								<div id="c row col-md-12">
									<h3>��¥�� �������ּ���</h3>


									<div id="calHelp">
										<div class="first active">
											<i>A</i> <b id="sel1text">�����</b>
										</div>
										<div class="disabled">
											<i>B</i> <b id="sel2text">������</b>
										</div>
									</div>
									<div id="disp">
										<div id="prev" class="nav">&larr;</div>
										<div id="month">Hello world</div>
										<div id="next" class="nav">&rarr;</div>
									</div>
									<div id="cal"></div>
									<button type="button" class="btn btn-default"
										style="margin: 10px; float: center;">Ȯ��</button>


								</div>
								<!-- /#c -->
							</div>
							<script
								src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

							<script src="js/cal.js"></script>

						</div>


						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>

	<!-- ��¥ �� -->


			<button class="btn btn-warning" style="margin: 15px 10px 15px 10px;">�ڵ���Ī</button>
			<!-- Trigger the modal with a button -->
			<button type="button" class="btn btn-info" data-toggle="modal"
				data-target="#myModal" style="margin: 15px 10px 15px 10px;">PLAN</button>


			<!-- Modal -->
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">��������</h4>
						</div>

						<div class="modal-body">
							<div class="row">
								<div class="col-md-4"
									style="margin: 10px; padding: 10px; border: 1px solid rgb(204, 204, 204);">
									<img style="border-image: none; width: 100%" src="img/map.JPG">
									<div style="max-width: none; height: 40px;">���ֵ� 2�� 3��</div>
									<div class="  heart_eye  d-lg-block"
										style="color: black; padding-left: 15px; max-width: none; text-align: left;">
										<i class="fa fa-heart fa-1x"></i> + 278 &nbsp; <i class="fa fa-eye fa-1x"></i>+ 982
									</div>
									<div class=" d-lg-block" style="color: black; max-width: none; text-align: right;">
										&lt;���̵�&gt;</div>
								</div>
							</div>
						</div>


						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>

			<!-- ��� �� -->

		</div>
<!--���ù�ư -->
</div>
<!-- �˻��� -->

	<div class="row" style="margin-left: 20px; margin-right: 20px;  min-height: 100vh; overflow-y:hidden">

		<div class=" col-md-2"
			style="margin: 10px; padding: 10px; border: 1px solid rgb(204, 204, 204);">
			<img style="border-image: none; width: 100%" src="img/map.JPG">
			<div class="row col-md-12" style="max-width: none; height: 40px;">
				���ֵ� 2�� 3��</div>
			<div class=" row col-md-12 heart_eye  d-lg-block"
				style="color: black; padding-left: 15px; max-width: none; text-align: left;">

				<i class="fa fa-heart fa-1x"></i> + 278 &nbsp; <i class="fa fa-eye fa-1x"></i>+ 982
			</div>

			<div class=" row col-md-12   d-lg-block"
				style="color: black; max-width: none; text-align: right;">
				&lt;���̵�&gt;</div>


		</div>


		<div class=" col-md-2"
			style="margin: 10px; padding: 10px; border: 1px solid rgb(204, 204, 204);">
			<img style="border-image: none; width: 100%" src="img/map.JPG">
			<div class="row col-md-12" style="max-width: none; height: 40px;">���ֵ�
				2�� 3��</div>
			<div class=" row col-md-12 heart_eye  d-lg-block"
				style="color: black; padding-left: 15px; max-width: none; text-align: left;">

				<i class="fa fa-heart fa-1x"></i> + 278 &nbsp; <i class="fa fa-eye fa-1x"></i>+ 982
			</div>

			<div class=" row col-md-12   d-lg-block"
				style="color: black; max-width: none; text-align: right;">
				&lt;���̵�&gt;</div>


		</div>
		<div class=" col-md-2"
			style="margin: 10px; padding: 10px; border: 1px solid rgb(204, 204, 204);">
			<img style="border-image: none; width: 100%" src="img/map.JPG">
			<div class="row col-md-12" style="max-width: none; height: 40px;">���ֵ�
				2�� 3��</div>
			<div class=" row col-md-12 heart_eye  d-lg-block"
				style="color: black; padding-left: 15px; max-width: none; text-align: left;">

				<i class="fa fa-heart fa-1x"></i> + 278 &nbsp; <i class="fa fa-eye fa-1x"></i>+ 982
			</div>

			<div class=" row col-md-12   d-lg-block"
				style="color: black; max-width: none; text-align: right;">
				&lt;���̵�&gt;</div>


		</div>

		<div class=" col-md-2"
			style="margin: 10px; padding: 10px; border: 1px solid rgb(204, 204, 204);">
			<img style="border-image: none; width: 100%" src="img/map.JPG">
			<div class="row col-md-12" style="max-width: none; height: 40px;">���ֵ�
				2�� 3��</div>
			<div class=" row col-md-12 heart_eye  d-lg-block"
				style="color: black; padding-left: 15px; max-width: none; text-align: left;">

				<i class="fa fa-heart fa-1x"></i> + 278 &nbsp; <i class="fa fa-eye fa-1x"></i>+ 982
			</div>

			<div class=" row col-md-12   d-lg-block"
				style="color: black; max-width: none; text-align: right;">
				&lt;���̵�&gt;</div>
		</div>
	</div>

	<%@include file="/common/footer.jsp"%>	