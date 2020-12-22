package com.animalConnect.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.animalConnect.domain.NoticeCriteria;
import com.animalConnect.domain.NoticePageDTO;
import com.animalConnect.domain.NoticeVO;
import com.animalConnect.service.NoticeService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/animalConnect/notice/*")
public class NoticeController {
	
	private NoticeService nService;
	
	//전체 목록 보기
	@GetMapping("/noticeList")
	public void noticeList(NoticeCriteria cri,Model model) {
		log.info("noticeController - list ....");
		model.addAttribute("list",nService.noticeList(cri));
		model.addAttribute("pageMaker",new NoticePageDTO(cri,nService.noticeTotalCnt()));
	}
	
	//공지사항 상세보기
	@GetMapping("/noticeRead")
	public void noticeRead(@RequestParam("noticeNum") Long noticeNum,@ModelAttribute("cri") NoticeCriteria cri, Model model) {
		log.info("noticeController - read ...." + noticeNum);
		nService.noticeReadCount(noticeNum);
		model.addAttribute("NoticeBean" , nService.noticeRead(noticeNum));
	}
	
	//공지사항 등록 페이지 이동
	@GetMapping("/noticeRegister")
	public void noticeRegister() {;}
	
	//공지사항 등록
	@PostMapping("/noticeRegister")
	public String noticeRegister(NoticeVO notice, RedirectAttributes rttr) {
		nService.noticeRegister(notice);
		rttr.addFlashAttribute("result","success");
		return "redirect:/animalConnect/notice/noticeList";
	}
	
	//공지사항 수정 페이지 이동
	@GetMapping("/noticeModify")
	public void noticeModify(Long noticeNum,@ModelAttribute("cri") NoticeCriteria cri, Model model) {
		log.info("noticeController - modify(GET) ...." + noticeNum);
		model.addAttribute("NoticeBean" , nService.noticeRead(noticeNum));
	}
	
	//공지사항 수정
	@PostMapping("noticeModify")
	public String noticeModify(NoticeVO notice,@ModelAttribute("cri") NoticeCriteria cri, RedirectAttributes rttr) {
		log.info("noticeController - modify(POST) .... " + notice);
		if(nService.noticeModify(notice)) {
			rttr.addFlashAttribute("result","success");
		}
		rttr.addAttribute("noticeNum",notice.getNoticeNum());
		return "redirect:/animalConnect/notice/noticeRead";
	}
	
	//공지사항 삭제
	@PostMapping("/noticeDelete")
	public String noticeDelete(Long noticeNum, RedirectAttributes rttr) {
		log.info("noticeController - DELETE .... " + noticeNum);
		nService.noticeDelete(noticeNum);
		return "redirect:/animalConnect/notice/noticeList";
	}
	
	
	
}
