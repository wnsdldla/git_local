package com.animalConncect.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.animalConnect.domain.MapVO;
import com.animalConnect.domain.ProVO;
import com.animalConnect.domain.ProfileCriteria;
import com.animalConnect.domain.UserVO;
import com.animalConnect.mapper.ProMapper;
import com.animalConnect.mapper.UserMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class TestProMapper {

	@Setter(onMethod_=@Autowired)
	private ProMapper pMapper;

	//지역 목록
	@Test
	public void testMap() {
		pMapper.proMapList("map3@naver.com").forEach(pro -> log.info(pro));
	}
	
//	//전문가 목록
//	@Test
//	public void testProList() {
//		pMapper.proList(new ProfileCriteria()).forEach(pro -> log.info(pro));
//	}
//	
	
//	@Test
//	public void testproLogin() {
//		log.info( "result : " + pMapper.proLogin("iron88@naver.com", "bodam93@") );
//	}
	
//	@Test
//	public void testCheckProId() {
//		log.info("count  : "+pMapper.checkProId("gold77@naver.com"));
//	}
	
//	//지도 저장
//	@Test
//	public void testProMap() {
//		MapVO map = new MapVO();
//		map.setProEmail("iron2@naver.com");
//		map.setProMaps("경상북도 의성군");
//		pMapper.proMapRegister(map);
//	}
	
//	//전문가 회원가입
//	@Test
//	public void testProJoin() {
//		ProVO pro = new ProVO();
//		pro.setNicName("테스트 닉2");
//		pro.setProCheck("NO");
//		pro.setProEmail("iron2@naver.com");
//		pro.setProHp("010-2222-2222");
//		pro.setProName("홍길동2");
//		pro.setProPw("1111!");
//		log.info("test");
//		pMapper.proJoin(pro);
//		
//	}

	
}
