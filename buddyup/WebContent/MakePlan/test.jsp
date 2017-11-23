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
	//�� ��ġ �ʱ�ȭ
	var options = {zoom : 13,center : {lat : 42.36,lng : -71.05}};
	//�� ȣ�� �� map ������css
	var map = new google.maps.Map(document.getElementById('map'),options);
	//�˻� â input ����
	var input =document.getElementById('input');
	//�ڵ� �˻�â�� �ڵ��˻� ȣ��
	var autocomplete = new google.maps.places.Autocomplete(input);
	autocomplete.bindTo('bounds', map);
	//����â ȣ��		
	var infowindow = new google.maps.InfoWindow();
	//��Ŀ ����, �ʿ�����, ������ȣ��??
	var marker = new google.maps.Marker({map: map, anchorPoint:new google.maps.Point(0, -29)});
	//�ڵ��ϼ� ������  �˻���� ��Ҹ� ������ ��� ����� ����
	
	autocomplete.addListener('place_changed', 
		function(event) {
			//���ý� ����â �ݱ�
			infowindow.close();
	   	  	marker.setVisible(false);
	   	 	//�˻��� ���� ��� ������������
	   	  	var place = autocomplete.getPlace();
	    	//����� ���� ���� ������ ���� ��� '��ҿ� ���� �̸��� ����.'
	   	 	if (!place.geometry) {
	              window.alert("No details available for input: '" + place.name + "'");
	              return;
	        }
	    	//����� ��ȣ�ϴ� ����Ʈ�� ���� ��
	        if (place.geometry.viewport) {
	        	//ã�� ���� �ƹ��͵� ������ ���� ũ��(0x0)�� �о�� 
	        	map.fitBounds(place.geometry.viewport);
	        }else{
	        	//ã�� ���� ������ �ش� ����� ��ġ�� ���� �߾����� ��ġ���Ѷ�
	                map.setCenter(place.geometry.location);
				//���� ���� 17����
	        		map.setZoom(17);
	             }
	    	//��Ŀ �������� �����Ѵ�.
	        marker.setIcon(({
	        	//��Ŀ ������ ����
	        	url:'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png',
	        	//��Ŀ�� ������ ����
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
	            html +='		<div><textarea name="" cols="5" rows="5" class="form-control" placeholder="�����޸�"></textarea></div><br>';
	            html +='		<div><input class="form-control" type="text" style="width:300px" placeholder="������"></div><br>';
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
 					<option value="" selected>�Ĵ� 
 					<option value="">�ü� 
 					<option value="">���� 
 					<option value="">����ö 
 				</select>  
 				<input id="save" type="button" value="����"> 
 				<input id="cancel" type="button" value="���">  
             	<div id="map"></div>   
             </div> 
           </div> 
         </div> 
       </div> 
     </div>
</body>
