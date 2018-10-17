package com.tz.zz.service;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import com.sun.glass.ui.Application;
import com.tz.zz.mapper.UserMapper;
import com.tz.zz.pojo.User;

@Service
public class UserService {
	@Autowired
	private UserMapper userMapper;
	@Test
	public User login(String username,String password) {
		ApplicationContext applicationContext=new ClassPathXmlApplicationContext("applicationContext.xml");
		UserMapper mapper=applicationContext.getBean(UserMapper.class);
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		User user2=mapper.login(user);
		System.out.println(user2);
		return user2;
		
	}
	
	
	@Test
	public void deleteuser(String username) {
		ApplicationContext applicationContext=new ClassPathXmlApplicationContext("applicationContext.xml");
		UserMapper mapper=applicationContext.getBean(UserMapper.class);
		mapper.deleteuser(username);
	}
	
	
	@Test
	public void insertuser(User user) {
		ApplicationContext applicationContext=new ClassPathXmlApplicationContext("applicationContext.xml");
		UserMapper mapper=applicationContext.getBean(UserMapper.class);
		mapper.insertuser(user);
		
	}
	
	@Test
	public void updateuser(User user) {
		ApplicationContext applicationContext=new ClassPathXmlApplicationContext("applicationContext.xml");
		UserMapper mapper=applicationContext.getBean(UserMapper.class);
		mapper.updateuser(user);
	}
	
	
	@Test
	public User queryuser(String  username){
		ApplicationContext applicationContext=new ClassPathXmlApplicationContext("applicationContext.xml");
		UserMapper mapper=applicationContext.getBean(UserMapper.class);
		User user=mapper.queryuser(username);
		return user;
	}
	
	
	
	
}
