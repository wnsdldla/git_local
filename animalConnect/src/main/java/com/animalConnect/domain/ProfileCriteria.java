package com.animalConnect.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ProfileCriteria {
	private int pageNum;
	private int amount;
	
	public ProfileCriteria() {
		this(1,6);
	}
	public String getListLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("pageNum", this.pageNum)
				.queryParam("amount", this.amount);
		
		return builder.toUriString();
	} 
}
