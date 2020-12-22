package com.animalConnect.service;

import java.util.List;

import com.animalConnect.domain.ProVO;
import com.animalConnect.domain.ProfileCriteria;
import com.animalConnect.domain.UserVO;

public interface ProService {

	//전문가 회원가입
	public void proJoin(ProVO pro, String maps);
	
	//전문가 아이디 확인
	public int checkProId(String id);
	
	//전문가 목록 불러오기
	public List<ProVO> proList(ProfileCriteria pCri);
	
	//전문가 전체 인원
	public int totalCnt();
	
	//-----지도
	public String proMapString(String proEmail);
}
