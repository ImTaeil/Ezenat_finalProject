package com.ezen.ezenat.dto;

public class HashTagDTO {

	private int hashTag_num;							//해시태그 번호
	private String hashTag_name;					//해시태그 이름
	private int style_num;								//게시글 등록시에 시퀀스번호로 저장되기때문에 따로 게시글번호 선언.

	
	
	public int getHashTag_num() {
		return hashTag_num;
	}
	public void setHashTag_num(int hashTag_num) {
		this.hashTag_num = hashTag_num;
	}
	
	public String getHashTag_name() {
		return hashTag_name;
	}
	public void setHashTag_name(String hashTag_name) {
		this.hashTag_name = hashTag_name;
	}
	public int getStyle_num() {
		return style_num;
	}
	public void setStyle_num(int style_num) {
		this.style_num = style_num;
	}

	
	
	
	
	
}
