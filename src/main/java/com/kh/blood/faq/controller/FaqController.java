package com.kh.blood.faq.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.blood.faq.domain.Faq;
import com.kh.blood.faq.domain.Find;
import com.kh.blood.faq.service.FaqService;

@Controller
public class FaqController {
	
	@Autowired
	private FaqService fService;
	
	// 커뮤니티 클릭 시 이동화면
	@RequestMapping(value="/board/allChoice.bld", method=RequestMethod.GET)
	public String allChoice() {
		return "board/all";
	}
	
	// FAQ 목록
	@RequestMapping(value = "/board/faq.bld", method=RequestMethod.GET)
	public String faqBorad(Model model) {
		List<Faq> fList = fService.selectFaq();
		
		model.addAttribute("fList", fList);
		
		return "board/faq";
	}

	// FAQ 등록 화면
	@RequestMapping(value="/board/faqWriteView.bld", method=RequestMethod.GET)
	public String writeView() {
		return "board/faqWrite";
	}	
	
	// FAQ 등록
	@RequestMapping(value="/board/faqWrite.bld", method=RequestMethod.POST)
	public String faqRegister(
			@ModelAttribute Faq faq
			, HttpServletRequest request
			, Model model) {
		int result = fService.insertFaq(faq);
		if(result > 0) {
			return "redirect:/board/faq.bld";	
		}else {
			model.addAttribute("msg", "등록실패");
			return "";
		}
	}
	
	// 공지사항 상세페이지
	@RequestMapping(value="/faq/detail.bld", method=RequestMethod.GET)
	public String faqDetailView(@RequestParam("faqNo") int faqNo, Model model) {
		try {
			Faq faq = fService.selectOneById(faqNo);
			model.addAttribute("faq", faq);
			return "board/faqDetail";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", e.getMessage());
			return "";
		}
	}
		// 공지사항 키워드 검색
		@RequestMapping(value="/faq/search.bld", method=RequestMethod.GET)
		public String faqSearchView(
				@ModelAttribute Find find
//				@RequestParam("searchValue") String keyword
//				, @RequestParam("searchCondition") String condition
				, Model model) {
			
			try {
				List<Faq> searchList = fService.seleListByKeyword(find);
				
				if(!searchList.isEmpty()) {
					model.addAttribute("find", find);
					model.addAttribute("sList", searchList);
					return "board/faqSearch";
				}else {
					model.addAttribute("msg", "조회에 실패하였습니다.");
					model.addAttribute("url", "/board/faq.bld");
					
					return "common/alert";
				}
			} catch (Exception e) {
				model.addAttribute("msg", e.getMessage());
				return "common/error";
			}
		}
	
	
	 // FAQ 삭제
	@RequestMapping(value="/board/faqRemove.bld", method=RequestMethod.GET)
	public String faqRemove(@RequestParam("faqNo") int faqNo, Model model) {
		int result = fService.deleteFaq(faqNo);
		return "redirect:/board/faq.bld";
		
	}
}
