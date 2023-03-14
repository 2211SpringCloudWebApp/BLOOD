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
import com.kh.blood.booking.service.BookService;
import com.kh.blood.booking.service.PlaceService;

@Controller
public class BookController {

	@Autowired
	private BookService bService;
	//@Autowired
	private PlaceService pService;
	
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
			request.setCharacterEncoding("UTF-8");
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
			HttpSession session
			, Model model) {
		String memberId = "khuser01";	// Member When Completed
		List<Book> bList = bService.selectBookList(memberId);
		model.addAttribute("bList", bList);
		return "book/bookingList";
		
	}
	
	
	
	/* 헌혈의집 목록 조회 */
	@RequestMapping(value="/book/placelistView.bld", method=RequestMethod.GET)
	public String placeListView(
			HttpSession session
			, Model model) {
		List<Place> pList = pService.selectPlaceList();
		model.addAttribute("pList", pList);
		return "book/placeList";
	}
	
	
	
	
	
}