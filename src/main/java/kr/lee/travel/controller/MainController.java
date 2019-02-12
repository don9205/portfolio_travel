package kr.lee.travel.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.lee.travel.vo.AccountVo;

@Controller
public class MainController {
	
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
	public String loginPost(Model model, HttpServletRequest request) {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println(id);
		System.out.println(pw);
		return "redirect:/";
	}
	
	
	
	@RequestMapping(value = "/member/register", method = RequestMethod.GET)
	public String registerGet(Model model) {

		return "/member/register";
	}
	
	@RequestMapping(value = "/member/register", method = RequestMethod.POST)
	public String registerPost(Model model) {
		
		
		return "redirect:/";
	}
	

	
}
