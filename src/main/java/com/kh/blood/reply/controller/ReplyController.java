package com.kh.blood.reply.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.blood.member.domain.Member;
import com.kh.blood.reply.domain.Reply;
import com.kh.blood.reply.service.ReplyService;

@Controller
public class ReplyController {
	
	@Autowired
	private ReplyService rService;
	

}