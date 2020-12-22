package com.animalConnect.service;

import com.animalConnect.domain.LoginVO;
import com.animalConnect.domain.UserVO;

public interface UserService {

	//일반 사용자 회원가입
	public void join(UserVO user);
	
	//사용자 이메일 중복(관리자, 전문가 로그인 mapper 필요)
	
	//사용자 로그인(관리자, 전문가 로그인 mapper 필요)
	public LoginVO login(String id, String pw);
	//사용자 비밀번호 찾기
	
	//사용자 비밀번호 변경
	
	//사용자 관리번호 확인
	//사용자 상세 정보
	
	//사용자 리스트
}
