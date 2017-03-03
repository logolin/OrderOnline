package com.li.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class AppController {

	/**
	 * 重定向到登录页面
	 * @return
	 */
	@RequestMapping("/")
	public String login() {
		
		return "redirect:login";
	}
	
	/**
	 * 显示登录页面
	 * @return
	 */
	@RequestMapping("login")
	public String loginGet() {
		
		return "login";
	}
	
	/**
	 * 显示注册页面
	 * @return 注册页面
	 */
	@RequestMapping("/register")
	public String registerGet() {
		
		return "register";
	}
}
