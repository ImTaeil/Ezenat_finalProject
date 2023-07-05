package com.ezen.ezenat.dto;

public class EzenatCategoryDTO {

	private int category_level;			//카테고리 등급
	private String category_name;
	private String category_code;
	private String category_parent;
	
	
	public int getCategory_level() {
		return category_level;
	}
	public void setCategory_level(int category_level) {
		this.category_level = category_level;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public String getCategory_code() {
		return category_code;
	}
	public void setCategory_code(String category_code) {
		this.category_code = category_code;
	}
	public String getCategory_parent() {
		return category_parent;
	}
	public void setCategory_parent(String category_parent) {
		this.category_parent = category_parent;
	}
	
	@Override
	public String toString() {
		return "EzenatCategory [category_level=" + category_level + ", category_name=" + category_name + ", category_code = "+category_code + ", category_parent = "   
				+ category_parent + "]";
	}
	
	
	
	
	
	
}
