<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR"%>
	<%
		String root = request.getContextPath();
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="initial-scale=1.0">
<title>Insert title here</title>

<style>
/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
	width: 76.2%;
	height: 99%;
	left: 300px;
	position: absolute;
	overflow: hidden;
}

#left {
	background: #4d90fe;
	width: 300px;
	height: 99%;
	position: absolute;
}

.controls {
	margin-top: 10px;
	border: 1px solid transparent;
	border-radius: 2px 0 0 2px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	height: 29px;
	outline: none;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
}

#pac-input {
	background-color: #4d90fe;
	font-family: Roboto;
	font-size: 15px;
	font-weight: 300;
	margin-left: 12px;
	padding: 0 11px 0 13px;
	text-overflow: ellipsis;
	width: 400px;
	z-index: 1;
	position: absolute;
	left: 400px;
}

#sel {
	font-family: Roboto;
	font-size: 13px;
	font-weight: 300;
	position: absolute;
	z-index: 1;
	left: 814px;
}

#save {
	font-size: 19px;
	text-align: center;
	background-color: rgb(52, 152, 219);
	top: 80%;
	left: 80%;
	z-index: 1;
	position: absolute;
}
#cancel{
	font-size: 19px;
	text-align: center;
	background-color: rgb(52, 152, 219);
	top: 80%;
	left: 70%;
	z-index: 1;
	position: absolute;
}
</style>

</head>
<body>
	<form name="vv",method="post" action="">
	<div id="left">
	<input type="text" placeholder="day">
	</div>
	<input id="pac-input" class="controls" type="text" placeholder="Search">
	<select name="" id="sel" class="controls">
		<option value="" selected>식당
		<option value="">시설
		<option value="">관광
		<option value="">지하철
	</select>
	


	<input id="save" type="button" value="저장" onclick="javascript:dd();">
	<input id="cancel" type="button" value="취소">
	<div id="map"></div>

	</form>
	<script>
	function dd(){
		document.vv.action = "<%=root%>/MakePlan/plan.jsp";
		document.vv.submit();
	}
	</script>
	<script>
		function initMap() {
			var options = {
				zoom : 8,
				center : {
					lat : 42.36,
					lng : -71.05
				}
			}
			var map = new google.maps.Map(document.getElementById('map'),
					options);
			/*
			//마커추가
			var marker = new google.maps.Marker({
				position:{lat:42.36, lng:-71.05}, map:map,
				icon : 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png'
			});
			
			var infowindow = new google.maps.InfoWindow({
				content:'<h1>낚시왕 방배다</h1>'
			});
			marker.addListener('click', function(){
				infowindow.open(map,marker)
			});
			 */
			google.maps.event.addListener(map, 'click', function(event) {
				addMarker({
					loc : event.latLng
				});
			});

			var marker = [
					{
						loc : {
							lat : 42.24,
							lng : -71.34
						},
						img : 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png',
						content : '<div><h1>낚시왕방배</h1></div><div><input type="text" placeholder="가격"></div><div><input type="button" value="취소"></div><div><input type="button" value="저장"></div><textarea placeholder="메모" name="content" cols="40" rows="8">'
					}, {
						loc : {
							lat : 40.24,
							lng : -75.34
						}
					} ];

			for (var i = 0; i < marker.length; i++) {
				addMarker(marker[i]);
			}

			//add marker function
			function addMarker(probs) {
				var marker = new google.maps.Marker({
					position : probs.loc,
					map : map,
				});
				if (probs.img) {
					marker.setIcon(probs.img);
				}
				if (probs.content) {
					var infowindow = new google.maps.InfoWindow({
						content : probs.content
					});
					marker.addListener('click', function() {
						infowindow.open(map, marker);
					});
				}
			}
		}
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBjlovEy105yLBFH6Lrg_brtigJc2AJF-s&callback=initMap"
		async defer></script>
</body>
</html>