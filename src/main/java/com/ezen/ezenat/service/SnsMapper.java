package com.ezen.ezenat.service;



import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.ezenat.dto.EzenatSnsBoardDTO;
import com.ezen.ezenat.dto.HashTagDTO;


@Service
public class SnsMapper {

	@Autowired
	private SqlSession sqlSession;
	
	public List<EzenatSnsBoardDTO> listSnsBoard(){
		return sqlSession.selectList("listSnsBoard");
	}
	
	public int insertSnsBoard(EzenatSnsBoardDTO dto) { 
		return sqlSession.insert("insertSnsBoard",dto); 
	}
	 
	 public List<EzenatSnsBoardDTO> searchContent(String searchString){
	 System.out.println("검색어: " + searchString); 
	 return sqlSession.selectList("searchSnsBoard","#"+searchString);				//값을 보낼때 #을 붙여서 보냄 . 이유는 구문에서 해시태그를 제외한 나머지만 검색되게 하기위해서. 구분자로 사용.
	 }
	 
	 public List<EzenatSnsBoardDTO> searchHashTag(String searchString){
	 System.out.println("검색어: "+searchString); 
	 return sqlSession.selectList("searchHashTag","%#"+searchString+"%"); 
	 }
	 
	 public EzenatSnsBoardDTO getSnsBoard(int sns_board_num) {
		 return	 sqlSession.selectOne("getSnsBoard",sns_board_num); 
	 }
	 
	 public List<HashTagDTO> clickHashTag(String hashTag_name){ 
	 return sqlSession.selectList("clickHashTag",hashTag_name); 							//해시태그 고유번호가있는 해시테그체크DTO 리스트 보내기 
	 }
	 
	  
	 
	 /*public List<EzenatSnsBoardDTO> searchWriter(String searchString){
	 * System.out.println("언급 : "+searchString); return
	 * sqlSession.selectList("searchWriter",searchString); 								//아이디검색 및 있으면 그 게시글리스트보내기
	 * }
	 */
	
	 public void insertHash(EzenatSnsBoardDTO dto) {
		 System.out.println("번호:"+dto.getSns_board_num());
		 System.out.println("content:"+dto.getContent());
		 System.out.println("write_date"+dto.getWrite_date());
		 System.out.println("main_img"+dto.getMain_image());
		 System.out.println("member_num"+dto.getMember_num());
		 System.out.println("sub_img1"+dto.getSub_image1());
		 System.out.println("sub_img2"+dto.getSub_image2());
		 System.out.println("sub_img3"+dto.getSub_image3());
		 System.out.println("sub_img4"+dto.getSub_image4());
			int a = 1;
			dto.setMember_num(a);																					//member_num은 현재 테스트중이므로 1로선언.	(추후에 외래키로 넣을듯..?)	
			int style_num = sqlSession.selectOne("getSnsBoardNum",dto);						//	해시태그체크DTO의 style_num 은 게시글 번호랑 같기때문에 게시글번호(getSnsBoardNum) 받아서 설정.
			String str[] = dto.getContent().split("#");														//글 내용을 #을 기준으로 스플릿한다.
			System.out.println(str.length);
			if(str.length == 1 ) {
				System.out.println("해시태그 없는 게시글");															//#을 기준으로 스플릿했는데 길이가 1이면 #이 없다는 뜻 (앞문장) 		ex) asdf#ghj#kl    <-asdf             			
			}else {																											//길이가 1보다 크면 해시태그가 있다는 뜻
				for(int i=1; i<str.length;++i) {																	//스플릿했을때 최#구일 일경우 0번(최)	은 해시태그가 절대 될수 없으므로 1번부터 for문
					String hashTag = (str[i].split(" ")[0]);														//#뒷부분을 띄어쓰기로 스플릿해서 띄어쓰기 앞부분을 해시태그라고 하고 (구분짓기위해서 띄어쓰기)
					System.out.println("해시태그 : #"+ hashTag);												//잘 저장되는지 출력하여 체크.
					if(hashTag.trim().equals("")) continue;													//만약 그 부분이 빈칸일경우 최##구일 처럼 된 경우이므로(이경우는 해시태그가 아닌 일반 내용 continue 시키기)  
					HashTagDTO hashdto = new HashTagDTO();
					hashdto.setHashTag_name(hashTag);
					hashdto.setStyle_num(style_num);																					
					sqlSession.insert("addHashTag",hashdto);	
				}	
			}
	
		}
			
		public List<HashTagDTO> getHashTag(String hashTag) { 
		return sqlSession.selectList("getHashTag",hashTag); 
		}
			
		
	/*
	 * 
	 *
	 * 
	 * public int deleteBoard(int num) { EzenatSnsBoardDTO dto =
	 * sqlSession.selectOne("getSnsBoard",num);
	 * 
	 * return sqlSession.delete("deleteSnsBoard",num);
	 * 
	 * }
	 */
	/*
	 * public int updateBoard(BoardDTO updateDTO) { BoardDTO dto =
	 * sqlSession.selectOne("getBoard",updateDTO.getNum());
	 * if(dto.getPasswd().equals(updateDTO.getPasswd())) { return
	 * sqlSession.update("updateBoard",updateDTO); }else { return -1; } }
	 */
	
		
}
