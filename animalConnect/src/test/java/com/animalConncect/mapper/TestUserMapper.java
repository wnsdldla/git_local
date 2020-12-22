package com.animalConncect.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.animalConnect.domain.UserVO;
import com.animalConnect.mapper.UserMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class TestUserMapper {

	@Setter(onMethod_=@Autowired)
	private UserMapper uMapper;

//	@Test
//	public void testUserCheckNum() {
//		log.info("checkNum : "+uMapper.userCheck_num("gold@naver.com"));
//	}
	
//	@Test
//	public void testUserGetDetail() {
//		log.info("user  : "+uMapper.getUserDetail("gold@naver.com"));
//	}
	
//	@Test
//	public void testUserUpdatePw() {
//		UserVO user = new UserVO();
//		user.setUserEmail("gold@naver.com");
//		user.setUserPw("2222@");
//		log.info("result : "+uMapper.userUpdate_pw(user));
//	}
	
//	@Test
//	public void testUserFindPw() {
//		log.info("id : " + uMapper.userFind_pw("gold@naver.com"));
//	}
	
//	@Test
//	public void testUserLogin() {
//		UserVO user = new UserVO();
//		String userEmail = "gold@naver.com";
//		String userPw = "1111!";
//		log.info("id : " + uMapper.userLogin("gold@naver.com","2222@" ));
//	}
	
	
//	@Test
//	public void testUserCheckId() {
//		log.info("id count : "+uMapper.userCheckId("gold@naver.com"));
//	}
	
	@Test
	public void testUserJoin() {
		UserVO user = new UserVO();
		user.setUserEmail("gold2@naver.com");
		user.setUserPw("1111!");
		user.setUserHp("010-0101-1010");
		uMapper.userJoin(user);
		log.info(user);
	}
	
//	@Test
//	public void testUseList() {
//		uMapper.userList().forEach(user->log.info(user));
//	}
	
}
