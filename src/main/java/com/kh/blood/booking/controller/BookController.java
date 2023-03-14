package com.kh.blood.booking.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.blood.booking.domain.Book;
import com.kh.blood.booking.service.BookService;

@Controller
public class BookController {

	@Autowired
	private BookService bService;
	
	/* 헌혈예약 등록화면 */
	@RequestMapping(value="/book/reserveView.bld", method=RequestMethod.GET)
	public String bookView() {
		return "book/booking";
	}
	
	/* 헌혈예약 등록 */
	@RequestMapping(value="/book/reserve.bld", method=RequestMethod.POST)
	public String bookRegister(
			@ModelAttribute Book book
			, HttpServletRequest request
			, Model model) {
		try {
			book.setMemberId("khuser01"); // replace this.
			book.setpNo(11);
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
			Model model) {
		List<Book> bList = bService.selectBookList();
		model.addAttribute("bList", bList);
		return "book/bookingList";
		
	}
	
	
	
	
	
	
}
