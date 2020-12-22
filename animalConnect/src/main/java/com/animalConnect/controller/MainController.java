package com.animalConnect.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.animalConnect.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/animalConnect/main/*")
public class MainController {

	//메인 페이지
	@GetMapping("/main")
	public void main() {
		log.info("main().......");
	}
}
