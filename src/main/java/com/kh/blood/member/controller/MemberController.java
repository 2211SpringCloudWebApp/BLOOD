package com.kh.blood.member.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.blood.member.domain.Member;
import com.kh.blood.member.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;

	// 회원가입 화면 
	@RequestMapping(value="/member/register.bld", method=RequestMethod.GET)
 	public String registerView(){
		return "member/register";
	}
	
	//버튼 누를 때 - 멤버 등록
	@RequestMapping(value="/member/register.bld", method=RequestMethod.POST)
	public String memberRegister(
			HttpServletRequest request
			, @RequestParam("member-id") String memberId
			, @RequestParam("member-pw") String memberPw
			, @RequestParam("member-name") String memberName
			, @RequestParam("member-kn") String memberKn
			, @RequestParam("bloodtype") String bloodType
			, @RequestParam("member-email") String memberEmail
			, @RequestParam("member-addr") String memberAddr
			, @RequestParam("member-phone") String memberPhone
			, Model model) {
		try {
			Member mParam = new Member(memberId, memberPw,
					memberName, memberKn, bloodType, memberEmail,
					memberAddr, memberPhone);
			int result = mService.insertMember(mParam);
			if(result > 0) {
				return "redirect:/index.jsp";
			}else {
				model.addAttribute("msg","회원가입이 완료되지않았습니다");
				return "common/error.jsp";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			model.addAttribute("msg", e.getMessage());
			return "common/error";
		}
	}
	
	// 로그인 화면
	@RequestMapping(value="/member/login.bld", method=RequestMethod.GET)
 	public String loginView(){
		return "member/login";
	}
	
	// 멤버 로그인
	@RequestMapping(value="/member/login.bld", method=RequestMethod.POST)
	public String memberLogin(HttpServletRequest request
			, @RequestParam("member-id") String memberId
			, @RequestParam("member-pw") String memberPw
			, Model model) {
		try {
//			String memberId = request.getParameter("member-id");
//			String memberPw = request.getParameter("member-pw");
			Member mParam = new Member(memberId, memberPw);
			Member member = mService.checkMemberLogin(mParam);
			HttpSession session = request.getSession();
			if(member != null) {
				session.setAttribute("loginUser", member);
				return "redirect:/index.jsp";
			}else {
				model.addAttribute("msg", "로그인정보가 존재하지않습니다");
				return "common/error";
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			model.addAttribute("msg", e.getMessage());
			return "common/error";
		}
	}
		
		//멤버 로그아웃
		@RequestMapping(value="/member/logout.bld", method=RequestMethod.GET)
		public String memberLogout(HttpSession session, Model model) {
			if(session != null) {
				session.invalidate();
				return "redirect:/index.jsp";
			}else {
				model.addAttribute("msg", "로그아웃을 완료하지 못했습니다.");
				return "common/error";
			}
	}
		//마이페이지
		@RequestMapping(value="/member/mypage.bld", method= {RequestMethod.GET, RequestMethod.POST})
		public String showMypage(HttpSession session,Model model) {
			Member mOne = (Member)session.getAttribute("loginUser");
			String memberId = mOne.getMemberId();
			Member member = mService.selectOneById(memberId);
			model.addAttribute("member", member);
			return "member/mypage";
		}
		// 정보수정
		@RequestMapping(value="/member/modify.bld", method=RequestMethod.POST)
		public String memberModify(@ModelAttribute Member member, Model model) {
			try {
				int result = mService.updateMember(member);
				if(result > 0) {
					return "redirect:/index.jsp";
				}else {
					model.addAttribute("msg","정보 수정이 완료되지 않았습니다.");
					return "common/error";
				}
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("msg", e.getMessage());
				return "common/error";
			} 
		}
		//회원탈퇴
		@RequestMapping(value="/member/out.bld", method=RequestMethod.GET)
		public String memberRemove(HttpSession session, @RequestParam("memberId") String memberId, Model model) {
			try {
				int result = mService.deleteMember(memberId);
				if(result > 0) {
					session.invalidate();
					return "redirect:/index.jsp";
				}else {
					model.addAttribute("msg","탈퇴가 완료되지 않았습니다.");
					return "common/error";
				}
			} catch (Exception e) {
				model.addAttribute("msg", e.getMessage());
				return "common/error";
			} 
		}
		// 멤버 아이디 찾기 페이지 이동
		@RequestMapping(value= "/member/findId.bld",method= RequestMethod.GET)
		public String memberFindIdPage() {
			return "member/findId";
		}
		
		// 멤버 아이디 찾기
		@RequestMapping(value = "/member/findId.bld", method = RequestMethod.POST)
		public String memberFindId(
				String memberName
				,String memberKn
				, Model model
				) {
			try {
				Member mParam = new Member();
				mParam.setMemberName(memberName);
				mParam.setMemberKn(memberKn);
				Member member = mService.findId(mParam);
				model.addAttribute("member" , member);
					return "member/findIdAfter";
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("message",e.getMessage());
				return "common/error";
			}
		}
		// 멤버 비밀번호 찾기 페이지 이동
		@RequestMapping(value= "/member/findPw.bld" , method = RequestMethod.GET)
		public String memberFindPwPage() {
			return "member/findPw";
		}
		// 멤버 비밀번호 찾기
		@RequestMapping(value = "/member/findPw.bld" , method = RequestMethod.POST)
		public String memberFindPw(
				String memberName
				,String memberId
				,String memberKn
				, Model model
				) {
			try {
				Member mParam = new Member(memberName,memberId,memberKn);
				System.out.println(mParam);
				Member member = mService.findPw(mParam);
				//System.out.println(member);
				model.addAttribute("member", member);
					return "member/login";
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("message" ,e.getMessage());
				return "common/error";
			}
		}
}

