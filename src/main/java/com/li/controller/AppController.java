package com.li.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginGet() {
		
		return "login";
	}
	
	/**
	 * 用户登录
	 * @param userName
	 * @param password
	 * @return
	 */
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String loginPost(String userName, String password) {
		
		System.out.println("用户名：" + userName);
		System.out.println("密码：" + password);
		return "redirect:login";
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
