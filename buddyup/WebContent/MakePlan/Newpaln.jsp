<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file ="/common/header.jsp"%>
<link href="<%=root%>/res/css/mapplan.css" rel="stylesheet"> 
 
  <script>
function initMap(){
	//맵 위치 초기화
	var options = {zoom : 13,center : {lat : 42.36,lng : -71.05}};
	//맵 호출 및 map 사이즈css
	var map = new google.maps.Map(document.getElementById('map'),options);
	//검색 창 input 변수
	var input =document.getElementById('input');
	//자동 검색창에 자동검색 호출
	var autocomplete = new google.maps.places.Autocomplete(input);
	autocomplete.bindTo('bounds', map);
	//정보창 호출		
	var infowindow = new google.maps.InfoWindow();
	//마커 생성, 맵에지정, 기준점호출??
	var marker = new google.maps.Marker({map: map, anchorPoint:new google.maps.Point(0, -29)});
	//자동완성 리스너  검색어에서 장소를 선택할 경우 기능을 수행
	
	autocomplete.addListener('place_changed', 
		function() {
			//선택시 정보창 닫기
			infowindow.close();
	   	  	marker.setVisible(false);
	   	 	//검색에 대한 장소 정보가져오기
	   	  	var place = autocomplete.getPlace();
	    	//장소의 지리 관련 정보가 없을 경우 '장소에 대한 이름이 없다.'
	   	 	if (!place.geometry) {
	              window.alert("No details available for input: '" + place.name + "'");
	              return;
	        }
	    	//장소의 선호하는 뷰포트가 있을 시
	        if (place.geometry.viewport) {
	        	//찾은 맵이 아무것도 없을때 맵의 크기(0x0)를 읽어라 
	        	map.fitBounds(place.geometry.viewport);
	        }else{
	        	//찾은 맵이 있으면 해당 장소의 위치를 맵의 중앙으로 위치시켜라
	                map.setCenter(place.geometry.location);
				//맵의 줌을 17까지
	        		map.setZoom(17);
	             }
	    	//마커 아이콘을 지정한다.
	        marker.setIcon(({
	        	//마커 아이콘 지정
	        	url:'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png',
	        	//마커의 사이즈 지정
	        	size: new google.maps.Size(71, 71),
	        	origin: new google.maps.Point(0, 0),
	        	anchor: new google.maps.Point(17, 34),
	            scaledSize: new google.maps.Size(35, 35)
	        }));
	    
	        marker.setPosition(place.geometry.location);
	        marker.setVisible(true);
	        var html = '';
	            html +='<form name="markerinfo" method="post" action="">';
	            html +='	<div class="col" style="height:300px; text-overflow: ellipsis;" align="center">';
	            
	            html +='		<div style="margin-bottom:5px;">';
	            html +='			<div><img src ='+place.photos[0].getUrl({maxWidth: 390, maxHeight: 100})+'></div>';
	            html +='			<div><Strong><p style="font-size:20px">'+place.name+'</p></Strong></div>';
	            html +='			<div><p style="font-size:15px">'+place.formatted_address+'</p></div>';
	            html +='			<div><p style="font-size:15px">'+place.international_phone_number+'</p></div>';
	            html +='		</div>';
	            
	            html +='		<div style="margin-bottom:5px;">';
	            html +='			<div style="margin-bottom:5px; width:300px;">'
	            html +='			<div style="margin-bottom:5px;"><textarea name="" cols="5" rows="5" class="form-control" placeholder="일정메모"></textarea></div>';
	            html +='			<div style="margin-bottom:5px;"><input class="form-control" type="text" placeholder="예상비용"></div>';
	            html +='			</div>';
	            html +='			<div>';
	            html +='				<input type="button" class="btn btn-success" value="cencel">';
	            html +='				<label style="width: 100px"></label>';
	            html +='				<input type="button"class="btn btn-primary" value="save">';
	            html +='			</div>';
	            html +='		</div>';
	            
	            html +='	</div>';
	            html +='</form>';
          
	            infowindow.setContent(html);
	            google.maps.event.addListener(marker,'click', function(){infowindow.open(map,marker);});
	         });
		
}
google.maps.event.addDomListener(window,'load', initMap);
</script>




<div class="row">
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-2" id="navi" style="padding-right:0px;">
			 <img src="<%=root%>/res/img/i.jpg" style="width:100%; height:100%">
            </div> 
  			<div class="col-md-10" style="padding: 0;">
  				  	<select name="" id="sel" class="controls"> 
 					<option value="" selected>식당 
 					<option value="">시설 
 					<option value="">관광 
 					<option value="">지하철 
 					</select>
  				 <input id="input" class="controls" type="text"placeholder="Search">
  				<div id="map"></div>
  			</div>
  		</div>
	</div>
</div>
<%@ include file ="/common/footer.jsp"%>
