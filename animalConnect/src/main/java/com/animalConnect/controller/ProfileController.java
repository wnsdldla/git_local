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
import com.animalConnect.domain.ProfileCriteria;
import com.animalConnect.domain.ProfilePageDTO;
import com.animalConnect.domain.UserVO;
import com.animalConnect.service.NoticeService;
import com.animalConnect.service.ProService;
import com.animalConnect.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/animalConnect/profile/*")
public class ProfileController {

	
	private ProService pService;
	
	//전문가 목록
	@GetMapping("/profile")
	public void profile(ProfileCriteria pCri,Model model){
		List<ProVO> proList = pService.proList(pCri);
		model.addAttribute("list",proList);
		model.addAttribute("pageMaker",new ProfilePageDTO(pCri, pService.totalCnt()));
	}
	
	//전문가 정보 수정
	
	//전문가 정보 상세 보기
	
	
	
	
	
}
