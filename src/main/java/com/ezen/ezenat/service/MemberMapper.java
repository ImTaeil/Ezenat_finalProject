package com.ezen.ezenat.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.ezen.ezenat.dto.EzenatMemberDTO;

@Service
public class MemberMapper {
	public static final int OK = 0;
	public static final int NOT_ID = 1;
	public static final int NOT_PW = 2;
	public static final int ERROR = -1;
	
	@Autowired
	private SqlSession sqlSession;
	
	// 회원 가입
	public int joinMember(EzenatMemberDTO dto) {
		int res = sqlSession.insert("joinMember", dto);
		
		return res;
	}
	
	// 사용중인 아이디 체크
	public int idUseCheck(String id) {
		int res = sqlSession.selectOne("idUseCheck", id);
		
		return res;
	}

	public int checkLogin(String id, String password) {
		EzenatMemberDTO dto = sqlSession.selectOne("checkLogin", id);
		
		if (dto != null) {
			if (dto.getPassword().equals(password)) {
				return OK;
				
			}else {
				return NOT_PW;
			}
		} else {
			return NOT_ID;
		}
	}
	// 로그인 - 회원 체크 - 확인된 회원의 id 로 dto 불러오기
	public EzenatMemberDTO getEzenatMemberById(String id) {
		EzenatMemberDTO dto = sqlSession.selectOne("getEzenatMemberById", id);
		
		return dto;
	}
	//회원 리스트
	public List<EzenatMemberDTO> listMember(){
		return sqlSession.selectList("listMember");
	}
	// 카카오 로그인 - 회원 체크
	public int checkJoin(HashMap<String, Object> userInfo) {
		
		return sqlSession.selectOne("checkJoin",userInfo);
	}
	
	//7월 4일자 추가 수정. (회원정보 수정 ,아이디 찾기,비밀번호 찾기)
	public EzenatMemberDTO getMember(int member_num) {
		
		return sqlSession.selectOne("getMember", member_num);
	}
	
	public int updateMember(EzenatMemberDTO dto) {
		
		return sqlSession.update("updateMember", dto);
	}
	
	public String findIdHp(EzenatMemberDTO dto) {
		return sqlSession.selectOne("findIdHp", dto);
	}
	public String findIdEmail(EzenatMemberDTO dto ) {
		return sqlSession.selectOne("findIdEmail",dto	);
	}

	public int findPw(Map<String, String> map) {
	
		return sqlSession.selectOne("findPw",map);
	}

	public int resetPw(Map<String, String> map) {
		return sqlSession.update("resetPw",map);
	}
	

	// 회원 정보 변경
	public int updateMemberInfo(EzenatMemberDTO dto) {
		return sqlSession.update("updateMember", dto);
	}
	
	// 회원 탈퇴(삭제)
	public int deleteMember(String id) {
		return sqlSession.delete("deleteMember", id);
	}
	
}
