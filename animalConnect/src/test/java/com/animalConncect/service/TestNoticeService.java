package com.animalConncect.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.animalConncect.mapper.TestNoticeMapper;
import com.animalConnect.domain.NoticeVO;
import com.animalConnect.service.NoticeService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class TestNoticeService {

	@Setter(onMethod_=@Autowired)
	private NoticeService nService;

//	//공지 삭제
//	@Test
//	public void testNoticeDelete() {
//		log.info("delete : " + nService.noticeDelete(15L));
//	}
	
//	//공지 수정
//	@Test
//	public void testNoticeModify() {
//		NoticeVO notice = new NoticeVO();
//		notice.setNoticeTitle("수정 테스트 (서비스)");
//		notice.setNoticeContents("수정 서비스 테스트");
//		notice.setNoticeNum(6L);
//		nService.noticeModify(notice);
//		log.info(notice);
//	}
	
//	//공지 등록
//	@Test
//	public void testNoticeRegister() {
//		NoticeVO notice = new NoticeVO();
//		notice.setNoticeTitle("등록 테스트 (서비스)");
//		notice.setNoticeContents("등록 서비스 테스트");
//		notice.setAdminEmail("alpha@naver.com");
//		nService.noticeRegister(notice);
//		log.info(notice);
//	}
	
//	//공지 개수
//	@Test
//	public void testNoticeTotal() {
//		log.info("count : "+nService.noticeTotalCnt());
//	}
	
//	//상세보기
//	@Test
//	public void testNoticeRead() {
//		log.info(nService.noticeRead(5L));
//	}
	
//	//상세보기 + 조회수 증가
//	@Test
//	public void testNoticeRead() {
//		nService.noticeReadCount(5L);
//	}
	
	
//	//전체 목록	
//	@Test
//	public void testNoticeList() {
//		nService.noticeList().forEach(notice -> log.info(notice));
//	}
}
