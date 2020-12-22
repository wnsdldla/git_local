package com.animalConnect.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animalConnect.domain.AdminVO;
import com.animalConnect.domain.LoginVO;
import com.animalConnect.domain.UserVO;
import com.animalConnect.mapper.AdminMapper;
import com.animalConnect.mapper.NoticeMapper;
import com.animalConnect.mapper.ProMapper;
import com.animalConnect.mapper.UserMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class UserServicesImpl implements UserService {

	@Setter(onMethod_=@Autowired)
	private UserMapper uMapper;

	@Setter(onMethod_=@Autowired)
	private ProMapper pMapper;
	
	@Setter(onMethod_=@Autowired)
	private AdminMapper aMapper;
	
	
	
	@Override
	public void join(UserVO user) {
		uMapper.userJoin(user);
	}

	@Override
	public LoginVO login(String id, String pw) {
		LoginVO result = new LoginVO();
		if(aMapper.AdminCheckId(id)>0) {
			result.setLoginResult(aMapper.AdminLogin(id, pw));
			result.setLoginCheckNum(0);
		}else if(pMapper.checkProId(id)>0) {
			result.setLoginResult(pMapper.proLogin(id, pw));
			result.setLoginCheckNum(1);
		}else if(uMapper.userCheckId(id)>0) {
			result.setLoginResult(uMapper.userLogin(id, pw));
			result.setLoginCheckNum(2);
			
		}else {
			return null;
		}
		
		return result;
	}

	

}
