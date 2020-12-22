package com.animalConnect.mapper;

import org.apache.ibatis.annotations.Param;

import com.animalConnect.domain.AdminVO;

public interface AdminMapper {
	//관리자 로그인 - test(O)
	public String AdminLogin(@Param("id") String adminEmail,@Param("pw") String adminPw);
	
	//회원분류번호 확인 - test(O)
	public int AdminCheckNum(String adminEmail);
	
	//관리자 아이디 존재 확인 - test(O)
	public int AdminCheckId(String adminEmail);
	
	
}
