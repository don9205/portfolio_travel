package kr.lee.travel.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.lee.travel.pagenation.Criteria;
import kr.lee.travel.pagenation.PageMaker;
import kr.lee.travel.dao.BoardDao;
import kr.lee.travel.service.BoardService;
import kr.lee.travel.vo.AccountVo;
import kr.lee.travel.vo.BoardVo;

@Controller
public class BoardController{


	@Autowired
	BoardService boardService;

	@Autowired
	BoardDao boardDao;

	private ServletContext servletContext;

	@RequestMapping(value = "/bbs/travel_board", method = RequestMethod.GET)
	public String boardGet(Model model, Criteria cri) {
		
		
		PageMaker pageMaker = boardService.getPageMaker(cri, 5);
		ArrayList list = (ArrayList) boardService.getUsers(cri);
		model.addAttribute("cri",cri);
		model.addAttribute("list",list);
		model.addAttribute("pageMaker",pageMaker);
		
		
		/*
		 * List<BoardVo> list = boardService.getBoards();
		 * model.addAttribute("list",list);
		 */

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

	@RequestMapping(value = "/bbs/travel_board_register", method = RequestMethod.POST)
	public String board_regiPost(Model model, MultipartHttpServletRequest request, BoardVo registerBoard){


	
		boolean board = boardService.registerB(registerBoard);
		
		/*
		 * MultipartFile MpF = request.getFile("file_name"); String path =
		 * request.getRealPath("../resources/file_upload"); String fileName =
		 * MpF.getOriginalFilename(); File uploadFile = new File(path+"//"+fileName);
		 * try { MpF.transferTo(uploadFile); } catch (IllegalStateException e) {
		 * e.printStackTrace(); } catch (IOException e) { e.printStackTrace(); }
		 */

				return "redirect:/bbs/travel_board";
	}
	
	
	@RequestMapping(value = "/bbs/travel_board_detail", method = RequestMethod.GET)
	public String board_detailGet(Model model, Integer num) {
		

		System.out.println(num);
		BoardVo board = boardService.detailBoard(num);
		
		if(board == null)
			return "redirect:/bbs/travel_board";
		model.addAttribute("board",board);
		return "bbs/travel_board_detail";
	}
	
	
	@RequestMapping(value="/bbs/travel_board_update", method=RequestMethod.GET)
	public String board_updateGet(Model model,Integer num) {
		System.out.println(num);
		BoardVo board = boardService.detailBoard(num);
		if(board == null)
			return "redirect:/bbs/travel_board";
		model.addAttribute("board",board);
		return "bbs/travel_board_update";
	}
	
	
	@RequestMapping(value="/bbs/travel_board_update", method=RequestMethod.POST)
	public String board_updatePost(Model model,BoardVo board, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		AccountVo user = (AccountVo)session.getAttribute("user");
		
		if(!boardService.updateBoard(board,user))
			return "redirect:/bbs/travel_board";
		
		model.addAttribute("num",board.getNum());
		return "redirect:/bbs/travel_board_detail";

	}
	
	
	@RequestMapping(value="/bbs/travel_board_delete", method=RequestMethod.GET)
	public String deleteGet(Model model,Integer num, HttpServletRequest request) {
		//request에서 session 정보를 가져와서 session에 저장된 user 정보를 가져옴
		HttpSession session = request.getSession();
		AccountVo user = (AccountVo)session.getAttribute("user");
		//삭제 권한이 없는 유저가 URI를 통해 삭제를 시도할 수 있기 때문에 권한이 없는 유저가
		// 삭제를 시도하면 막아주기 위해서 게시판 id와 현재 로그인한 유저정보를 전달
		boardService.deleteBoard(num,user);
		return "redirect:/bbs/travel_board";

	}
	


}
