package com.animalConnect.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.One;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.animalConnect.domain.ProVO;
import com.animalConnect.domain.UserVO;
import com.animalConnect.service.NoticeService;
import com.animalConnect.service.ProService;
import com.animalConnect.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/animalConnect/member/*")
public class MemberController {

	
	private UserService uService;
	private ProService pService;
	
	//회원가입 선택 페이지
	@GetMapping("/checkJoin")
	public void checkJoin() {
		log.info("checkJoin........");
	}
	
	//일반 사용자 회원가입 페이지 이동
	@GetMapping("/join")
	public void join() {
		log.warn("join");
	}
	
	//일반 사용자 회원가입
	@PostMapping("/join")
	public String join(UserVO user,RedirectAttributes rttr) {
		log.info("member.join()....."+ user);
		uService.join(user);
		return "redirect:/animalConnect/main/main";
	}
	
	//전문가 회원가입 페이지 이동
	@GetMapping("/proJoin")
	public void proJoin() {}
	
	//전문가 회원가입
	@PostMapping("/proJoin")
	public String proJoin(ProVO pro,String maps,
			RedirectAttributes rttr) {
		log.warn("member.proJoin()....."+pro);
		log.warn("proJoin ....  "+maps);
		pService.proJoin(pro,maps);
		
		return "redirect:/animalConnect/main/main";
	}
	
	
	
}
