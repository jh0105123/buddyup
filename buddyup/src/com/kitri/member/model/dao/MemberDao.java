package com.kitri.member.model.dao;

import java.util.List;
import java.util.Map;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.MemberDto;
import com.kitri.member.model.ZipDto;

public interface MemberDao {
	
	int idCheck(String id);
	List<ZipDto> zipSearch(String dong);
	int registerMember(MemberDetailDto memberDetailDto);
	MemberDto login(Map<String, String> map);	
}
