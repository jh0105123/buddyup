<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="EUC-KR">
    <title>rangeCalendar</title>
    
    
    <link rel="stylesheet" href="http://www.blueb.co.kr/SRC2/rangecalendar/css/normalize.css">
   <link rel="stylesheet" href="http://www.blueb.co.kr/SRC2/rangecalendar/css/style.css">
   <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,100,100italic' rel='stylesheet' type='text/css'>
</head>
<body>

<div id="c">
<h1><b>range</b>Calendar</h1>

<!--<input type="text" class="date">-->

<div id="calHelp">
   <div class="first active"><i>A</i> <b id="sel1text">SELECT DEPART</b></div><div class="disabled"><i>B</i> <b id="sel2text">RETURN</b></div>
</div>
<div id="disp"><div id="prev" class="nav">←</div><div id="month">Hello wold</div><div id="next" class="nav">→</div></div>
<div id="cal"></div>


</div><!-- /#c -->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

   <script src="http://www.blueb.co.kr/SRC2/rangecalendar/js/index.js"></script>

</body>
</html>