<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%!
public void init()
{
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
	}catch(Exception e)
	{
		e.getStackTrace();
	}
}
%>

<%
request.setCharacterEncoding("EUC-KR");
String name = request.getParameter("name");
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String email1 = request.getParameter("email1");
String email2 = request.getParameter("email2");
String tel1 = request.getParameter("tel1");
String tel2 = request.getParameter("tel2");
String tel3 = request.getParameter("tel3");
String zip1 = request.getParameter("zip1");
String zip2 = request.getParameter("zip2");
String addr1 = request.getParameter("addr1");
String addr2 = request.getParameter("addr2");

String root = request.getContextPath();
Connection conn = null;
Statement stmt = null;
int cnt = 0;
try{
conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.12.48", "kitri02", "kitri02");
String sql = "";
sql += " insert All into member values('"+id+"','"+name+"','"+pass+"','"+email1+"','"+email2+"',sysdate) \n";
sql += "  into member_detail values('"+id+"','"+tel1+"','"+tel2+"','"+tel3+"','"+zip1+"','"+zip2+"','"+addr1+"','"+addr2+"') \n";
sql += " select * from dual";
stmt = conn.createStatement();
cnt = stmt.executeUpdate(sql);
}catch(SQLException e)
{
	e.getStackTrace();
}finally
{
	try{
		if(stmt != null)
			stmt.close();
		if(conn != null)
			conn.close();
	}catch(SQLException e)
	{
		e.getStackTrace();
	}
}

if(cnt != 0){ 
	response.sendRedirect(root+"/join/registerok.jsp?name="+URLEncoder.encode(name, "EUC-KR")+"&id=" + id);//url을 써라 //버퍼에 있는걸 초기화시키고 간다.
													//그래서 직접 쿼리스트링을 써서 가져간다.
}else{
	response.sendRedirect(root+"/join/registerfail.jsp");
}
%>
