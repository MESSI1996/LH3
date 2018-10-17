package com.tz.zz.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharFilter implements Filter {
	private FilterConfig config;
	
	public void destroy() {
		
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		String encoding=config.getInitParameter("encoding");
		if (encoding!=null&&!"".equalsIgnoreCase(encoding)) {
			request.setCharacterEncoding(encoding);
			response.setCharacterEncoding(encoding);
			response.setContentType("text/html;charset=UTF-8");
		}
		System.out.println("进入过滤器");
		chain.doFilter(request, response);
	}
	
	

	public void init(FilterConfig Config) throws ServletException {
		this.config=Config;
	}
	
	
}
