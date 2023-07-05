package com.ezen.ezenat;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.ezenat.dto.EzenatSnsBoardDTO;

import com.ezen.ezenat.dto.HashTagDTO;
import com.ezen.ezenat.service.SnsMapper;

@Controller
public class SnsController {

	@Autowired
	private SnsMapper snsMapper;

	@RequestMapping("/list_sns.do")
	public ModelAndView listSnsBoard(HttpServletRequest req) {
		List<EzenatSnsBoardDTO> list = snsMapper.listSnsBoard();
		HttpSession session = req.getSession();
		String upPath = (String) session.getAttribute("upPath");
		if (upPath == null) {
			session.setAttribute("upPath", session.getServletContext().getRealPath("/resources/images"));
		}
		return new ModelAndView("sns/sns_list", "listSnsBoard", list);
	}

	@RequestMapping(value = "/insert_sns.do", method = RequestMethod.GET)
	public String insertFormBoard() {
		return "sns/sns_insert";
	}

	@RequestMapping(value = "/insert_sns.do", method = RequestMethod.POST)
	public String insertSnsOkBoard(HttpServletRequest req, @ModelAttribute EzenatSnsBoardDTO dto, MultipartFile mf)
			throws IOException {

		MultipartHttpServletRequest mr = (MultipartHttpServletRequest) req;
		Iterator<String> fileNames = mr.getFileNames();
		String upPath = "C:/study3/finalProject/src/main/webapp/resources/images/";
		
	
		int a = 1; 
		dto.setMember_num(a); // 임시부여. 7월5일기준 member_num 가지고 와야해서 다시수정필요.
		 
		
		while (fileNames.hasNext()) {
			String img = fileNames.next();
			mf = mr.getFile(img);
			String img_name = mf.getOriginalFilename();
			File file = new File(upPath, img_name);

			if (mf.getSize() != 0) {
				if (!file.exists())
					file.mkdirs();
				try {
					mf.transferTo(file);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
			System.out.println(img_name);
			if (img_name == null || img_name.equals("")) {
				break;
			}

			if (dto.getMain_image() == null || dto.getMain_image().trim().equals("")) {
				dto.setMain_image(img_name);
			} else if (dto.getSub_image1() == null || dto.getSub_image1().trim().equals("")) {
				dto.setSub_image1(img_name);
			} else if (dto.getSub_image2() == null || dto.getSub_image2().trim().equals("")) {
				dto.setSub_image2(img_name);
			} else if (dto.getSub_image3() == null || dto.getSub_image3().trim().equals("")) {
				dto.setSub_image3(img_name);
			} else if (dto.getSub_image4() == null || dto.getSub_image4().trim().equals("")) {
				dto.setSub_image4(img_name);
			}
		}
		if (dto.getSub_image1() == null || dto.getSub_image1().trim().equals("")) {
			dto.setSub_image1("");
		}
		if (dto.getSub_image2() == null || dto.getSub_image2().trim().equals("")) {
			dto.setSub_image2("");
		}
		if (dto.getSub_image3() == null || dto.getSub_image3().trim().equals("")) {
			dto.setSub_image3("");
		}
		if (dto.getSub_image4() == null || dto.getSub_image4().trim().equals("")) {
			dto.setSub_image4("");
		}
		int res = snsMapper.insertSnsBoard(dto);

		if (res > 0) {
			if (!dto.getContent().trim().equals("")) {
				snsMapper.insertHash(dto);
			}
			req.setAttribute("msg", "게시글 등록성공! STYLE 목록페이지로 이동합니다.");
			req.setAttribute("url", "list_sns.do");
		} else {
			req.setAttribute("msg", "게시글 등록실패! STYLE 등록페이지로 이동합니다.");
			req.setAttribute("url", "insert_sns.do");
		}

		return "message";
	}

	@RequestMapping(value = "/search_sns.do", method = RequestMethod.GET)
	public String searchBoard() {
		return "sns/sns_list";
	}

	@RequestMapping(value = "/search_sns.do", method = RequestMethod.POST)
	public String searchBoard(String search, String searchString, HttpServletRequest req) {
		System.out.println("select :" + search);
		if (searchString == null || searchString.trim().equals("")) {
			return "redirect:list_sns.do"; 																				// 검색란에 아무것도 입력하지 않았을때는 리스트 페이지로이동.
		}
		List<EzenatSnsBoardDTO> list = null; 																	// 보내고자 하는 정보값을 담기 위한 list선언.
		if (search.trim().equals("content")) { 																		// 검색 입력 설정을 '글내용' 이라고 정하고
			list = snsMapper.searchContent(searchString); 													// Mapper에 searchContent로 넘어가 list에 넣는다.
		} else if (search.trim().equals("hashTag_name")) {													 // hashTag_name 과 동일했을때
			list = snsMapper.searchHashTag(searchString); 													// Mapper에 searchHashTag로 넘어가 list에 넣는다.
		}
		req.setAttribute("listSnsBoard", list);
		return "sns/sns_list";
	}

	@RequestMapping("/content_sns.do")
	public String contentBoard(HttpServletRequest req, @RequestParam int sns_board_num) {
		EzenatSnsBoardDTO dto = snsMapper.getSnsBoard(sns_board_num);
		req.setAttribute("getSnsBoard", dto);
		List<String> contentList = new ArrayList<>();
		List<HashTagDTO> hashTagList = new ArrayList<>();
		if (dto.getContent() == null) {
			return "sns/sns_content";
		}
		String str[] = dto.getContent().split(" ");
		for (int i = 0; i < str.length; ++i) {

			String str1[] = str[i].split("#"); 																// 단어를 #를 기준으로 스플릿
			if (str1.length > 1) { 																				// 위에서 설명한것과 동일
				contentList.add(str1[0]);
				for (int k = 1; k < str1.length; ++k) {
					if (str1[k].trim().equals("")) {
						contentList.add("#");
						continue;
					}
					String hashTag = str1[k];
					System.out.println("해시태그 : #" + hashTag);
					List<HashTagDTO> checkList = snsMapper.getHashTag(hashTag);
					for (HashTagDTO checkDTO : checkList) {
						if (checkDTO.getStyle_num() == sns_board_num) {
							hashTagList.add(checkDTO);
							break;
						}
					}
					contentList.add("#" + hashTag);
				}
				continue;
			}
			contentList.add(str[i]);
		}
		req.setAttribute("hashTagList", hashTagList);
		req.setAttribute("contentList", contentList);
		req.setAttribute("getSnsBoard", dto);

		return "sns/sns_content";
	}

	@RequestMapping("/click_hashTag.do")
	public String clickHashTag(@RequestParam String hashTag_name, HttpServletRequest req) {

		List<HashTagDTO> click = snsMapper.clickHashTag(hashTag_name); 			// HashTagDTO에서 click 이라는 리스트 생성하여 clickHashTag
																														// 실행 시 hashTag_name 값을 리스트에 넣는다.
		System.out.println("해시태그 리스트 갯수 : " + click.size()); 									// 제대로 들어왔는지 확인.
		List<EzenatSnsBoardDTO> list = new ArrayList<>(); 									// ezenatsnsBoard List 선언하기.
		for (HashTagDTO dto : click) {																	// for문을 통하여 등록된 hashTagDTO 의 style_num(게시글번호) 값을 list 에 넣어 req로 뿌려준다.
			list.add(snsMapper.getSnsBoard(dto.getStyle_num()));

		}
		System.out.println("해시태그달린게시글 리스트 : " + list.size());
		req.setAttribute("listSnsBoard", list);
		return "sns/sns_list";
	}

	/*
	 * 
	 * @RequestMapping(value="/delete_SnsBoard.do",method=RequestMethod.GET) public
	 * String deleteFormBoard() { return "sns/deleteForm"; }
	 * 
	 * @RequestMapping(value="/delete_SnsBoard.do",method=RequestMethod.POST) public
	 * String deleteProBoard(HttpServletRequest req,int num,String passwd) { int res
	 * = snsMapper.deleteBoard(num); if(res > 0) { req.setAttribute("msg",
	 * "게시글 삭제성공! 게시글 목록페이지로 이동합니다."); req.setAttribute("url", "list_sns.do"); }else
	 * { req.setAttribute("msg", "게시글 삭제실패! 게시글 보기페이지로 이동합니다.");
	 * req.setAttribute("url", "content_SnsBoard.do?num="+num); } return "message";
	 * }
	 */

}
