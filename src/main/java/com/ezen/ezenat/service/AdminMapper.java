package com.ezen.ezenat.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.ezenat.dto.EzenatCategoryDTO;
import com.ezen.ezenat.dto.EzenatMemberDTO;
import com.ezen.ezenat.dto.EzenatProductAllDTO;
import com.ezen.ezenat.dto.EzenatProductDTO;
import com.ezen.ezenat.dto.EzenatProductImageDTO;

@Service
public class AdminMapper {

	@Autowired
	private SqlSession sqlSession;

	public List<EzenatCategoryDTO> listCate() {
		return sqlSession.selectList("listCate");
	}

	public int insertProduct(EzenatProductDTO dto) {
		return sqlSession.insert("insertProduct", dto);
	}

	public int insertProductImage(EzenatProductImageDTO dto) {
		return sqlSession.insert("insertProductImage", dto);
	}

	public List<EzenatProductAllDTO> listProd() {
		return sqlSession.selectList("listProd");
	}

	public int getProductNum(EzenatProductDTO dto) {
		return sqlSession.selectOne("getProductNum", dto);
	}

	public int getProductCount(EzenatProductDTO dto) {
		return sqlSession.selectOne("getProductCount", dto);
	}

	public EzenatProductAllDTO getProd(int product_num) {
		return sqlSession.selectOne("getProd", product_num);
	}

	public int updateProd(EzenatProductDTO dto) {
		return sqlSession.update("updateProd", dto);
	}

	public int updateProdImage(EzenatProductImageDTO dto) {
		return sqlSession.update("updateProdImage", dto);
	}

	public EzenatProductImageDTO imageList(int product_num) {
		return sqlSession.selectOne("imageList", product_num);
	}

	
	 public int deleteRealProdList(String num){ 
		 sqlSession.delete("deleteProdImgList",num); 
		 return sqlSession.delete("deleteRealProdList",num); 
	 }
	 

	public int moveDeleteProdList(String num) {
		return sqlSession.update("moveDeleteProdList", num);
	}

	 public EzenatProductAllDTO deleteProdList(int product_num) { 
		 return sqlSession.selectOne("deleteProdList", product_num); 
	 }
	 
	public List<Integer> deleteNumList() {
		return sqlSession.selectList("deleteNumList");
	}

	/*
	 * public int editPqty(int input) { return sqlSession.selectOne("editPqty",
	 * input); }
	 */
	
	public int codeCheck(String input) {
		return sqlSession.selectOne("codeCheck", input);
	}

	public List<EzenatProductAllDTO> searchProductname(String searchString){
		System.out.println("상품명 검색: " + searchString);
		return sqlSession.selectList("searchProductname", "%" + searchString + "%");
	}
	
	public List<EzenatProductAllDTO> searchProductcode(String searchString){
		System.out.println("상품코드 검색: " + searchString);
		return sqlSession.selectList("searchProductcode", "%" + searchString + "%");
	}
	
	public List<EzenatProductAllDTO> searchProductnameDel(String searchString){
		System.out.println("상품명 검색: " + searchString);
		return sqlSession.selectList("searchProductnameDel", "%" + searchString + "%");
	}
	
	public List<EzenatProductAllDTO> searchProductcodeDel(String searchString){
		System.out.println("상품코드 검색: " + searchString);
		return sqlSession.selectList("searchProductcodeDel", "%" + searchString + "%");
	}
	
	 public int adminDeleteMember(String id){ 											//관리자쪽 회원 삭제.
		 sqlSession.delete("adminDeleteMember",id); 
		 return sqlSession.delete("adminDeleteMember",id); 
	 }
	 
	 public List<EzenatMemberDTO> searchId(String searchString){
			System.out.println("아이디 검색: " + searchString);
			return sqlSession.selectList("searchId", "%" + searchString + "%");
		}
	 
	 public List<EzenatMemberDTO> searchEmail(String searchString){
			System.out.println("이메일 검색: " + searchString);
			return sqlSession.selectList("searchEmail", "%" + searchString + "%");
		}
	 
	 public List<EzenatMemberDTO> searchHp(String searchString){
			System.out.println("전화번호 검색: " + searchString);
			return sqlSession.selectList("searchHp", "%" + searchString + "%");
		}
	 public List<EzenatMemberDTO> searchNickname(String searchString){
			System.out.println("닉네임 검색: " + searchString);
			return sqlSession.selectList("searchNickname", "%" + searchString + "%");
		}
	 public List<EzenatMemberDTO> searchAddress(String searchString){
			System.out.println("주소 검색: " + searchString);
			return sqlSession.selectList("searchAddress", "%" + searchString + "%");
		}

	 public int memberMoveBlackList(String id) {
			return sqlSession.update("memberMoveBlackList", id);
		}
	 
	 public List<EzenatMemberDTO> memberBlackList() { 
		 return sqlSession.selectList("memberBlackList"); 
	 }
	 public List<String> memberIdList() {
			return sqlSession.selectList("memberIdList");
		}
	 
}
