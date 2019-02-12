package kr.lee.travel.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController {

	@RequestMapping(value = "/bbs/travel_board", method = RequestMethod.GET)
	public String mainGet(Model model) {

		return "/bbs/travel_board";
	}
	
	
}
