package com.animalConnect.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.animalConnect.domain.AdminVO;
import com.animalConnect.domain.MapVO;
import com.animalConnect.domain.ProVO;
import com.animalConnect.domain.ProfileCriteria;

public interface ProMapper {
	
	//전문가 로그인
	public String proLogin(@Param("id") String proEmail,@Param("pw") String proPw);
	//전문가 회원가입 - test(O)
	public void proJoin(ProVO pro);
	
	//전문가 목록 - test(O)
	public List<ProVO> proList(ProfileCriteria pCri);
	
	//전문가 승인 목록
	public List<ProVO> proApproveList();
	
	//전문가 승인 
	public boolean proApproveOk(String proEmail);
	
	//전문가 전체 인원
	public int totalCnt();
	
	//전문가 아이디 확인 - text(O)
	public int checkProId(String id);
	
	//전문가 닉네임 확인
	
	//사용자 관리 번호 확인
	public int proCheck_num(String proEmail);
	
	
	//----------------------< 지도 >----------
	//지도 저장 - test(O)
	public void proMapRegister(MapVO map);
	
	//이메일이 가지는 지역 불러오기
	public List<String> proMapList(String proEmail);
	
}
