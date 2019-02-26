package kr.lee.travel.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.lee.travel.service.AccountService;
import kr.lee.travel.vo.AccountVo;





@Controller
public class MainController {
	
	@Autowired
	AccountService accountService;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mainGet(Model model) {

		return "main";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String mainPost(Model model, AccountVo loginInfo) {

		return "redirect:/";
	}
	
	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String loginGet(Model model) {

		return "/member/login";
	}
	
	@RequestMapping(value = "/member/login", method = RequestMethod.POST)
	public String loginPost(Model model, HttpServletRequest request, AccountVo loginInfo) {

		AccountVo user = accountService.signin(loginInfo);
		model.addAttribute("user", user);
		
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		
		System.out.println(user);
		return "redirect:/";
	}

	
	@RequestMapping(value = "/signout", method = RequestMethod.GET)
	public String signoutGet(Model model,HttpServletRequest request) {
				HttpSession session = request.getSession();
				session.removeAttribute("user");
			return "redirect:/bbs/travel_board";
	}
	
	
	
	@RequestMapping(value = "/member/register", method = RequestMethod.GET)
	public String registerGet(Model model) {

		return "/member/register";
	}
	
	@RequestMapping(value = "/member/register", method = RequestMethod.POST)
	public String registerPost(Model model, AccountVo userInfo) {
		boolean isMember = accountService.signUp(userInfo);
		if(isMember)
			return "redirect:/";
		return "/member/register";
	}
	

	
}
