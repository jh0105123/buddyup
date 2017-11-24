
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file="/common/header.jsp"%>



<style type="text/css">

.sidecontent{
background-color: #33cc99;
text-align: center;
font-family: fantasy;
color: black;
}

.img-rounded{
margin-top: 20px;
width: 130px;
margin-bottom: 20px;
}

.textfont{
	color: orange;
	font-family: fantasy;
	font-size: 12px;
	font-style: italic;
}

.countfont{
	color: navy;
	font-family: fantasy;
	font-size: 40px;
	font-style: italic;
}

.tcount{
	margin-top: 20px;
}

.stitle{
	color: #33cc99;
	font-family: fantasy;
	font-size: 20px;
	font-style: italic;	
}

.card-body{
	border-bottom: 5px solid;
	border-top: 5px solid;
	border-left: 5px solid;
	border-right: 5px solid;
	
	border-bottom-color: white;
	border-top-color: white;
	border-left-color: white;
	border-right-color: white;
}

.btnstyle{
	
	background-color: #33cc99;
	
	border-bottom-color: #33cc99;
	border-top-color: #33cc99;
	border-left-color: #33cc99;
	border-right-color: #33cc99;
}

.list-group{
	margin-top: 10px;
	margin-bottom: 10px;
	margin-left: 10px;
	margin-right: 10px;

}

.boardtable{
	font-size: 10px;

}

</style>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ['gender', 'use per gender'],
    ['����',    5789],
    ['����',    7025]
  ]);

  var options = {
    title: '���� ����Ʈ �̿���Ȳ',
  };

  var chart = new google.visualization.PieChart(document.getElementById('gender_donutchart'));
  chart.draw(data, options);
}

</script>

<script type="text/javascript">
google.charts.load("current", {packages:["corechart"]});
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ['age', 'use site per age'],
    ['10��',    5789],
    ['20��',    15023],
    ['30��',    7025],
    ['40��',    6580],
    ['other',  2041]
  ]);

  var options = {
    title: '���̺� ����Ʈ �̿���Ȳ',
  };

  var chart = new google.visualization.PieChart(document.getElementById('age_donutchart'));
  chart.draw(data, options);
}

</script>

<script>
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawBasic);

function drawBasic() {
	      var data = google.visualization.arrayToDataTable([
	          ['login method', 'count',],
	          ['ȸ���α���', 1254],
	          ['īī���α���', 485],
	          ['���̽��Ϸα���', 256]
	      ]);

	      var options = {
	        title: '���� �α��� ��Ȳ',
	        chartArea: {width: '50%'},
	        hAxis: {
	          title: '���� �α��� ��',
	          minValue: 0
	        },
	      };

	      var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

	      chart.draw(data, options);
}

</script>


<section id="manager">
	<form name="managerform" method="post" action="">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2 sidecontent">
					<img src="<%=root %>/img/manager.jpg" class="img-rounded" alt="manager image">
					<br>
					������ ��!&nbsp;&nbsp;&nbsp;�ȳ��ϼ���.
					<br>
					<br>
					
					<button type="button" class="btn btn-primary btn-block btnstyle">��ú���</button>

					<button type="button" class="btn btn-primary btn-block btnstyle" data-toggle="collapse" data-target="#control">����</button>
					<div id="control" class="collapse">
						<div class="btn-group btn-group-vertical">
  							<a href="#" class="btn btn-primary btn-block btnstyle">ȸ������</a>
 							<a href="#" class="btn btn-primary btn-block btnstyle">��Ī����</a>
  							<a href="#" class="btn btn-primary btn-block btnstyle">��������</a>
  							<a href="#" class="btn btn-primary btn-block btnstyle">�Խ��ǰ���</a>
						</div>
					</div>
					
					<button type="button" class="btn btn-primary btn-block btnstyle" data-toggle="collapse" data-target="#statistics">���</button>
					<div id="statistics" class="collapse">
						<div class="btn-group btn-group-vertical">
  							<a href="#" class="btn btn-primary btn-block btnstyle">ȸ���м�</a>
 							<a href="#" class="btn btn-primary btn-block btnstyle">�湮�м�</a>
  							<a href="#" class="btn btn-primary btn-block btnstyle">��Ī�м�</a>
  							<a href="#" class="btn btn-primary btn-block btnstyle">�̿�м�</a>
						</div>						
					</div>
					<button type="button" class="btn btn-primary btn-block btnstyle" data-toggle="collapse" data-target="#support">����</button>
					<div id="support" class="collapse">
						<div class="btn-group btn-group-vertical">
  							<a href="#" class="btn btn-primary btn-block btnstyle">��������</a>
 							<a href="#" class="btn btn-primary btn-block btnstyle">���ǻ���</a>
						</div>						
					</div>
					
					
					
					<br>
					<br>
					<br>
				</div>
				<div class="col-md-10">
					<section id="dashboard">
						<div class="container">
							<br>
							<font class="stitle">Today</font>
							<div class="row tcount">
								<div class="col-md-4">
									<div class="card">
  										<div class="card-body">
  											<img alt="logo image" src="<%= root %>/img/logo.jpg">
  											&nbsp;&nbsp;<font class="textfont">�α��� ��Ȳ</font>
  											&nbsp;&nbsp;<font class="countfont">1254</font><font class="textfont">��</font>
    									</div>
    								</div>
								</div>
								<div class="col-md-4">
									<div class="card">
  										<div class="card-body textfont">
  											<img alt="kakao image" src="<%= root %>/img/kakao.JPG">
  											&nbsp;&nbsp;<font class="textfont">īī���� �α��� ��Ȳ</font>
  											&nbsp;&nbsp;<font class="countfont">485</font><font class="textfont">��</font>
    									</div>
    								</div>								
								</div>
								<div class="col-md-4">
									<div class="card">
  										<div class="card-body textfont">
  											<img alt="facebook image" src="<%= root %>/img/facebook.JPG">
  											&nbsp;&nbsp;<font class="textfont">���̽��� �α��� ��Ȳ</font>
  											&nbsp;&nbsp;<font class="countfont">256</font><font class="textfont">��</font>
    									</div>
    								</div>								
								</div>							
							</div>
							<br>
						
							<div class="container-fluid">
								<font class="stitle">Chart</font>
								<div class="row">
									<div class="col-md-6">
										<div class="card">
											<div class="card-body">
												 <div id="chart_div" style="width: 100%; height: 100%;"></div>
											</div>
										</div>										
									</div>
									<div class="col-md-3">
										<div class="card">
											<div class="card-body">
												
												<div id="gender_donutchart" style="width: 100%; height: 100%;"></div>
											</div>
										</div>
									</div>
									<div class="col-md-3">
										<div class="card">
											<div class="card-body">
												<div id="age_donutchart" style="width: 100%; height: 100%;"></div>
											</div>
										</div>
									</div>									
								</div>
							</div>
							<br>	
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-4">
										<font class="stitle">Real-Time User</font>
										<div class="card">
											<div class="card-body">
												<ul class="list-group">
  													<li class="list-group-item">Total User <span class="badge">12786</span></li>
  													<li class="list-group-item">Active User <span class="badge">3954</span></li> 
 													<li class="list-group-item">Non-Active User <span class="badge">8832</span></li> 
												</ul>
											</div>
										</div>
									</div>
									
									<div class="col-md-4">
										<font class="stitle">Up-to-Date</font>
										<div class="card">
											<div class="card-body">
												 �ֽŰԽñ�
												 <table class="table boardtable">
    												<thead>
     												 <tr>
       													 <th>�۹�ȣ</th>
      												     <th>������</th>
        												 <th>�ۼ���</th>
        												 <th>�ۼ�����</th>
      												 </tr>
    												</thead>
    												<tbody>
      													<tr>
      													   <td>3</td>
     													   <td>�ȳ��ϼ���</td>
       													   <td>�̼���</td>
       													   <td>2017/11/24</td>
      													</tr>
      													<tr>
      													   <td>2</td>
     													   <td>�ȳ��ϼ���</td>
       													   <td>�̼���</td>
       													   <td>2017/11/24</td>
      													</tr>     
      													<tr>
      													   <td>1</td>
     													   <td>�ȳ��ϼ���</td>
       													   <td>�̼���</td>
       													   <td>2017/11/24</td>
      													</tr>           
   													 </tbody>
  												</table>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<font class="stitle">&nbsp;</font>
										<div class="card">
											<div class="card-body">
												 <font>�ֽŹ��Ǳ�</font>
												 <table class="table boardtable">
    												<thead>
     												 <tr>
       													 <th>�۹�ȣ</th>
      												     <th>������</th>
        												 <th>�ۼ���</th>
        												 <th>�ۼ�����</th>
      												 </tr>
    												</thead>
    												<tbody>
      													<tr>
      													   <td>3</td>
     													   <td>���ǵ帳�ϴ�.</td>
       													   <td>ȫ�浿</td>
       													   <td>2017/11/24</td>
      													</tr>
      													<tr>
      													   <td>2</td>
     													   <td>���ǵ帳�ϴ�.</td>
       													   <td>ȫ�浿</td>
       													   <td>2017/11/24</td>
      													</tr>
       													<tr>
      													   <td>1</td>
     													   <td>���ǵ帳�ϴ�.</td>
       													   <td>ȫ�浿</td>
       													   <td>2017/11/24</td>
      													</tr>     													      													      
   													 </tbody>
  												</table>	
											</div>
										</div>
									</div>																				
								</div>
							</div>
						</div>
					</section>
					<br>
					<br>
				</div>		
			</div>
		</div>		
	</form>
</section>

<%@ include file="/common/footer.jsp"%>