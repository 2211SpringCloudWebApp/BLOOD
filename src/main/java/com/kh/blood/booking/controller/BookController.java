package com.kh.blood.booking.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.blood.booking.domain.Book;
import com.kh.blood.booking.domain.Place;
import com.kh.blood.booking.domain.Search;
import com.kh.blood.booking.service.BookService;
import com.kh.blood.booking.service.PlaceService;
import com.kh.blood.member.domain.Member;
import com.kh.blood.member.service.MemberService;

@Controller
public class BookController {

	@Autowired
	private BookService bService;
	@Autowired
	private PlaceService pService;

	
	
	/* 헌혈자인증 화면 */
	@RequestMapping(value="/book/identityView.bld", method=RequestMethod.GET)
	public String certifyView(
			HttpSession session
			, Model model) {
		Member member = (Member)session.getAttribute("loginUser");
		if(member == null) {
			model.addAttribute("msg", "로그인 후 이용해주세요");
			model.addAttribute("url", "/member/login.bld");
			return "common/alert";
		}
		return "book/certify";
	}
	
	/* 헌혈자 인증 */
	@RequestMapping(value="/book/identity.bld", method=RequestMethod.POST)
    public String bookCertify(
    		HttpServletRequest request
    		, String memberId
    		,@RequestParam("member-name") String memberName
    		,@RequestParam("member-kn-1") String memberKn1
    		,@RequestParam("member-kn-2") String memberKn2
            , Model model) {
		try {
			// 콘솔확인용~~
			System.out.println(memberKn1 + "," + memberKn2);
			
			
			Member mParam = new Member();
			mParam.setMemberName(memberName);
			mParam.setMemberKn(memberKn1 + "," + memberKn2);
			
			Member member = bService.selectBookCertify(mParam);
			if (member != null) {
				if (member.getMemberId().equals(memberId)) {
					model.addAttribute("loginUser", member);
					return "book/booking";					
				} else {
					model.addAttribute("msg", "헌혈자인증에 실패하였습니다. 이름과 주민등록번호를 확인해주세요");
					return "common/error";
				}
			} else {
				model.addAttribute("msg", "헌혈자인증에 실패하였습니다. 이름과 주민등록번호를 확인해주세요");
				return "common/error";
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message",e.getMessage());
			return "common/error";
		}
		
	}
	
	
//	@RequestMapping(value="/book/identity.bld", method=RequestMethod.POST)
//	public String bookCertify(
//			HttpServletRequest request
//			,String memberId
//			, Model model) {
//		try {
//			Member mParam = new Member();
//			mParam.setMemberId(memberId);
//			
//			Member member = bService.selectBookCertify(memberId);
//			//model.addAttribute("member", member);
//			
//			HttpSession session = request.getSession();
//			if(member != null) {
//				session.setAttribute("loginUser", member);
//				return "book/booking";
//			}else {
//				model.addAttribute("msg", "헌혈자인증에 실패하였습니다. 이름과 주민등록번호를 확인해주세요");
//				return "common/error";
//			}
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//			model.addAttribute("message",e.getMessage());
//			return "common/error";
//		}
//		
//	}
//		
    
	
	
	/* 헌혈예약 등록화면 */
//	@RequestMapping(value="/book/reserveView.bld", method=RequestMethod.GET)
//	public String bookView(
//			HttpSession session
//			, Model model) {
//		Member member = (Member)session.getAttribute("loginUser");
//		if(member == null) {
//			model.addAttribute("msg", "로그인 후 이용해주세요");
//			model.addAttribute("url", "/member/login.bld");
//			return "common/alert";
//		}
//		return "book/booking";
//	}
	
	/* 헌혈예약 등록 */
	@RequestMapping(value="/book/reserve.bld", method=RequestMethod.POST)
	public String bookRegister(
			@ModelAttribute Book book
			, HttpSession session
			, Model model) {
		try {
			Member member = (Member)session.getAttribute("loginUser");
			String memberId = member.getMemberId();
			book.setMemberId(memberId); // replace this.
			int result = bService.insertBook(book);
			if(result > 0) {
				return "redirect:/book/reservelistView.bld";
			}else {
				model.addAttribute("msg", "예약 등록에 실패하였습니다.");
				return "common/error";
			}
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", e.getMessage());
			return "common/error";
		}
	}
	
	
	
	/* 헌혈예약 목록 조회 */
	@RequestMapping(value="/book/reservelistView.bld", method=RequestMethod.GET)
	public String bookListView(
			HttpSession session
			, Model model) {
//		String memberId = "khuser01";	// Member When Completed
		Member member = (Member)session.getAttribute("loginUser");
		if (member == null) {
			model.addAttribute("msg", "로그인 후 이용해주세요");
			model.addAttribute("url", "/member/login.bld");
			return "common/alert";
		}
		String memberId = member.getMemberId();
		List<Book> bList = bService.selectBookList(memberId);
		if(bList != null) {
			model.addAttribute("bList", bList);
			return "book/bookingList";
		}else {
			model.addAttribute("msg", "예약내역이 존재하지 않습니다.");
			return "common/error";
		}
		/*
		 * model.addAttribute("bList", bList); return "book/bookingList";
		 */
	}
	
	
/******* 헌혈의집 선택 PART ********/
	
	/* 헌혈의집 GunGu 조회 */
	@RequestMapping(value="/book/gunGulistView.bld", method=RequestMethod.GET)
	public String gunGulistView(
			@RequestParam("pCity") String pCity
			, Model model) {
		List<String> siList = pService.selectSiList();
		List<String> gunGuList = pService.selectGunguList(pCity);
		model.addAttribute("pCity", pCity);
		model.addAttribute("siList", siList);
		model.addAttribute("gunGuList", gunGuList);
		return "book/placeList";
	}

	/* 헌혈의집 목록 */
	@RequestMapping(value="/book/placelistView.bld", method=RequestMethod.GET)
	public String placeListView(
			HttpSession session
			, @ModelAttribute Search search
			//, @RequestParam("pCity") String pCity
			, Model model) {
		if(search.getpCity() != null && search.getpCountry() != null) {
			List<Place> pList = pService.selectPlaceList(search);
			model.addAttribute("pList", pList);
		}
		List<String> siList = pService.selectSiList();
		List<String> gunGuList = pService.selectGunguList(search.getpCity());
		model.addAttribute("siList", siList);
		model.addAttribute("gunGuList", gunGuList);
		return "book/placeList";
		
	}
	
	
	
	
	/* 헌혈의집 검색 */
	@RequestMapping(value="/book/searchView.bld", method=RequestMethod.GET)
	public String placeSearchView(
			HttpSession session
			, @ModelAttribute Search search
			, Model model) {
		try {
			// 동적 쿼리
			System.out.println(search.toString());
			
			List<Place> searchResult = pService.selectListByKeyowrd(search);
			if(!searchResult.isEmpty()) {
				model.addAttribute("search", search);
				model.addAttribute("searchResult", searchResult);
				return "book/placeList";
			}else {
				 model.addAttribute("msg", "조회에 실패하였습니다.");
				 return "common/error";

				/*alert("해당 정보가 존재하지 않습니다.");*/
			}
		}catch (Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/error";
		}
	}
	
	
	
}
