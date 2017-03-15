package com.li.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.li.domain.User;
import com.li.repository.UserRepository;

@Controller
@RequestMapping("/")
public class AppController {

	@Autowired
	private UserRepository userRepository;
	
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
		//根据用户名查找用户
		User user = this.userRepository.findByUserName(userName);
		//判断密码是否正确
		if (null != user && user.getPassword().equals(password)) {
			//密码正确，跳转回注册页面
			return "redirect:register";
		} else {
			//密码或者账号不对，跳转回登录页
			return "redirect:login";
		}
		
		
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
