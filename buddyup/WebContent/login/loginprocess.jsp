<%@page import="java.net.URLEncoder"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%!public void init() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
%>
	
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String root = request.getContextPath();
	String name = null;
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	try{
	conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.12.48:1521:xe", "kitri02", "kitri02");
	String sql = "";
	sql += "select name from member where id = '" + id + "' and pass = '" + pass + "' ";
	stmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
		if (rs.next()) {
			name = rs.getString(1);
		}
	}catch(SQLException e)
	{
		e.getStackTrace();
	}finally
	{
		try{
			if(rs != null)
				rs.close();
			if(stmt != null)
				stmt.close();
			if(conn != null)
				conn.close();
		}catch(SQLException e)
		{
			e.getStackTrace();
		}
	}
 

if(name != null){
	response.sendRedirect(root+"/login/loginok.jsp?name="+URLEncoder.encode(name, "EUC-KR"));
}
else{ 
	response.sendRedirect(root+"/login/loginfail.jsp");
}
%>