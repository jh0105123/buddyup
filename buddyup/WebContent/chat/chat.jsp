<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="chat-container" class="chat-container">
	<div id="chat-box" class="chat-box">
	</div>
	<div id="chat-btn" class="chat-btn">
		<span id="noti-badge" class="noti-badge">100</span>
		<a id="ctrl-chat-box" class="open-chat-box"><i id="icon-chat-btn" class="fa fa-comment-o"></i></a>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		
		function mv() {
			var w = $(window).width();
			var h = $(window).height();
			
			$('#chat-container').css('width', w);
			$('#chat-container').css('height', h);	
			
			if (w < h) {
				if (w < 400  && h < 600) {
					$('#chat-box').css('position', 'fixed');				
					$('#chat-box').css('width', w);				
					$('#chat-box').css('height', h);				
					$('#chat-box').css('bottom', 0);				
					$('#chat-box').css('right', 0);				
				}
				else {
					$('#chat-box').css('position', 'absolute');				
					$('#chat-box').css('width', '230px');				
					$('#chat-box').css('height', '320px');				
					$('#chat-box').css('bottom', '75px');
					$('#chat-box').css('right', '20px');
				}
			}
			else {
				$('#chat-box').css('bottom', '20px');
				$('#chat-box').css('right', '75px');
			}
		}

		mv();
		$(window).resize(function(){ mv(); }).resize();
		
	});
	
	
</script>
<script type="text/javascript">
	$('a').click(function(event){
		event.preventDefault();
		
		if ($('#ctrl-chat-box').attr('class') == 'open-chat-box') {
			$('#ctrl-chat-box').removeClass('open-chat-box');
			$('#ctrl-chat-box').addClass('close-chat-box');
			$('#icon-chat-btn').removeClass('fa fa-comment-o');
			$('#icon-chat-btn').addClass('fa fa-remove');
			$('#chat-box').css('display', 'block');
		}
		else {
			$('#ctrl-chat-box').removeClass('close-chat-box');
			$('#ctrl-chat-box').addClass('open-chat-box');
			$('#icon-chat-btn').removeClass('fa fa-remove');
			$('#icon-chat-btn').addClass('fa fa-comment-o');
			$('#chat-box').css('display', 'none');
		}
		
	});
</script>