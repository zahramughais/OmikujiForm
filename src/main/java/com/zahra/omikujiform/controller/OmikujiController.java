package com.zahra.omikujiform.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/omikuji")
public class OmikujiController {
	
	@RequestMapping("")
	public String home() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/submit", method=RequestMethod.POST)
	public String postForm(
			@RequestParam(value="num") String num,
			@RequestParam(value="city") String city,
			@RequestParam(value="name") String name,
			@RequestParam(value="prof") String prof,
			@RequestParam(value="living") String living,
			@RequestParam(value="say") String say,
			HttpSession session) {
		
			session.setAttribute("num", num);
			session.setAttribute("city", city);
			session.setAttribute("name", name);
			session.setAttribute("prof", prof);
			session.setAttribute("living", living);
			session.setAttribute("say", say);
		
		return "redirect:/omikuji/show";
	}
	
	@RequestMapping("/show")
	public String show() {
		return "show.jsp";
	}
}
