package com.kitri.member.model.dao;

import java.util.List;
import java.util.Map;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.MemberDto;
import com.kitri.member.model.ZipDto;

public interface MemberDao {
	
	public int idCheck(String id);
	public List<ZipDto> zipSearch(String dong);
	public int registerMember(MemberDetailDto memberDetailDto);
	public MemberDto login(Map<String,String> map);
}
