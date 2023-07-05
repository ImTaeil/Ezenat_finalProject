package com.ezen.ezenat.dto;

public class EzenatMemberDTO {
	private int member_num;					// 여기부터
	private String id;
	private String password;
	private String name;
	private String nickname;
	private String postal_code;
	private String address;
	private String detail_address;
	private String hp1;
	private String hp2;
	private String hp3;
	private String certification;
	private String email;
	private String gender;					// 여기까지 not null
	private String birth_year;
	private String birth_month;
	private String birth_day;
	private String bank_account_owner;
	private String bank_code;
	private String bank_account_num;
	private int point;
	private String member_rating;
	private String admin_power;				// not null
	private String join_date;				// not null
	private String black;
	
	
	public int getMember_num() {
		return member_num;
	}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPostal_code() {
		return postal_code;
	}
	public void setPostal_code(String postal_code) {
		this.postal_code = postal_code;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDetail_address() {
		return detail_address;
	}
	public void setDetail_address(String detail_address) {
		this.detail_address = detail_address;
	}
	public String getHp1() {
		return hp1;
	}
	public void setHp1(String hp1) {
		this.hp1 = hp1;
	}
	public String getHp2() {
		return hp2;
	}
	public void setHp2(String hp2) {
		this.hp2 = hp2;
	}
	public String getHp3() {
		return hp3;
	}
	public String getAllHp() {
		return getHp1() + getHp2() + getHp3();
	}
	public void setHp3(String hp3) {
		this.hp3 = hp3;
	}
	public String getCertification() {
		return certification;
	}
	public void setCertification(String certification) {
		this.certification = certification;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth_year() {
		return birth_year;
	}
	public void setBirth_year(String birth_year) {
		this.birth_year = birth_year;
	}
	public String getBirth_month() {
		return birth_month;
	}
	public void setBirth_month(String birth_month) {
		this.birth_month = birth_month;
	}
	public String getBirth_day() {
		return birth_day;
	}
	public void setBirth_day(String birth_day) {
		this.birth_day = birth_day;
	}
	public String getBank_account_owner() {
		return bank_account_owner;
	}
	public void setBank_account_owner(String back_account_owner) {
		this.bank_account_owner = back_account_owner;
	}
	public String getBank_code() {
		return bank_code;
	}
	public void setBank_code(String bank_code) {
		this.bank_code = bank_code;
	}
	public String getBank_account_num() {
		return bank_account_num;
	}
	public void setBank_account_num(String bank_account_num) {
		this.bank_account_num = bank_account_num;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getMember_rating() {
		return member_rating;
	}
	public void setMember_rating(String member_rating) {
		this.member_rating = member_rating;
	}
	public String getAdmin_power() {
		return admin_power;
	}
	public void setAdmin_power(String admin_power) {
		this.admin_power = admin_power;
	}
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	public String getBlack() {
		return black;
	}
	public void setBlack(String black) {
		this.black = black;
	}
	
}
