package com.animalConncect.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.animalConnect.domain.AdminVO;
import com.animalConnect.mapper.AdminMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class TestAdminMapper {
	@Setter(onMethod_=@Autowired)
	private AdminMapper aMapper;

	//관리자 아이디 존재 확인
	@Test
	public void testAdminCheckId() {
		log.info("count : "+ aMapper.AdminCheckId("alpha@naver.com"));
	}
	
//	//회원분류번호 확인
//	@Test
//	public void testAdminCheckNum() {
//		log.info("check num : "+aMapper.AdminCheckNum("alpha@naver.com"));
//	}
	
//	//관리자 로그인	
//	@Test
//	public void testAdminLogin() {
//		AdminVO admin = new AdminVO();
//		admin.setAdminEmail("alpha@naver.com");
//		admin.setAdminPw("1111");
//		log.info(aMapper.AdminLogin(admin));
//		
//	}
	
}
