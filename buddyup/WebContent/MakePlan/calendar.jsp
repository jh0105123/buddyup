<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�޷� �ҽ�</title>

  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
 

  <script>

  $(function() {

    $( "#calendar" ).datepicker();

   
     //�ɼ�  : �Ű������� 2��°�� �ɼ��� Ÿ���̸� 3��° �׸��� �ɼǿ� ���� ���� ��
      $( "#calendar" ).datepicker( "option", "dateFormat", "yy��-mm��-dd��" ); //������ �������� ��¥�� ��ȯ Ÿ���� ����
      $( "#calendar" ).datepicker( "option", "showAnim", "slideDown" );      //�޷��� ǥ�� ����
  

  });

  </script>

</head>

<body>
	
��¥: <input type="text" id="calendar" >

</body>
</html>