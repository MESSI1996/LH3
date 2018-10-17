package com.tz.zz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexConrtroller {
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/left")
	public String left() {
		return "left";
	}
	
	
	@RequestMapping("/head")
	public String head() {
		return "head";
	}
	
	@RequestMapping("/right")
	public String right() {
		return "right";
	}
	
	@RequestMapping("/main2")
	public String main2() {
		return "main2";
	}
}
