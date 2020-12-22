package com.animalConnect.domain;

import lombok.Data;

@Data
public class UserVO {
	private String userEmail;
	private String userPw;
	private int checkNum;
	private String userHp;
}
