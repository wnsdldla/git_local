package com.animalConnect.service;

import java.util.List;

import com.animalConnect.domain.NoticeCriteria;
import com.animalConnect.domain.NoticeVO;

public interface NoticeService {

	//전체 목록 - test(O)
	public List<NoticeVO> noticeList(NoticeCriteria cri);
	
	//공지상세 - test(O)
	public NoticeVO noticeRead(Long noticeNum);
	
	//조회수 증가
	public void noticeReadCount(Long noticeNum);
	
	//공지 전체 개수 - test(O)
	public int noticeTotalCnt();
	
	//공지 등록 - test(O)
	public void noticeRegister(NoticeVO notice);
	
	//공지 수정 - test(O)
	public boolean noticeModify(NoticeVO notice);
	
	//공지 삭제 - test(O)
	public boolean noticeDelete(Long noticeNum);
}
