package com.animalConncect.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.animalConncect.mapper.TestNoticeMapper;
import com.animalConnect.domain.NoticeVO;
import com.animalConnect.domain.UserVO;
import com.animalConnect.mapper.UserMapper;
import com.animalConnect.service.NoticeService;
import com.animalConnect.service.UserService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class TestUserService {

	@Setter(onMethod_=@Autowired)
	private UserService uService;
	
	@Test
	public void userLoginTest() {
		log.info("result : "+uService.login("alpha@naver.com", "1111"));
	}
	
//	@Test
//	public void testUserJoin() {
//		UserVO user = new UserVO();
//		user.setUserEmail("silver@naver.com");
//		user.setUserPw("3333#");
//		user.setUserHp("010-0000-0000");
//		uService.join(user);
//		log.info(user);
//	}

}
