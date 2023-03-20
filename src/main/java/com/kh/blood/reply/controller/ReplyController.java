package com.kh.blood.reply.controller;

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
import com.kh.blood.notice.domain.Notice;
import com.kh.blood.reply.domain.Reply;
import com.kh.blood.reply.service.ReplyService;

@Controller
public class ReplyController {
	
	@Autowired
	private ReplyService rService;
	
	@RequestMapping(value="/notice/reply.bld", method=RequestMethod.POST)
	public String replyComment(
			@ModelAttribute Reply reply
			, HttpServletRequest request
			, Model model) {
		int noticeNo = reply.getNoticeNo(); 
		if(reply.getMemberId() != null && reply.getMemberId() != "") {
			int result = rService.insertReply(reply);
			if(result > 0) {
				return "redirect:/notice/detail.bld?noticeNo="+noticeNo;
			}else {
				model.addAttribute("msg", "로그인이 필요합니다");
				model.addAttribute("url", "/notice/detail.bld?noticeNo="+noticeNo);
				return "common/alert";
			}
		}else {
			model.addAttribute("msg", "로그인이 필요합니다");
			model.addAttribute("url", "/notice/detail.bld?noticeNo="+noticeNo);
			return "common/alert";
		}

	}
	
	 // 삭제
	@RequestMapping(value="/reply/Remove.bld", method=RequestMethod.GET)
	public String faqRemove(
			@RequestParam("noticeNo") int noticeNo
			,@ModelAttribute Reply reply
			,@ModelAttribute Notice notice
			, @RequestParam("replyNo") int replyNo
			, Model model) {
		
		int result = rService.deleteReply(replyNo);
		System.out.println(result);
		return "redirect:/notice/detail.bld?noticeNo="+noticeNo;
		
	}
}
