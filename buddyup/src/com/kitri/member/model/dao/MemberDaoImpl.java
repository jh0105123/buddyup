package com.kitri.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.MemberDto;
import com.kitri.member.model.ZipDto;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;

public class MemberDaoImpl implements MemberDao {
	
	@Override
	public int idCheck(String id) {
		int idcount = 1;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select count(id) \n";
			sql += "from member \n";
			sql += "where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			rs.next();
			idcount = rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBClose.close(conn, pstmt, rs);
		}
		return idcount;
	}
	
	@Override
	public List<ZipDto> zipSearch(String dong) {
		
		int zipcount = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<ZipDto> list = new ArrayList<ZipDto>();
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select  substr(zipcode,1,3) zip1, substr(zipcode,5,8) zip2,sido,gugun,dong,bunji \n";
			sql += "from zipcode \n"; //
			sql += "where dong like ?||'%'";//"dong%"
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dong);
			rs = pstmt.executeQuery();
			while(rs.next()){
				ZipDto zd = new ZipDto();
				zd.setZiq1(rs.getString(1));
				zd.setZiq2(rs.getString(2));
				zd.setSido(rs.getString(3));
				zd.setGugun(rs.getString(4));
				zd.setDong(rs.getString(5));
				zd.setBunji(rs.getString(6));
				list.add(zd);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			DBClose.close(conn, pstmt, rs);
		}
		return list;
	}
	
	@Override
	public int registerMember(MemberDetailDto memberDetailDto) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		int cnt = 0;
		try{
		conn = DBConnection.makeConnection();
		String sql = "";
		sql += " insert All into member values(?, ?, ?, ?, ?, sysdate) \n";
		sql += " into member_detail values(?, ?, ?, ?, ?, ?, ?, ?) \n";
		sql += " select * from dual ";
		pstmt = conn.prepareStatement(sql);
		int idx = 0;
		pstmt.setString(++idx, memberDetailDto.getId());
		pstmt.setString(++idx, memberDetailDto.getName());
		pstmt.setString(++idx, memberDetailDto.getPass());
		pstmt.setString(++idx, memberDetailDto.getEmail1());
		pstmt.setString(++idx, memberDetailDto.getEmail2());
		pstmt.setString(++idx, memberDetailDto.getId());
		pstmt.setString(++idx, memberDetailDto.getTel1());
		pstmt.setString(++idx, memberDetailDto.getTel2());
		pstmt.setString(++idx, memberDetailDto.getTel3());
		pstmt.setString(++idx, memberDetailDto.getZip1());
		pstmt.setString(++idx, memberDetailDto.getZip2());
		pstmt.setString(++idx, memberDetailDto.getAddr1());
		pstmt.setString(++idx, memberDetailDto.getAddr2());
		cnt = pstmt.executeUpdate();
		}catch(SQLException e){
			e.getStackTrace();
		}finally{
			DBClose.close(conn, pstmt);
		}
		System.out.println("dog ===" + cnt);
		return cnt;
	}
	
	
	@Override
	public MemberDto login(Map<String, String> map) {
		MemberDto memberDto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select id,name,email1,email2 \n";
			sql += "from member \n";
			sql += "where id = ? and pass = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, map.get("userid"));
			pstmt.setString(2, map.get("userpwd"));
			rs = pstmt.executeQuery();
			if(rs.next()){
				memberDto = new MemberDto();
				memberDto.setId(rs.getString("id"));
				memberDto.setName(rs.getString("name"));
				memberDto.setEmail1(rs.getString("email1"));
				memberDto.setEmail2(rs.getString("email2"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			memberDto =null;//Dto는 있는데 email이라는 값이 들어가면 정상적인 값이 아님
		}finally {
			DBClose.close(conn, pstmt, rs);
		}
		return memberDto;
	}
}
