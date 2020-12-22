package com.animalConncect.service;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.animalConncect.mapper.TestNoticeMapper;
import com.animalConnect.domain.NoticeVO;
import com.animalConnect.domain.ProVO;
import com.animalConnect.domain.ProfileCriteria;
import com.animalConnect.domain.UserVO;
import com.animalConnect.mapper.UserMapper;
import com.animalConnect.service.NoticeService;
import com.animalConnect.service.ProService;
import com.animalConnect.service.UserService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class TestProService {

	@Setter(onMethod_=@Autowired)
	private ProService pService;
	
	@Test
	public void testProfile() {
		pService.proList(new ProfileCriteria()).forEach(pro->log.info(pro));
	}
	
//	@Test
//	public void testMapString() {
//		log.info(pService.proMapString("map3@naver.com"));
//	}
//	
//	@Test
//	public void testProJoin() {
//		ProVO pro = new ProVO();
//		pro.setNicName("테스트 닉3");
//		pro.setProCheck("NO");
//		pro.setProEmail("iron3@naver.com");
//		pro.setProHp("010-2222-2222");
//		pro.setProName("홍길동2");
//		pro.setProPw("2222@");
//		
//		List<String> maps = new ArrayList<String>();
//		maps.add("경상북도 의성군");
//		maps.add("경상북도 양성군");
//		maps.add("경상북도 의정군");
//		pService.proJoin(pro, maps);
//	}

}
