package test;
import java.util.Date;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.tz.zz.mapper.UserMapper;
import com.tz.zz.pojo.User;

public class test {
	@Test
	public void testinsert() {
	
		ApplicationContext applicationContext=new ClassPathXmlApplicationContext("applicationContext.xml");
		UserMapper mapper=applicationContext.getBean(UserMapper.class);
		User user=new User();
		user.setUsername("gggg");
		user.setAddress("1111");
		user.setBirthday(new Date());
		user.setSex("2");
		mapper.insertuser(user);
		System.out.println(user.getId());
	}
	
	
	
	@Test
	public void testfind2() {
		ApplicationContext applicationContext=new ClassPathXmlApplicationContext("applicationContext.xml");
		UserMapper mapper=applicationContext.getBean(UserMapper.class);
		User user=new User();
		user.setUsername("11231");
		user.setSex("2");
		user.setBirthday(new Date());
		user.setPassword("111");
		user.setAddress("123");
		
		
	}
	
	
}
