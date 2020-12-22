package com.animalConncect.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration //Servlet의 ServletContext를 이용하기 위함
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})
@Log4j
public class TestNoticeController {
	@Setter(onMethod_ = {@Autowired})
	private WebApplicationContext wac;
	
	private MockMvc mockMvc;
	
	@Before	//@Before가 적용된 메소드는 모든 테스트 전에 매번 실행된다.
	public void setup() {
		mockMvc = MockMvcBuilders.webAppContextSetup(wac).build();
	}
	
	@Test
	public void testNoticeList() throws  Exception{
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/animalConnect/notice/noticeList"))
		.andReturn()
		.getModelAndView()
		.getModelMap());
	}
}
