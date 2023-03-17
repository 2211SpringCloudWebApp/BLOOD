package com.kh.blood.notice.controller;

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
import org.springframework.web.multipart.MultipartFile;

import com.kh.blood.faq.domain.Faq;
import com.kh.blood.faq.domain.Find;
import com.kh.blood.member.domain.Member;
import com.kh.blood.notice.domain.Notice;
import com.kh.blood.notice.domain.PageIn;
import com.kh.blood.notice.domain.Search;
import com.kh.blood.notice.service.NoticeService;



@Controller
public class NoticeController {

	@Autowired
	private NoticeService nService;
	
	// 자유게시판 목록
	@RequestMapping(value="/notice/free.bld", method=RequestMethod.GET)
	public String free(
			Model model,
			@RequestParam(value="page", required=false, defaultValue="1") Integer page) {
		int totalCount = nService.getListCount();
		PageIn pi = this.getPageIn(page, totalCount);
		List<Notice> nList = nService.selectNotice(pi);		
		model.addAttribute("pi", pi);
		model.addAttribute("nList", nList);
		return "notice/notice";
	}
	
	// 자유게시판 등록 화면
	@RequestMapping(value="/notice/freeWriteView.bld", method=RequestMethod.GET)
	public String writeView() {
		return "notice/noticeWrite";
	}	
	
	// 자유게시판 등록
	@RequestMapping(value="/notice/freeWrite.bld", method=RequestMethod.POST)
	public String noticeRegister(
			@ModelAttribute Notice notice
			, HttpServletRequest request
			, Model model, HttpSession session) {
		Member member = (Member)session.getAttribute("loginUser");
		notice.setMemberId(member.getMemberId());
		
		int result = nService.insertNotice(notice);
		
		if(result > 0) {
			return "redirect:/notice/free.bld";
		}else {
			model.addAttribute("msg", "실패");
			return "common/error";
		}
	}
	
	// 자유게시판 상세페이지
	@RequestMapping(value="/notice/detail.bld", method=RequestMethod.GET)
	public String faqDetailView(@RequestParam("noticeNo") int noticeNo, Model model) {
		try {
			Notice notice = nService.selectOneById(noticeNo);
			model.addAttribute("notice", notice);
			return "notice/noticeDetail";
			
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", e.getMessage());
			return "common/error";
		}
	}
	
	//자유게시판 수정화면
	@RequestMapping(value="/notice/modifyView.bld", method = RequestMethod.GET)
	public String noticeModifyView(@RequestParam("noticeNo") Integer noticeNo, Model model) {
		try {
			Notice notice = nService.selectOneById(noticeNo);
			if(notice != null) {
				model.addAttribute("notice", notice);
				return "notice/noticeModify";
			}else {
				model.addAttribute("msg", "데이터 조회 실패하였습니다.");
				return "common/error";
			}	
			
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", e.getMessage());
			return "common/error";
		}
	}
	
	// 자유게시판 수정
	@RequestMapping(value="/notice/modify.bld", method=RequestMethod.POST)
	public String noticeModify(@ModelAttribute Notice notice, Model model) {
		try {
			int result = nService.updateNotice(notice);
			if(result > 0) {
				return "redirect:/notice/detail.bld?noticeNo="+notice.getNoticeNo();
			}else {
				model.addAttribute("msg", "공지사항 수정 실패");
				return "common/error";
			}
		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/error";
		}
	}
	
	
	// 자유게시판 검색
	@RequestMapping(value="/notice/search.bld", method=RequestMethod.GET)
	public String noticeSearchView(
			@ModelAttribute Search search
			, @RequestParam(value="page", required=false, defaultValue="1") Integer currentPage
			, Model model) {
		try {
			int totalCount = nService.getListCount(search);
			PageIn pi = this.getPageIn(currentPage, totalCount);
			List<Notice> searchList = nService.selectListByKeyword(pi, search);
			if(!searchList.isEmpty()) {
				model.addAttribute("search", search);
				model.addAttribute("pi", pi);
				model.addAttribute("nList", searchList);
				return "notice/noticeSearch";
			}else {
					model.addAttribute("msg", "조회에 실패하였습니다.");
					return "/notice/free.bld";
			}
		} catch (Exception e) {
			model.addAttribute("msg", e.getMessage());
			return "common/error	";
		}
	}
	
	private PageIn getPageIn(Integer currentPage, int totalCount) {
		PageIn pi = null;
		int boardLimit = 10;
		int naviLimit = 5;
		int maxPage;
		int startNavi;
		int endNavi;
		
		maxPage = (int)((double)totalCount/boardLimit+0.9);
		// Math.ceil((double)totalCount/boardLimit);
		startNavi = (((int)((double)currentPage/naviLimit+0.9))-1)*naviLimit+1;
		endNavi = startNavi + naviLimit - 1;
		if(endNavi > maxPage) {
			endNavi = maxPage;
		}
		pi = new PageIn(currentPage, boardLimit, naviLimit, startNavi, endNavi, totalCount, maxPage);
		return pi;
	}

	// 자유게시판 삭제
	@RequestMapping(value="/notice/freeRemove.bld", method=RequestMethod.GET)
	public String noticeRemove(@RequestParam("noticeNo") int noticeNo, Model model) {
		int result = nService.deleteNotice(noticeNo);
		return "redirect:/notice/free.bld";
	}
}
