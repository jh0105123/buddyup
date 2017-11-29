package com.kitri.member.model.service;

import java.util.List;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.MemberDto;
import com.kitri.member.model.ZipDto;

public interface MemberService {
	
	int idCheck(String id);
	List<ZipDto> zipSearch(String dong);
	int registerMember(MemberDetailDto memberDetailDto);
	
	MemberDto login(String id, String pass);

}
