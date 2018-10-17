package com.tz.zz.mapper;

import org.springframework.stereotype.Repository;

import com.tz.zz.pojo.User;

@Repository
public interface UserMapper {
	
	
	 
	public User login(User user);
	public void insertuser(User user);
	public void updateuser(User user);
	public void deleteuser(String username);
	public User queryuser(String username);
	
}
