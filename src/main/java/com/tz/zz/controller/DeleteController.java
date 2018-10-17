package com.tz.zz.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tz.zz.service.UserService;

@Controller
@RequestMapping
public class DeleteController {
	@Autowired
	private UserService userService;
	
	@ResponseBody
	@RequestMapping(method=RequestMethod.GET,value="/delete")
	public void deleteuser(HttpServletRequest request,HttpServletResponse response) {
		String username=request.getParameter("username");
		userService.deleteuser(username);
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.print("success");
		out.close();
	}
}
