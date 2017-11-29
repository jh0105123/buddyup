package com.kitri.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.MemberDto;
import com.kitri.member.model.ZipDto;
import com.kitri.member.model.service.MemberService;
import com.kitri.member.model.service.MemberServiceImpl;
import com.kitri.util.PageMove;
import com.kitri.util.StringEncoder; 
 
@WebServlet("/user")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private MemberService memberService;
	
	public void init() {
		memberService = new MemberServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String root = request.getContextPath();
		
		String act = request.getParameter("act");
		System.out.println("act ==== " + act);
		if("mvjoin".equals(act)) {
			PageMove.redirect(request, response, "/join/member.jsp");
		} else if("mvlogin".equals(act)) {
			PageMove.redirect(request, response, "/login/login.jsp");
		} else if("mvidck".equals(act)) {
			PageMove.redirect(request, response, "/join/idcheck.jsp");
		} else if("mvzip".equals(act)) {
			PageMove.redirect(request, response, "/join/zipsearch.jsp");
		} else if("idcheck".equals(act)) {
			String id = request.getParameter("id");
//			System.out.println("검색 아이디 : " + id);
			int idcount = memberService.idCheck(id);
//			System.out.println("검색 아이디 갯수 : " + idcount);
			PageMove.redirect(request, response, "/join/idcheck.jsp?id=" + id + "&idcount=" + idcount);
		} else if("zipsearch".equals(act)) {
			String dong = StringEncoder.isoToEuc(request.getParameter("dong"));
//			System.out.println("검색 동 : " + dong);
			List<ZipDto> list = memberService.zipSearch(dong);
//			System.out.println("검색동 갯수 : " + list.size());//검색동 갯수 : 129
			request.setAttribute("sdong", dong);
			request.setAttribute("ziplist", list);
			PageMove.forward(request, response, "/join/zipsearch.jsp");
		} else if("register".equals(act)) {
			MemberDetailDto memberDetailDto = new MemberDetailDto();
			memberDetailDto.setId(request.getParameter("id"));
			memberDetailDto.setName(request.getParameter("name"));
			memberDetailDto.setPass(request.getParameter("pass"));
			memberDetailDto.setEmail1(request.getParameter("email1"));
			memberDetailDto.setEmail1(request.getParameter("email2"));
			memberDetailDto.setTel1(request.getParameter("tel1"));
			memberDetailDto.setTel2(request.getParameter("tel2"));
			memberDetailDto.setTel3(request.getParameter("tel3"));
			memberDetailDto.setZip1(request.getParameter("zip1"));
			memberDetailDto.setZip2(request.getParameter("zip2"));
			memberDetailDto.setAddr1(request.getParameter("addr1"));
			memberDetailDto.setAddr2(request.getParameter("addr2"));

			int cnt = memberService.registerMember(memberDetailDto);
			if(cnt != 0) {
				request.setAttribute("userInfo", memberDetailDto);
				PageMove.forward(request, response, "/join/registerok.jsp");
			} else {
				PageMove.redirect(request, response, "/join/registerfail.jsp");
			}
		} else if("login".equals(act)) {
			String id = request.getParameter("id");
			String pass = request.getParameter("pass");
			MemberDto memberDto = memberService.login(id, pass);
			
			if(memberDto != null) {
				
				///////////////////////cookie////////////////////////////////
				
				String idsv = request.getParameter("idsv");
				if("saveid".equals(idsv)) {// id저장을체크햇다면..
					Cookie cookie = new Cookie("nid_sid", id);
					cookie.setPath(root);
					cookie.setMaxAge(60*60*24*365*50);
					response.addCookie(cookie);
				}else {
					Cookie cookie[] = request.getCookies();
					if(cookie != null){
						int len = cookie.length;
						for(int i=0; i<len; i++){
							if("nid_sid".equals(cookie[i].getName())){
								cookie[i].setMaxAge(0);
								//cookie[i].setPath(root);
								response.addCookie(cookie[i]);
								break;
							}
						}
					}
				}
				///////////////////////////////////////////////////////////////////////////////
				
				
				//////////////////////////////////////session////////////////////////////////
				
				HttpSession session = request.getSession();
				session.setAttribute("userInfo", memberDto);
				//////////////////////////////////////////////////////////////////////////////
			//	request.setAttribute("userInfo", memberDto);
				PageMove.forward(request, response, "/index.jsp");
			}else {
				
				PageMove.redirect(request, response, "/login/loginfail.jsp");
			}
		} else if("maillist".equals(act)) {
			PageMove.forward(request, response, "/mail/list.jsp");
		}else if("".equals(act)) {
			
		}else if("logout".equals(act)) {
			HttpSession session = request.getSession();
			//session.setAttribute("userInfo", null);
			session.removeAttribute("userInfo");
			PageMove.redirect(request, response, "/index.jsp");
	//		session.invalidate(); //전부 다지워라
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		doGet(request, response);
	}

}
