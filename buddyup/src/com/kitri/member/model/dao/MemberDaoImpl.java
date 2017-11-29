package com.kitri.member.model.dao;

import java.sql.*;
import java.util.*;

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
			pstmt = conn.prepareStatement(sql);//conn.createStatement();
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();//stmt.executeUpdate(sql);
			rs.next();
			idcount = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return idcount; 
	}

	@Override
	public List<ZipDto> zipSearch(String dong) {
		List<ZipDto> list = new ArrayList<ZipDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "select substr(zipcode, 1, instr(zipcode, '-') - 1) zip1, \r\n" + 
					"		substr(zipcode, instr(zipcode, '-') + 1) zip2, \r\n" + 
					"		sido, gugun, dong, nvl(bunji, ' ') bunji\r\n" + 
					"from zipcode\r\n" + 
					"where dong like ?||'%'";//dong + "%"
			pstmt = conn.prepareStatement(sql);//conn.createStatement();
			pstmt.setString(1, dong);
			rs = pstmt.executeQuery();//stmt.executeUpdate(sql);
			while(rs.next()) {
				ZipDto zipDto = new ZipDto();
				zipDto.setZip1(rs.getString("zip1"));
				zipDto.setZip2(rs.getString("zip2"));
				zipDto.setSido(rs.getString("sido"));
				zipDto.setGugun(rs.getString("gugun"));
				zipDto.setDong(rs.getString("dong"));
				zipDto.setBunji(rs.getString("bunji"));
				
				list.add(zipDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return list;
	}

	@Override
	public int registerMember(MemberDetailDto memberDetailDto) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			String sql = "";
			sql += "insert all \n";
			sql += "	into member (id, name, pass, email1, email2, joindate) \n";
			sql += "	values (?, ?, ?, ?, ?, sysdate) \n";
			sql += "	into member_detail (id, tel1, tel2, tel3, zip1, zip2, addr1, addr2) \n";
			sql += "	values (?, ?, ?, ?, ?, ?, ?, ?) \n";
			sql += "select * from dual \n";
			System.out.println(sql);
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
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
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
			sql += "select id, name, email1,email2 \n";
			sql += "from member \n";
			sql += "where id = ? and pass = ?";
			pstmt = conn.prepareStatement(sql);//conn.createStatement();
			pstmt.setString(1, map.get("userid"));
			pstmt.setString(2, map.get("userpwd"));
			rs = pstmt.executeQuery();//stmt.executeUpdate(sql);
			if(rs.next()) {
				memberDto = new MemberDto();
				memberDto.setId(rs.getString("id"));
				memberDto.setName(rs.getString("name"));
				memberDto.setEmail1(rs.getString("email1"));
				memberDto.setEmail2(rs.getString("email2"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			memberDto = null;
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return memberDto;
	}

}










