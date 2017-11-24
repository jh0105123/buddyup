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
import com.kitri.member.moder.service.MemberService;
import com.kitri.member.moder.service.MemberServiceImpl;
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
		System.out.println("act==" + act);
		
		if("mvjoin".equals(act)){
			PageMove.redirect(request, response, "/join/member.jsp");
		}else if("mvlogin".equals(act)) {
			PageMove.redirect(request, response, "/login/login.jsp");
		}else if("mvidck".equals(act)) {
			PageMove.redirect(request, response, "/join/idcheck.jsp");
		}else if("mvzip".equals(act)) {
			PageMove.redirect(request, response, "/join/zipsearch.jsp");
		}else if("idcheck".equals(act)) {
			String id = request.getParameter("id");
			System.out.println("id ==" + id);
			int idcount = memberService.idCheck(id);
			System.out.println("¸â¹ö ¾ÆÀÌµð °¹¼ö " + idcount);
			response.sendRedirect(root+"/join/idcheck.jsp?id="+ id + "&idcount="+ idcount);
		}else if("zipsearch".equals(act)) {
			String dong = StringEncoder.isoToEuc(request.getParameter("dong"));
			//	new String(request.getParameter("dong").getBytes("ISO-8859-1"),"EUC-KR");
			List<ZipDto> list = memberService.zipSearch(dong);
			request.setAttribute("ziplist", list);
			request.setAttribute("sdong", dong);
			PageMove.forward(request, response, "/join/zipsearch.jsp");
		}else if("register".equals(act)) {
			MemberDetailDto memberDetailDto = new MemberDetailDto();
			memberDetailDto.setName(request.getParameter("name"));
			memberDetailDto.setId(request.getParameter("id"));
			memberDetailDto.setPass(request.getParameter("pass"));
			memberDetailDto.setEmail1(request.getParameter("email1"));
			memberDetailDto.setEmail2(request.getParameter("email2"));
			memberDetailDto.setTel1(request.getParameter("tel1"));
			memberDetailDto.setTel2(request.getParameter("tel2"));
			memberDetailDto.setTel3(request.getParameter("tel3"));
			memberDetailDto.setZip1(request.getParameter("zip1"));
			memberDetailDto.setZip2(request.getParameter("zip2"));
			memberDetailDto.setAddr1(request.getParameter("addr1"));
			memberDetailDto.setAddr2(request.getParameter("addr2"));
			int cnt = memberService.registerMember(memberDetailDto);
			if(cnt != 0){
			 System.out.println("È¸¿ø°¡ÀÔ ¼º°ø");
			 request.setAttribute("userinfo", memberDetailDto);
			 PageMove.forward(request, response, "/join/registerok.jsp");
			}
			else {
				System.out.println("È¸¿ø°¡ÀÔ ½ÇÆÐ");
				PageMove.redirect(request, response, "/join/registerfail.jsp");
			}
		}else if("login".equals(act)) {
			String id = request.getParameter("id");
			String pass = request.getParameter("pass");
			MemberDto memberDto = memberService.login(id, pass);
			
			if(memberDto != null) {
				/////////////////////////////COOKIE///////////////////////////
				String idsv = request.getParameter("idsv");
				if("saveid".equals(idsv)) {
					Cookie cookie = new Cookie("nid_sid",id);
					cookie.setPath(root);
					cookie.setMaxAge(60*60*24*365*50);
					response.addCookie(cookie);
				}
				else {
					Cookie cookie[] = request.getCookies();
					 if(cookie != null){
						 int len = cookie.length;
						 for(int i=0;i<len;i++){
							 if("nid_sid".equals(cookie[i].getName())){
								 cookie[i].setMaxAge(0);
//								 cookie[i].setPath(root); ÀÌÅ¬¸³½º¿¡¼­´Â ÇØ¾ßµÈ´Ù. ¹öÀü 6
								 response.addCookie(cookie[i]);
								 break;
							 }
						 }
					 }
				}
				///////////////////////////////////////////////////////////////
				
				////////////////////////////session/////////////////////////////
				HttpSession session = request.getSession();
<<<<<<< HEAD:membermvc/src/com/kitri/member/controller/MemberController.java
				session.setAttribute("userinfo", memberDto);
				///////////////////////////////////////////////////////////////
//				request.setAttribute("userinfo", memberDto);
//				PageMove.forward(request, response, "/login/loginok.jsp");
				PageMove.redirect(request, response, "/login/loginok.jsp");// ¼¼¼ÇÀº Æ÷¿öµå,¸®´ÙÀÌ·ºÆ® »ó°ü¾ø´Ù.
			}else {
=======
				session.setAttribute("userInfo", memberDto);
				//////////////////////////////////////////////////////////////////////////////
			//	request.setAttribute("userInfo", memberDto);
				PageMove.forward(request, response, "/index.jsp");
			}else {
				
>>>>>>> origin/ê¹€ì„±í•œ:buddyup/src/com/kitri/member/controller/MemberController.java
				PageMove.redirect(request, response, "/login/loginfail.jsp");
			}
		}else if("logout".equals(act)) {
			HttpSession session = request.getSession();
//			session.setAttribute("userinfo", null);
			session.removeAttribute("userinfo");
//			session.invalidate(); ÀüºÎ´Ù Áö¿ö¶ó
		}
		else if("maillist".equals(act)) {
			PageMove.forward(request, response, "/mail/list.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		doGet(request,response);
	}

}
