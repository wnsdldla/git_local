package com.animalConnect.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animalConnect.domain.NoticeCriteria;
import com.animalConnect.domain.NoticeVO;
import com.animalConnect.mapper.NoticeMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class NoticeServiceImpl implements NoticeService {

	@Setter(onMethod_=@Autowired)
	private NoticeMapper nMapper;
	
	@Override 
	public List<NoticeVO> noticeList(NoticeCriteria cri) {
		return nMapper.noticeList(cri);
	}

	@Override
	public NoticeVO noticeRead(Long noticeNum) {
		
		return nMapper.noticeRead(noticeNum);
	}
	
	@Override
	public void noticeReadCount(Long noticeNum) {
		nMapper.noticeReadCount(noticeNum);
	}
	@Override
	public int noticeTotalCnt( ) {
		return nMapper.noticeTotalCnt();
	}

	@Override
	public void noticeRegister(NoticeVO notice) {
		nMapper.noticeRegister(notice);

	}

	@Override
	public boolean noticeModify(NoticeVO notice) {
		return nMapper.noticeModify(notice);
	}

	@Override
	public boolean noticeDelete(Long noticeNum) {
		return nMapper.noticeDelete(noticeNum);
	}

	

}
