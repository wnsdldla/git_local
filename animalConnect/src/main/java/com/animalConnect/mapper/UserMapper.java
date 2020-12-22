package com.animalConnect.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.animalConnect.domain.UserVO;

public interface UserMapper {
	
	//사용자 회원가입 - test(O)
	public void userJoin(UserVO user);
	
	//사용자 이메일 존재 여부 확인 - test(O)
	public int userCheckId(String userEmail);
	
	//사용자 로그인 - test(O)
	public String userLogin(@Param("id") String userEmail,@Param("pw") String userPw );
	
	//사용자 비밀번호 찾기 - test(O)
	public String userFind_pw(String userEmail);
	
	//사용자 비밀번호 변경 - test(O)
	public boolean userUpdate_pw(UserVO user);
	
	//사용자 관리 번호 확인 - test(O)
	public int userCheck_num(String userEmail);
	
	//사용자 상세 정보 - test(O)
	public UserVO getUserDetail(String userEmail);
	
	//사용자 리스트 - test(O)
	public List<UserVO> userList();
}
