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

import net.sf.json.JSONArray;

@Controller
@RequestMapping
public class QueryController {
	@Autowired 
	private UserService userService;
	
	@ResponseBody
	@RequestMapping(method=RequestMethod.GET,value="/query")
	public void queryuser(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String username=request.getParameter("username");
		User user=userService.queryuser(username);
		JSONArray jsonArray=JSONArray.fromObject(user);
		PrintWriter out=response.getWriter();
		out.print(jsonArray.toString());
		out.flush();
		out.close();
		
		
	}
}
