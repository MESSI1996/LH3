package com.tz.zz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tz.zz.dateutil.DateUtil;
import com.tz.zz.pojo.User;
import com.tz.zz.service.UserService;

@Controller
@RequestMapping
public class InsertController {
	@Autowired 
	private  UserService userService;
	
	@ResponseBody
	@RequestMapping(method=RequestMethod.GET,value="/insert")
	public void insert(HttpServletRequest request,HttpServletResponse response) {
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String birth=request.getParameter("birth");
			String sex=request.getParameter("sex");
			Date date=DateUtil.StringToDate(birth);
			String address=request.getParameter("address");
			User user=new User();
			user.setUsername(username);
			user.setPassword(password);
			user.setBirthday(date);
			user.setSex(sex);
			user.setAddress(address);
			userService.insertuser(user);
			PrintWriter out=null;
			try {
				out=response.getWriter();
				out.print("success");
			} catch (IOException e) {
				e.printStackTrace();
			}
			out.close();
			
	}
	
}
