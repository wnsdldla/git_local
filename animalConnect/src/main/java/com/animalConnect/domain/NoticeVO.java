package com.animalConnect.domain;

import lombok.Data;

@Data
public class NoticeVO {
	private Long noticeNum;
	private String noticeTitle;
	private String noticeContents;
	private String noticeDate;
	private String adminEmail;
	private int readCount;
	
}
