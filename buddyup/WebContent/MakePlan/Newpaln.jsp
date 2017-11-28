<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ include file ="/common/header.jsp"%>
<link href="<%=root%>/css/mapplan.css" rel="stylesheet"> 

 
 <script>
function initMap(){
	//�� ��ġ �ʱ�ȭ
	var options = {zoom : 13,center : {lat : 42.36,lng : -71.05}};
	//�� ȣ�� �� map ������css
	var map = new google.maps.Map(document.getElementById('map'),options);
	//�˻� â input ����
	var input =document.getElementById('Plansearch');
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
		        html += '					<textarea class="form-control" rows="4" name="message" placeholder="�����޸�"></textarea>';
		        html += '					</div>';
		        html += '			</div>';
		        html += '			<div class="form-group" style="text-align: center;">';
		        html += '					<div class="col-sm-12" style="margin-bottom: 10px;">';
		        html += '					<input class="form-control" type="text" placeholder="������">';
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
			  	closeText : '�ݱ�',
			    prevText : '������',
			    nextText : '������',
			    currentText : '����',
			    monthNames : ['1��', '2��', '3��', '4��', '5��', '6��', '7��', '8��', '9��', '10��', '11��', '12��'],
			    monthNamesShort : ['1��', '2��', '3��', '4��', '5��', '6��', '7��', '8��', '9��', '10��', '11��', '12��'],
			    dayNames : ['��', '��', 'ȭ', '��', '��', '��', '��'],
			    dayNamesShort : ['��', '��', 'ȭ', '��', '��', '��', '��'],
			    dayNamesMin : ['��', '��', 'ȭ', '��', '��', '��', '��'],
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
<!-- ���� �缳���� selectbox�� ������ ��� -->
<script type="text/javascript">
	function daySelect(){
		
		var mstart = new Date(j('#mdatepicker1').val());
		var mend  = new Date(j('#mdatepicker2').val());
		var dtime = mend.getTime() - mstart.getTime();
		var daynum = dtime / (1000*60*60*24)+1;
		if($('#modaltitle').val()==""){
			 alert("���� ������ �Է��� �ּ���");  
			 return;
		}else if(j('#mdatepicker1').val()==""){
			 alert("�������� �������ּ���");  
			 return;
		}else if(j('#mdatepicker2').val()==""){
			 alert("�������� �������ּ���");  
			 return;
		}else{	
		
			if(mend-mstart < 0){
				alert("�������� �����Ϻ��� �����ϼ� �����ϴ�. ��¥�� �ٽ� �������ּ���")
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
  						<button style="width: 100%;background-color: #1db674;border: 4px solid blanchedalmond;" type="button" class="btn btn-success">����</button>
  					</div>
  					<div class="col-md-4" style="width: 100%;">
  						<button style="background-color: #1db674;border: 4px solid blanchedalmond; width: 100%;" type="button" class="btn btn-success">��ü����</button>
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
 						<option value="" selected="selected">����
 						<option value="">�ü� 	
 						<option value="">���� 
 						<option value="">����ö 
 						</select>
	  				</div>
	  				<div class="col-md-2" style="padding:0;">	  						
	  					<select  id="selday" name="" class="form-control" style="border: 2px solid blanchedalmond; max-width:80%; height:35px;">
	  					<option value="" selected="selected">day����
	  					</select>
	  				</div>
	  				<div class="col-md-2" style="padding:0;">
	  					<button style="border: 2px solid blanchedalmond; min-width:80%; background-color: #1db674;" type="button" class="btn btn-success" data-toggle="modal" data-target="#ModalInPlan">��������</button>
	  				</div>
				</div>
				<div id="map">
  				</div>
  			</div>
  		</div>
	</div>
</div>
</form>

<!-- �޷� �缳�� ���-->
			<form id="planModal" name="planModal">
 				<div class="modal fade" id="ModalInPlan" role="dialog">
					<div class="modal-dialog modal-lg" style="max-width:600px !important; top:30%;">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title" style="text-align:center;">���� ����</h4>
							</div>
							<div class="modal-body">
								<div class="row" style="width: fit-content; margin: auto;">
								    <div class="col-md-12" style="padding:0; margin-bottom: 30px;"><input id="modaltitle" class="form-control" id="" type="text" placeholder="��������">
								    </div>
									<div class="row">
								    	<div class="col-md-6"><input class="form-control" type="text" id="mdatepicker1" placeholder="������"></div>
								    	<div class="col-md-6"><input class="form-control" type="text" id="mdatepicker2" placeholder="������"></div>
								    </div>
								</div>		
							</div>
							<div class="modal-footer">
								<input style="background-color: #1db674;" type="button" class="btn btn-success" value="Ȯ��" onclick="javascript:daySelect();">
								<input style="background-color: #1db674;" type="button" class="btn btn-success" value="���" onclick="javascript:mcancel();">
							</div>
						</div>
					</div>
				</div>
			</form>
<%@ include file ="/common/footer.jsp"%>
