package com.tz.zz.controller;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tz.zz.pojo.User;
import com.tz.zz.service.UserService;


@Controller
@RequestMapping
public class LoginController {
	@Autowired
	private UserService userService;
	
//	@RequestMapping(value="/login")
//	public String login() {
//		return "login";
//	}
	
	//登陆处理
	@ResponseBody//异步请求
	@RequestMapping(method=RequestMethod.GET,value="/logined")
	public String logined(HttpServletRequest request) {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		User user=userService.login(username, password);
		if (user==null) {
			return "error";
		}else {
			return "success";
			
		}
		
	}
}
