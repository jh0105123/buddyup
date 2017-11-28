<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file ="/common/header.jsp"%>
<link href="<%=root%>/css/mapplan.css" rel="stylesheet"> 

 
 <script>
function initMap(){
	//맵 위치 초기화
	var options = {zoom : 13,center : {lat : 42.36,lng : -71.05}};
	//맵 호출 및 map 사이즈css
	var map = new google.maps.Map(document.getElementById('map'),options);
	//검색 창 input 변수
	var input =document.getElementById('Plansearch');
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
		        html += '		<form class="" method="post">';
		        html += '			<div class="form-group">';
		        html += '					<div class="col-sm-12" style="text-align: center; margin-bottom: 6px;">';
		        html += '						<img src ='+place.photos[0].getUrl({maxWidth: 120, maxHeight: 100})+'>';
		        html += '					</div>';
		        html += '			</div>';
		     	html += '			<div class="form-group" style="text-align: center;">';
		        html += '					<div class="col-sm-12">';
		        html += '						<Strong><p style="font-size:15px">'+place.name+'</p></Strong>';
		        html += '					</div>';
		      	html += '			</div>';
		        html += '			<div class="form-group" style="text-align: center;">';
		        html += '					<div class="col-sm-12">';
		        html += '						 <p>'+place.formatted_address+'</p>';
		        html += '					</div>';
		        html += '			</div>';
		        html += '			<div class="form-group" style="text-align: center;">';
		        html += '					<div class="col-sm-12">';
		        html += '					<p>'+place.international_phone_number+'</p>';
		        html += '					</div>';
		        html += '			</div>';
		        html += '			<div class="form-group" style="text-align: center;">';
		        html += '					<div class="col-sm-12" style="margin-bottom: 10px;">';
		        html += '					<textarea class="form-control" rows="4" name="message" placeholder="일정메모"></textarea>';
		        html += '					</div>';
		        html += '			</div>';
		        html += '			<div class="form-group" style="text-align: center;">';
		        html += '					<div class="col-sm-12" style="margin-bottom: 10px;">';
		        html += '					<input class="form-control" type="text" placeholder="예상비용">';
		        html += '					</div>';
		        html += '			</div>';
		        html += '			<div class="form-group" style="text-align: center;">';
		       	html += '				<div class="col-sm-12">';
		        html += '					<span><input style="margin-right: 66px;" id="submit" name="submit" type="submit" value="Send" class="btn btn-primary"></span>';
		        html += '					<span><input id="submit" name="submit" type="submit" value="Send" class="btn btn-primary"></span>';
		        html += '				</div>';
		        html += '			</div>';
		        html += '		</form>';
          
	            infowindow.setContent(html);
	            google.maps.event.addListener(marker,'click', 
	            		function(){
	            			infowindow.open(map,marker);
	            		}
	            );
	         });
}
/* google.maps.event.addDomListener(window, 'load', initMap); */
</script>

 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  <script>
  var j = jQuery.noConflict();
  jQuery(function(j) {
	  j.datepicker.regional['ko'] = {
			  	closeText : '닫기',
			    prevText : '이전달',
			    nextText : '다음달',
			    currentText : '오늘',
			    monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			    monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			    dayNames : ['일', '월', '화', '수', '목', '금', '토'],
			    dayNamesShort : ['일', '월', '화', '수', '목', '금', '토'],
			    dayNamesMin : ['일', '월', '화', '수', '목', '금', '토'],
			    dateFormat: 'yy-mm-dd'
			  
	  };
	  j.datepicker.setDefaults(j.datepicker.regional['ko']);
  });
  
  j( function() {
	  j('#mdatepicker1').datepicker({
		
		  minDate:0,
		onSelect: function(selected){
			j('#mdatepicker2').datepicker("option","minDate","selected")
		}
	  });
	  
	  j("#mdatepicker2").datepicker({
		onSelect: function(selected){
			j('#mdatepicker1').datepicker("option","maxDate","selected")
		}
	  });
	 /*  j('#mdatepicker1').datepicker();
	  j('#mdatepicker2').datepicker(); */
  });
</script>
<!-- 일정 재설정시 selectbox에 찍히는 기능 -->
<script type="text/javascript">
	function daySelect(){
		
		var mstart = new Date(j('#mdatepicker1').val());
		var mend  = new Date(j('#mdatepicker2').val());
		var dtime = mend.getTime() - mstart.getTime();
		var daynum = dtime / (1000*60*60*24)+1;
		if($('#modaltitle').val()==""){
			 alert("여행 제목을 입력해 주세요");  
			 return;
		}else if(j('#mdatepicker1').val()==""){
			 alert("시작일을 선택해주세요");  
			 return;
		}else if(j('#mdatepicker2').val()==""){
			 alert("종료일을 선택해주세요");  
			 return;
		}else{	
		
			if(mend-mstart < 0){
				alert("종료일이 시작일보다 이전일수 없습니다. 날짜를 다시 선택해주세요")
			}else{
				$('#selday').empty();
				
				for(var i=0; i<daynum; i++){
					$('#selday').append('<option value="">day'+(i+1)+'</option>');
				}
				$('#ModalInPlan').modal('hide');
			}
		}
	}
	
	function mcancel(){
		$('#ModalInPlan').modal('hide');
	}
</script>

<form id="plan" name="plan">
<div class="row" style="margin-left: 0px; margin-right: 0px;">
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-2" id="navi" style="padding-right:1px;">
			 	<div class="row" style="padding-top: 10px; padding-left: 10px; margin-left:0px; margin-right:10px;">
  					<div class="col-md-4" style="margin-left: 0px;margin-bottom: 5px; width: 100%;">
  						<button style="width: 100%;background-color: #1db674;border: 4px solid blanchedalmond;" type="button" class="btn btn-success">저장</button>
  					</div>
  					<div class="col-md-4" style="width: 100%;">
  						<button style="background-color: #1db674;border: 4px solid blanchedalmond; width: 100%;" type="button" class="btn btn-success">전체삭제</button>
  					</div>
				</div> 	
            </div>   
              
  			<div class="col-md-10" style="padding: 0;">			  				
				<div class="row" style="width:100%; margin:0; z-index:1; position:absolute; padding-left:130px;  padding-top:10px;">
	  				<div class="col-md-5" style="padding-left:0;">
	  					<div class="row">
	  						<div class="col-xs-12" style="padding:0;">
    							<input style="border: 2px solid blanchedalmond; padding:0;max-width: 75%; margin-left: 15px;" class="form-control" id="Plansearch" type="text" placeholder="Search">
 							</div>
 						</div>
	  				</div>
	  				<div class="col-md-2" style="padding-right:0; padding-left:0;">
	  					<select id="selloc" name="" class="form-control" style="border: 2px solid blanchedalmond; max-width:80%;	 height:35px;"> 
 						<option value="" selected="selected">선택
 						<option value="">시설 	
 						<option value="">관광 
 						<option value="">지하철 
 						</select>
	  				</div>
	  				<div class="col-md-2" style="padding:0;">	  						
	  					<select  id="selday" name="" class="form-control" style="border: 2px solid blanchedalmond; max-width:80%; height:35px;">
	  					<option value="" selected="selected">day선택
	  					</select>
	  				</div>
	  				<div class="col-md-2" style="padding:0;">
	  					<button style="border: 2px solid blanchedalmond; min-width:80%; background-color: #1db674;" type="button" class="btn btn-success" data-toggle="modal" data-target="#ModalInPlan">일정선택</button>
	  				</div>
				</div>
				<div id="map">
  				</div>
  			</div>
  		</div>
	</div>
</div>
</form>

<!-- 달력 재설정 모달-->
			<form id="planModal" name="planModal">
 				<div class="modal fade" id="ModalInPlan" role="dialog">
					<div class="modal-dialog modal-lg" style="max-width:600px !important; top:30%;">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title" style="text-align:center;">일정 선택</h4>
							</div>
							<div class="modal-body">
								<div class="row" style="width: fit-content; margin: auto;">
								    <div class="col-md-12" style="padding:0; margin-bottom: 30px;"><input id="modaltitle" class="form-control" id="" type="text" placeholder="여행제목">
								    </div>
									<div class="row">
								    	<div class="col-md-6"><input class="form-control" type="text" id="mdatepicker1" placeholder="시작일"></div>
								    	<div class="col-md-6"><input class="form-control" type="text" id="mdatepicker2" placeholder="종료일"></div>
								    </div>
								</div>		
							</div>
							<div class="modal-footer">
								<input style="background-color: #1db674;" type="button" class="btn btn-success" value="확인" onclick="javascript:daySelect();">
								<input style="background-color: #1db674;" type="button" class="btn btn-success" value="취소" onclick="javascript:mcancel();">
							</div>
						</div>
					</div>
				</div>
			</form>
<%@ include file ="/common/footer.jsp"%>
