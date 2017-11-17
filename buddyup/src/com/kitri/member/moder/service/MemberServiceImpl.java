package com.kitri.member.moder.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.MemberDto;
import com.kitri.member.model.ZipDto;
import com.kitri.member.model.dao.MemberDao;
import com.kitri.member.model.dao.MemberDaoImpl;

public class MemberServiceImpl implements MemberService {

	private MemberDao memberDao;
	
	public MemberServiceImpl() {
		memberDao = new MemberDaoImpl();
	}
	
	
	@Override
	public int idCheck(String id) {
		// TODO Auto-generated method stub
		return memberDao.idCheck(id);
	}

	@Override
	public List<ZipDto> zipSearch(String dong) {
		// TODO Auto-generated method stub
		return memberDao.zipSearch(dong);
	}

	@Override
	public int registerMember(MemberDetailDto memberDetailDto) {
		// TODO Auto-generated method stub
		return memberDao.registerMember(memberDetailDto);
	}

	@Override
	public MemberDto login(String id, String pass) {
		Map<String, String> map = new HashMap<String,String>();
		map.put("userid", id);
		map.put("userpwd", pass);
		return memberDao.login(map);
	}

}
