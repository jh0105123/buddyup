<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <% 
 String root = request.getContextPath(); 
 %>


<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="initial-scale=1.0">
<meta content="width=device-width">
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBLinprrX_SNCWBj_mQSXHuwSdp3ejr9us&libraries=places&callback=initMap" async defer></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"> 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script> 
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 

<style type="text/css">
 #map { 
 	height:100%;
 	position: relative; 
 }
 /*
 @media (max-width: 768px) { 
  #map { 
     min-height: 100%;
     position: relative; 
   } 
 }  */
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
 #input { 
 	background-color: white; 
 	font-family: Roboto; 
 	font-size: 15px; 
 	font-weight: 300; 
 	margin-left: 12px; 
 	padding: 0 11px 0 13px; 
 	text-overflow: ellipsis; 
 	width: 400px;
	z-index:1; 
	position: absolute; 
	top:1px;
	left:100px; 
 	
 }
 #sel {
	font-family: Roboto;
	font-size: 13px;
	font-weight: 300;
	position: fixed;
	z-index:1;
	top:3px;
	left: 814px;
}

#save {
	font-size: 19px;
	text-align: center;
	background-color: rgb(52, 152, 219);
	top: 80%;
	left: 80%;
	z-index:1;
	position: fixed;
}

#cancel {
	font-size: 19px;
	text-align: center;
	background-color: rgb(52, 152, 219);
	top: 80%;
	left: 70%;
	z-index:1;
	position: fixed;
} 
</style>
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
		function(event) {
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
	        var html = "";
	            html +='<form name="markerinfo" method="post" action="">';
	            html +='	<div style="margin-bottom:5px; height:500px;" align="center">';
	            html +='		<div><img src ='+place.photos[0].getUrl({maxWidth: 300, maxHeight: 100})+'><h3>'+place.name+'</h3></div><br>';
	            html +='		<h5>'+place.formatted_address+'</h5><br>';
	            html +='		<h6>'+place.international_phone_number+'</h6><br>';
	            html +='		<div><textarea name="" cols="5" rows="5" class="form-control" placeholder="일정메모"></textarea></div><br>';
	            html +='		<div><input class="form-control" type="text" style="width:300px" placeholder="예상비용"></div><br>';
	            html +='		<div>';
	            html +='			<input type="button" class="btn btn-success" value="cencel">';
	            html +='			<label style="width: 100px"></label>';
	            html +='			<input type="button"class="btn btn-primary" value="save">';
	            html +='		</div>';
	            html +='	</div>';
	            html +='</form>';
	            	            
	            infowindow.setContent(html);
	            google.maps.event.addListener(marker,'click', function(){infowindow.open(map,marker);});
	         });
}
</script>

<title>Insert title here</title>
<body>
 <div class="container-fluid"> 
       <div class="row"> 
         <div class="col-md-12" > 
           <div class="row"> 
             <div class="col-md-3" style="background:pink;height: 790px;width:100%;"> 
               <p class="" style="overflow-y:scroll; width:100%; height:700px;">
               Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
               sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
               Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
               nisi ut aliquip ex ea commodo consequat. Duis 
                 aute irure dolor in reprehenderit in voluptate velit esse cillum
                  dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat n
                  on proident, sunt in culpa qui officia deserunt mollit anim id est labor
                  um. sdkjhfsakjfhaskjfhsafjhsadjklfhsdakjfahsdkjflashkjsadhfjklashfkjlsadhfs
                  kjaldfhaskdjlfhsadkjfhaskjf
 				asd
 				fs
 				fasf
 				sdafsadfljsadf
 				sdaf
 				sad
 				fs
 				adfsafkljsadlkfjsaklfjsadlkfjsafklsajdf   
 				</p>         
             </div> 
             <div class="col-md-9" style="padding: 0;"> 
                <input id="input" class="controls" type="text" placeholder="Search">
                <select name="" id="sel" class="controls"> 
 					<option value="" selected>식당 
 					<option value="">시설 
 					<option value="">관광 
 					<option value="">지하철 
 				</select>  
 				<input id="save" type="button" value="저장"> 
 				<input id="cancel" type="button" value="취소">  
             	<div id="map"></div>   
             </div> 
           </div> 
         </div> 
       </div> 
     </div>
</body>
