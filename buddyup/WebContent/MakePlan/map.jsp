<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
<title>Insert title here</title>
<style type="text/css">
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
#qwe {
        color: #fff;
        background-color: #4d90fe;
        padding: 5px 11px 0px 11px;
      }

</style>
</head>
<body>
	<center>
	<div id="left">
		<h1>제목</h1>
		<div><h2>2017.11.20</h2></div>
		
		<div><label style ="font-size: 32px; background:pink;">DAY1</label></div>
		
		<div><label style ="font-size: 32px; background:pink;">DAY2</label></div>
		
		<div><label style ="font-size: 32px; background:pink;">DAY2</label></div>
	</div>
	</center>
	
	
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
				zoom : 13,
				center : {
					lat : 37.57,
					lng : 126.9777
				}
			}
			var map = new google.maps.Map(document.getElementById('map'),options);
			
			  var input = document.getElementById('pac-input');
		        var searchBox = new google.maps.places.SearchBox(input);
		        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);
			
		        map.addListener('bounds_changed', function() {
		            searchBox.setBounds(map.getBounds());
		          });

		          var markers = [];
		          // Listen for the event fired when the user selects a prediction and retrieve
		          // more details for that place.
		          searchBox.addListener('places_changed', function() {
		            var places = searchBox.getPlaces();

		            if (places.length == 0) {
		              return;
		            }

		            // Clear out the old markers.
		            markers.forEach(function(marker) {
		              marker.setMap(null);
		            });
		            markers = [];

		            // For each place, get the icon, name and location.
		            var bounds = new google.maps.LatLngBounds();
		            places.forEach(function(place) {
		              if (!place.geometry) {
		                console.log("Returned place contains no geometry");
		                return;
		              }
		              var icon = {
		                url: place.icon,
		                size: new google.maps.Size(71, 71),
		                origin: new google.maps.Point(0, 0),
		                anchor: new google.maps.Point(17, 34),
		                scaledSize: new google.maps.Size(25, 25)
		              };

		              // Create a marker for each place.
		              markers.push(new google.maps.Marker({
		                map: map,
		                icon: icon,
		                title: place.name,
		                position: place.geometry.location
		              }));

		              if (place.geometry.viewport) {
		                // Only geocodes have viewport.
		                bounds.union(place.geometry.viewport);
		              } else {
		                bounds.extend(place.geometry.location);
		              }
		            });
		            map.fitBounds(bounds);
		          });
			
		}
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
			 /*
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
			*/
		
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBjlovEy105yLBFH6Lrg_brtigJc2AJF-s&callback=initMap"
		async defer></script>
</body>
=======
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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

#cancel {
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
	
		<div id="left">
			<input type="text" placeholder="day">
		</div>
		<input id="pac-input" class="controls" type="text"placeholder="Search"> 
		<select name="" id="sel"
			class="controls">
			<option value="" selected>식당
			<option value="">시설
			<option value="">관광
			<option value="">지하철
		</select> 
		<input id="save" type="button" value="저장" onclick="javascript:dd();">
		<input id="cancel" type="button" value="취소">
		<div id="map"></div>
	
	<script>
	function dd(){
		document.vv.action = "<%=root%>/MakePlan/plan.jsp";
		document.vv.submit();
	}
	</script>
	<script>
		function initMap() {
			var options = {
				zoom : 13,
				center : {
					lat : 42.36,
					lng : -71.05
				}
			}
			var map = new google.maps.Map(document.getElementById('map'),options);
			var input = (document.getElementById('pac-input'));
			
			var autocomplete = new google.maps.places.Autocomplete(input);
	        autocomplete.bindTo('bounds', map);
			
	        var infowindow = new google.maps.InfoWindow();
	        var marker = new google.maps.Marker({
	          map: map,
	          anchorPoint: new google.maps.Point(0, -29)
	        });
	        
	        autocomplete.addListener('place_changed', function() {
	            infowindow.close();
	            marker.setVisible(false);
	            var place = autocomplete.getPlace();
	            if (!place.geometry) {
	              window.alert("No details available for input: '" + place.name + "'");
	              return;
	            }
			
	            if (place.geometry.viewport) {
	                map.fitBounds(place.geometry.viewport);
	              } else {
	                map.setCenter(place.geometry.location);
	                map.setZoom(17);  // Why 17? Because it looks good.
	              }
	              marker.setIcon(/** @type {google.maps.Icon} */({
	                url:'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png',
	                size: new google.maps.Size(71, 71),
	                origin: new google.maps.Point(0, 0),
	                anchor: new google.maps.Point(17, 34),
	                scaledSize: new google.maps.Size(35, 35)
	              }));
	              marker.setPosition(place.geometry.location);
	              marker.setVisible(true);
	              
	             var html = "";
	            html +='<form name="markerinfo" method="post" action="">';
	            html +='<div style="margin-bottom:5px; height:500px;" align="center">';
	            html +='	<div><img src ='+place.photos[0].getUrl({maxWidth: 300, maxHeight: 100})+'><h3>'+place.name+'</h3></div><br>';
	            html +='	<h5>'+place.formatted_address+'</h5><br>';
	            html +='	<h6>'+place.international_phone_number+'</h6><br>';
	            html +='	<div><textarea name="" cols="5" rows="5" class="form-control" placeholder="일정메모"></textarea></div><br>';
	            html +='	<div><input class="form-control" type="text" style="width:300px" placeholder="예상비용"></div><br>';
	            html +='	<div>';
	            html +='		<input type="button" class="btn btn-success" value="cencel">';
	            html +='		<label style="width: 100px"></label>';
	            html +='		<input type="button"class="btn btn-primary" value="save">';
	            html +='	</div>';
	            html +='</div>';
	            html +='</form>';
	            infowindow.setContent(html);
	        	infowindow.open(map,marker);
	        });
		}
		
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
			 /*
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
			*/
		
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBjlovEy105yLBFH6Lrg_brtigJc2AJF-s&libraries=places&callback=initMap"
		async defer></script>
</body>
>>>>>>> origin/諛⑺빆諛�
</html>