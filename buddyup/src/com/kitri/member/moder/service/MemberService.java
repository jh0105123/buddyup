package com.kitri.member.moder.service;

import java.util.List;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.MemberDto;
import com.kitri.member.model.ZipDto;

public interface MemberService {
	
	public int idCheck(String id);
	public List<ZipDto> zipSearch(String dong);
	public int registerMember(MemberDetailDto memberDetailDto);
	public MemberDto login(String id, String pass);
}
