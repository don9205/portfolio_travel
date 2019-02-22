package kr.lee.travel.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.lee.travel.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;

	@RequestMapping(value = "/bbs/travel_board", method = RequestMethod.GET)
	public String boardGet(Model model) {

		return "/bbs/travel_board";
	}
	
	@RequestMapping(value = "/bbs/travel_board", method = RequestMethod.POST)
	public String boardPost(Model model, String search) {

		model.addAttribute("search", search);
		System.out.println(search);
		
		return "/bbs/travel_board";
	}
	
	
	@RequestMapping(value = "/bbs/travel_board_register", method = RequestMethod.GET)
	public String board_regiGet(Model model) {

		return "/bbs/travel_board_register";
	}
	
	
}
