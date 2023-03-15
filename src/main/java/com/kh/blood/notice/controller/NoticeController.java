package com.kh.blood.notice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.blood.notice.domain.Notice;
import com.kh.blood.notice.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService nService;
	
	// 자유게시판 목록
	@RequestMapping(value="/notice/free.bld", method=RequestMethod.GET)
	public String free(Model model) {
		List<Notice> nList = nService.selectNotice();
		
		model.addAttribute("nList", nList);
		return "notice/notice";
	}
	
	// FAQ 등록 화면
	@RequestMapping(value="/notice/freeWriteView.bld", method=RequestMethod.GET)
	public String writeView() {
		return "notice/noticeWrite";
	}	
	
	
	
	
}
