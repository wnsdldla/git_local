package com.animalConnect.domain;

import lombok.Data;

@Data
public class NoticePageDTO {
	private int startPage;
	private int endPage;
	private int realEnd;
	private boolean prev, next;
	
	private int total;
	private NoticeCriteria cri;
	
	public NoticePageDTO(NoticeCriteria cri, int total) {
		this.cri = cri;
		this.total = total;
		
		this.endPage = (int)(Math.ceil(cri.getPageNum() / 10.0 )) * 10;
		this.startPage = this.endPage - 9;
		
		this.realEnd = (int)(Math.ceil((total * 1.0)/cri.getAmount()));
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage>1;
		this.next = this.endPage < realEnd;
	}
}
