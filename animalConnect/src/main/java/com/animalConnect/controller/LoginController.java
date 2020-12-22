package com.animalConnect.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.animalConnect.domain.LoginVO;
import com.animalConnect.domain.NoticeCriteria;
import com.animalConnect.domain.NoticePageDTO;
import com.animalConnect.domain.NoticeVO;
import com.animalConnect.service.NoticeService;
import com.animalConnect.service.UserService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/animalConnect/login/*")
public class LoginController {
	
	private UserService uService;

	//로그인 페이지로 이동
	@GetMapping("/login")
	public void login() {}
	
	//로그인
	@PostMapping("/login")
	public String login(String id, String pw, Model model) {
		log.info("login.login().... "+id);
		LoginVO result = uService.login(id, pw);
		if(result !=null) {
			model.addAttribute("session_id",result.getLoginResult());
			model.addAttribute("session_num",result.getLoginCheckNum());
			
		}else {
			model.addAttribute("login","false");
			return "/animalConnect/login/login";
		}
		return "/animalConnect/main/main";
	}
	
	//로그아웃
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/animalConnect/main/main";
	}
	
	
	
}
