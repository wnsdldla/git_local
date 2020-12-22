package com.animalConncect.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.animalConnect.domain.NoticeCriteria;
import com.animalConnect.domain.NoticeVO;
import com.animalConnect.mapper.NoticeMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class TestNoticeMapper {
	
	@Setter(onMethod_=@Autowired)
	private NoticeMapper nMapper;
	
//	@Test
//	public void testNoticeReadCount() {
//		log.info("update : " + nMapper.noticeReadCount(3L));
//	}
	
//	//공지 삭제
//	@Test
//	public void testNoticeDelete() {
//		log.info("delete result : "+nMapper.noticeDelete(82L));
//	}
	
//	//공지 수정
//	@Test
//	public void testNoticeModify() {
//		NoticeVO notice = new NoticeVO();
//		notice.setNoticeTitle("수정 공지 제목 ");
//		notice.setNoticeContents("수정된 공지 내용");
//		notice.setNoticeNum(82L);
//		nMapper.noticeModify(notice);
//		log.info(notice);
//	}
	
//	//공지 등록
//	@Test
//	public void testNoticeRegister() {
//		NoticeVO notice = new NoticeVO();
//		notice.setNoticeTitle("새 공지 제목 ");
//		notice.setAdminEmail("alpha@naver.com");
//		notice.setNoticeContents("새로운 공지 내용");
//		nMapper.noticeRegister(notice);
//		log.info(notice);
//	}
	
	
//	//공지 개수
//	@Test
//	public void testNoticeTotal() {
//		log.info("count : "+nMapper.noticeTotalCnt());
//	}
	
//	//공지 상세
//	@Test
//	public void testNoticeRead() {
//		log.info(nMapper.noticeRead(82L));
//	}
	
	//공지 전체 목록
	@Test
	public void testGetList() {
		nMapper.noticeList(new NoticeCriteria()).forEach(notice->log.info(notice));
	}
}
