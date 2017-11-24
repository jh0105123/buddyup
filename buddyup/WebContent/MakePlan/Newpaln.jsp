<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file ="/common/header.jsp"%>
<link href="<%=root%>/res/css/mapplan.css" rel="stylesheet"> 
 
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
		function() {
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
	            html +='			<div style="margin-bottom:5px;"><textarea name="" cols="5" rows="5" class="form-control" placeholder="�����޸�"></textarea></div>';
	            html +='			<div style="margin-bottom:5px;"><input class="form-control" type="text" placeholder="������"></div>';
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
 					<option value="" selected>�Ĵ� 
 					<option value="">�ü� 
 					<option value="">���� 
 					<option value="">����ö 
 					</select>
  				 <input id="input" class="controls" type="text"placeholder="Search">
  				<div id="map"></div>
  			</div>
  		</div>
	</div>
</div>
<%@ include file ="/common/footer.jsp"%>
