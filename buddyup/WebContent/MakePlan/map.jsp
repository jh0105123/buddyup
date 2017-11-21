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
		<h1>����</h1>
		<div><h2>2017.11.20</h2></div>
		
		<div><label style ="font-size: 32px; background:pink;">DAY1</label></div>
		
		<div><label style ="font-size: 32px; background:pink;">DAY2</label></div>
		
		<div><label style ="font-size: 32px; background:pink;">DAY2</label></div>
	</div>
	</center>
	
	
	<input id="pac-input" class="controls" type="text" placeholder="Search">
	<select name="" id="sel" class="controls">
		<option value="" selected>�Ĵ�
		<option value="">�ü�
		<option value="">����
		<option value="">����ö
	</select>


	<input id="save" type="button" value="����" onclick="javascript:dd();">
	<input id="cancel" type="button" value="���">
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
			//��Ŀ�߰�
			var marker = new google.maps.Marker({
				position:{lat:42.36, lng:-71.05}, map:map,
				icon : 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png'
			});
			
			var infowindow = new google.maps.InfoWindow({
				content:'<h1>���ÿ� ����</h1>'
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
						content : '<div><h1>���ÿչ��</h1></div><div><input type="text" placeholder="����"></div><div><input type="button" value="���"></div><div><input type="button" value="����"></div><textarea placeholder="�޸�" name="content" cols="40" rows="8">'
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
</html>