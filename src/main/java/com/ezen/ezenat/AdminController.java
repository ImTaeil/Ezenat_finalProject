package com.ezen.ezenat;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.ezenat.dto.EzenatCategoryDTO;
import com.ezen.ezenat.dto.EzenatMemberDTO;
import com.ezen.ezenat.dto.EzenatProductAllDTO;
import com.ezen.ezenat.dto.EzenatProductDTO;
import com.ezen.ezenat.dto.EzenatProductImageDTO;
import com.ezen.ezenat.service.AdminMapper;
import com.ezen.ezenat.service.MemberMapper;

import net.sf.json.JSONArray;

@Controller
public class AdminController {


	@Autowired
	private AdminMapper adminMapper;
	@Autowired
	private MemberMapper memberMapper;
	
	@RequestMapping(value = "/admin_member_list.do" , method = RequestMethod.GET)
	public String memberlist_admin(HttpServletRequest req,@RequestParam(required=false)Map<String,String>map) throws Exception {
		
		if(map.get("mode")==null	|| map.get("mode").equals("")) {
			List<EzenatMemberDTO> list = memberMapper.listMember();
			System.out.println("리스트사이즈: "+list.size());
			req.setAttribute("listMember", list);
			req.setAttribute("mode", "N");
		}else if(map.get("mode").equals("Y")) {
			
			List<EzenatMemberDTO> list = adminMapper.memberBlackList();
			System.out.println("리스트사이즈: "+list.size());
			req.setAttribute("listMember", list);
			req.setAttribute("mode", "Y");
		
			
			}

		return "admin/admin_member_list";
		
			
		}
	
		
		
	
	
	@RequestMapping("/admin_main.do")
	public String mainAdmin() {
		return "admin/admin_main";
	}

	@RequestMapping(value = "/admin_category.do", method = RequestMethod.GET)
	public ModelAndView categoryAdmin(HttpServletRequest req) throws Exception {

		List<EzenatCategoryDTO> list = adminMapper.listCate();
		System.out.println("listsize..." + list);

		return new ModelAndView("admin/admin_category", "listCate", JSONArray.fromObject(list));

	}

	@RequestMapping(value = "/admin_product_list.do")
	public String productListAdmin(HttpServletRequest req,@RequestParam(required = false)Map<String, String> map) {
		
		HttpSession session = req.getSession();
		String upPath = (String) session.getAttribute("upPath");
		if (upPath == null) {
			session.setAttribute("upPath", session.getServletContext().getRealPath("/resources/images"));
		}
		
		if(map.get("mode")==null || map.get("mode").equals("")) {
			List<EzenatProductAllDTO> list = adminMapper.listProd();
			System.out.println("리스트 사이즈:"+list.size());
			req.setAttribute("listProd", list);
			
		}else if(map.get("mode").contentEquals("Y")) {
			
			List<EzenatProductAllDTO> list = new ArrayList<>();
			List<Integer> deleteNumList = adminMapper.deleteNumList();		//삭제된번호.
			for(int a : deleteNumList) {
			System.out.println(a);
			EzenatProductAllDTO dto = adminMapper.deleteProdList(a);
			list.add(dto);
			
			}
			req.setAttribute("listProd", list);
			req.setAttribute("mode", "Y");
	
			
		}
		return "admin/admin_product_list";
		
		
		
	}

	@RequestMapping(value = "/admin_product_insert.do", method = RequestMethod.GET)
	public ModelAndView productInsertAdmin() throws Exception {
		List<EzenatCategoryDTO> list = adminMapper.listCate();
		System.out.println("카테고리 리스트사이즈: "+list.size());
		return new ModelAndView("admin/admin_product_insert","listCate", JSONArray.fromObject(list));
	}

	@RequestMapping(value = "/admin_product_insert.do", method = RequestMethod.POST)
	public String productInsertOkAdmin(HttpServletRequest req, @ModelAttribute EzenatProductDTO dto, MultipartFile mf,BindingResult result)
			throws IOException {
		
		
		String[] product_size = req.getParameterValues("product_size");
		System.out.println(dto.getProduct_code());
		MultipartHttpServletRequest mr = (MultipartHttpServletRequest) req;
		Iterator<String> it = (Iterator<String>) mr.getFileNames();
		String upPath = "C:/study3/finalProject/src/main/webapp/resources/images/";
		EzenatProductImageDTO imgDTO = new EzenatProductImageDTO();
		
	    dto.setProduct_size(product_size[0]);
	    
		String a = "test";
		int b = 1;
		dto.setProduct_code(dto.getCategory_code()+dto.getProduct_code());
		System.out.println(dto.getProduct_code());
		dto.setProduct_largecategory(a);
		dto.setProduct_mediumcategory(a);
		dto.setProduct_smallcategory(a);
		dto.setProduct_explain_design(a);
		dto.setProduct_explain_fabric(a);
		dto.setProduct_explain_size(a);
		dto.setProduct_margin(b);
		dto.setProduct_exchanged(b);
		dto.setProduct_refunded(b);

		
		int count = adminMapper.getProductCount(dto);
	
		if(count >= 1) {
			req.setAttribute("msg", "중복되는 상품이 존재합니다.");
			req.setAttribute("url", "admin_product_insert.do");
			return "/message";
		}
		int res = adminMapper.insertProduct(dto);
		int product_num = adminMapper.getProductNum(dto);
		if (res > 0) {
			
			imgDTO.setProduct_num(product_num);
			while (it.hasNext()) {
				String img = it.next();
				mf = mr.getFile(img);
				String prod_image = mf.getOriginalFilename();
				File file = new File(upPath, prod_image);
				if (mf.getSize() != 0) {
					if (!file.exists())
						file.mkdirs();
					try {
						mf.transferTo(file);
					} catch (IllegalStateException | IOException e) {
						e.printStackTrace();
					}
				}
				System.out.println(prod_image);
				if (prod_image == null || prod_image.equals("")) {
					break;
				}
				// 사진 순서대로 넣기
				if (imgDTO.getProduct_image1() == null || imgDTO.getProduct_image1().equals("")) {
					imgDTO.setProduct_image1(prod_image);
				} else if (imgDTO.getProduct_image2() == null || imgDTO.getProduct_image2().equals("")) {
					imgDTO.setProduct_image2(prod_image);
				} else if (imgDTO.getProduct_image3() == null || imgDTO.getProduct_image3().equals("")) {
					imgDTO.setProduct_image3(prod_image);
				} else if (imgDTO.getProduct_image4() == null || imgDTO.getProduct_image4().equals("")) {
					imgDTO.setProduct_image4(prod_image);
				} else if (imgDTO.getProduct_image5() == null || imgDTO.getProduct_image5().equals("")) {
					imgDTO.setProduct_image5(prod_image);
				}	else if (imgDTO.getProduct_image6() == null || imgDTO.getProduct_image6().equals("")) {
					imgDTO.setProduct_image6(prod_image);
				}	else if (imgDTO.getProduct_image7() == null || imgDTO.getProduct_image7().equals("")) {
					imgDTO.setProduct_image7(prod_image);
				}	else if (imgDTO.getProduct_image8() == null || imgDTO.getProduct_image8().equals("")) {
					imgDTO.setProduct_image8(prod_image);
				}	else if (imgDTO.getProduct_image9() == null || imgDTO.getProduct_image9().equals("")) {
					imgDTO.setProduct_image9(prod_image);
				}	else if (imgDTO.getProduct_image10() == null || imgDTO.getProduct_image10().equals("")) {
					imgDTO.setProduct_image10(prod_image);
				}
			
			
			//이미지 없는거에 "" 값 정해주기
			if (imgDTO.getProduct_image2() == null || imgDTO.getProduct_image2().equals("")) {
				imgDTO.setProduct_image2("");
			}
			if (imgDTO.getProduct_image3() == null || imgDTO.getProduct_image3().equals("")) {
				imgDTO.setProduct_image3("");
			}
			if (imgDTO.getProduct_image4() == null || imgDTO.getProduct_image4().equals("")) {
				imgDTO.setProduct_image4("");
			}
			if (imgDTO.getProduct_image5() == null || imgDTO.getProduct_image5().equals("")) {
				imgDTO.setProduct_image5("");
			}
			if (imgDTO.getProduct_image6() == null || imgDTO.getProduct_image6().equals("")) {
				imgDTO.setProduct_image6("");
			}
			if (imgDTO.getProduct_image7() == null || imgDTO.getProduct_image7().equals("")) {
				imgDTO.setProduct_image7("");
			}
			if (imgDTO.getProduct_image8() == null || imgDTO.getProduct_image8().equals("")) {
				imgDTO.setProduct_image8("");
			}
			if (imgDTO.getProduct_image9() == null || imgDTO.getProduct_image9().equals("")) {
				imgDTO.setProduct_image9("");
			}
			if (imgDTO.getProduct_image10() == null || imgDTO.getProduct_image10().equals("")) {
				imgDTO.setProduct_image10("");
			}
			}
			int res2 = adminMapper.insertProductImage(imgDTO);
			req.setAttribute("msg", "상품등록 성공");
			req.setAttribute("url", "admin_product_list.do");
			
		} else {
			req.setAttribute("msg", "상품 등록실패!");
			req.setAttribute("url", "admin_product_insert.do");
		}
		
		return "message";
	}
			

	@RequestMapping(value = "/admin_product_view.do",method = RequestMethod.GET)
	public String admin_prod_view(HttpServletRequest req) throws ServletRequestBindingException{
		int product_num = ServletRequestUtils.getIntParameter(req, "product_num");
		EzenatProductAllDTO dto = adminMapper.getProd(product_num);
				
		List<String> list = new ArrayList<>();
		list.add(dto.getProduct_image1());
	
		if(dto.getProduct_image2() != null) {
			if(!dto.getProduct_image2().equals("")) {
				list.add(dto.getProduct_image2());
			}
		}
		if(dto.getProduct_image3() != null) {
			if(!dto.getProduct_image3().equals("")) {
				list.add(dto.getProduct_image3());
			}
		}
		if(dto.getProduct_image4() != null) {
			if(!dto.getProduct_image4().equals("")) {
				list.add(dto.getProduct_image4());
			}
		}
		if(dto.getProduct_image5() != null) {
			if(!dto.getProduct_image5().equals("")) {
				list.add(dto.getProduct_image5());
			}
		}
		if(dto.getProduct_image6() != null) {
			if(!dto.getProduct_image6().equals("")) {
				list.add(dto.getProduct_image6());
			}
		}
		if(dto.getProduct_image7() != null) {
			if(!dto.getProduct_image7().equals("")) {
				list.add(dto.getProduct_image7());
			}
		}
		if(dto.getProduct_image8() != null) {
			if(!dto.getProduct_image8().equals("")) {
				list.add(dto.getProduct_image8());
			}
		}
		if(dto.getProduct_image9() != null) {
			if(!dto.getProduct_image9().equals("")) {
				list.add(dto.getProduct_image9());
			}
		}
		if(dto.getProduct_image10() != null) {
			if(!dto.getProduct_image10().equals("")) {
				list.add(dto.getProduct_image10());
			}
		}
		
		req.setAttribute("getProd", dto);
		req.setAttribute("imageList", list);	
		
		return "/admin/admin_product_view";					
	}
	
	@RequestMapping(value = "/admin_product_view.do", method = RequestMethod.POST)
	public ModelAndView admin_prod_viewUpdate(HttpServletRequest req, @ModelAttribute EzenatProductDTO dto,@ModelAttribute EzenatProductImageDTO imgDTO) throws IllegalStateException, IOException {
		System.out.println("요까지");
		System.out.println(dto.getProduct_num());
		MultipartHttpServletRequest mr = (MultipartHttpServletRequest) req;
		Iterator<String> it = (Iterator<String>) mr.getFileNames();
		
		String upPath = "C:/study3/finalProject/src/main/webapp/resources/images/";
		String[] product_size = req.getParameterValues("product_size");
		
		ModelAndView mav = new ModelAndView("message");
	
		for(int i=0;i<product_size.length;i++) {
			if(product_size[i] != null) {
				dto.setProduct_size(product_size[i]);
			}
		}
		System.out.println(dto.getProduct_size());
		
		/*
		 * String a = "test"; int b = 1;
		*/
		 		
			while (it.hasNext()) {
				String img = it.next();
				MultipartFile mf = mr.getFile(img);			
				String prod_image = mf.getOriginalFilename();
				File file = new File(upPath, prod_image);
				if (mf.getSize() != 0) {
					if (!file.exists())
						file.mkdirs();
					try {
						mf.transferTo(file);
					} catch (IllegalStateException | IOException e) {
						e.printStackTrace();
					}
				}
				System.out.println(prod_image);
				if (prod_image == null || prod_image.equals("")) {
					break;
				}
				// 사진 순서대로 넣기
				if (imgDTO.getProduct_image1() == null || imgDTO.getProduct_image1().equals("")) {
					imgDTO.setProduct_image1(prod_image);
				} else if (imgDTO.getProduct_image2() == null || imgDTO.getProduct_image2().equals("")) {
					imgDTO.setProduct_image2(prod_image);
				} else if (imgDTO.getProduct_image3() == null || imgDTO.getProduct_image3().equals("")) {
					imgDTO.setProduct_image3(prod_image);
				} else if (imgDTO.getProduct_image4() == null || imgDTO.getProduct_image4().equals("")) {
					imgDTO.setProduct_image4(prod_image);
				} else if (imgDTO.getProduct_image5() == null || imgDTO.getProduct_image5().equals("")) {
					imgDTO.setProduct_image5(prod_image);
				}	else if (imgDTO.getProduct_image6() == null || imgDTO.getProduct_image6().equals("")) {
					imgDTO.setProduct_image6(prod_image);
				}	else if (imgDTO.getProduct_image7() == null || imgDTO.getProduct_image7().equals("")) {
					imgDTO.setProduct_image7(prod_image);
				}	else if (imgDTO.getProduct_image8() == null || imgDTO.getProduct_image8().equals("")) {
					imgDTO.setProduct_image8(prod_image);
				}	else if (imgDTO.getProduct_image9() == null || imgDTO.getProduct_image9().equals("")) {
					imgDTO.setProduct_image9(prod_image);
				}	else if (imgDTO.getProduct_image10() == null || imgDTO.getProduct_image10().equals("")) {
					imgDTO.setProduct_image10(prod_image);
				}
			
			}
			if(imgDTO.getProduct_image1() == null || imgDTO.getProduct_image1().equals("")) {
				if	(imgDTO.getProduct_image2() != null) {
					imgDTO.setProduct_image1(imgDTO.getProduct_image2());
					imgDTO.setProduct_image2("");
				}	
				if	(imgDTO.getProduct_image3() != null) {
					imgDTO.setProduct_image1(imgDTO.getProduct_image3());
					imgDTO.setProduct_image3("");
				}
				if	(imgDTO.getProduct_image4() != null) {
					imgDTO.setProduct_image1(imgDTO.getProduct_image4());
					imgDTO.setProduct_image4("");
				}
				if	(imgDTO.getProduct_image5() != null) {
					imgDTO.setProduct_image1(imgDTO.getProduct_image5());
					imgDTO.setProduct_image5("");
				}
				if	(imgDTO.getProduct_image6() != null) {
					imgDTO.setProduct_image1(imgDTO.getProduct_image6());
					imgDTO.setProduct_image6("");
				}
				if	(imgDTO.getProduct_image7() != null) {
					imgDTO.setProduct_image1(imgDTO.getProduct_image7());
					imgDTO.setProduct_image7("");
				}
				if	(imgDTO.getProduct_image8() != null) {
					imgDTO.setProduct_image1(imgDTO.getProduct_image8());
					imgDTO.setProduct_image8("");
				}
				if	(imgDTO.getProduct_image9() != null) {
					imgDTO.setProduct_image1(imgDTO.getProduct_image9());
					imgDTO.setProduct_image9("");
				}
				if	(imgDTO.getProduct_image10() != null) {
					imgDTO.setProduct_image1(imgDTO.getProduct_image10());
					imgDTO.setProduct_image10("");
				}
			}
			
			
			if (imgDTO.getProduct_image2() == null || imgDTO.getProduct_image2().equals("")) {
				imgDTO.setProduct_image2("");
			}
			if (imgDTO.getProduct_image3() == null || imgDTO.getProduct_image3().equals("")) {
				imgDTO.setProduct_image3("");
			}
			if (imgDTO.getProduct_image4() == null || imgDTO.getProduct_image4().equals("")) {
				imgDTO.setProduct_image4("");
			}
			if (imgDTO.getProduct_image5() == null || imgDTO.getProduct_image5().equals("")) {
				imgDTO.setProduct_image5("");
			}
			if (imgDTO.getProduct_image6() == null || imgDTO.getProduct_image6().equals("")) {
				imgDTO.setProduct_image6("");
			}
			if (imgDTO.getProduct_image7() == null || imgDTO.getProduct_image7().equals("")) {
				imgDTO.setProduct_image7("");
			}
			if (imgDTO.getProduct_image8() == null || imgDTO.getProduct_image8().equals("")) {
				imgDTO.setProduct_image8("");
			}
			if (imgDTO.getProduct_image9() == null || imgDTO.getProduct_image9().equals("")) {
				imgDTO.setProduct_image9("");
			}
			if (imgDTO.getProduct_image10() == null || imgDTO.getProduct_image10().equals("")) {
				imgDTO.setProduct_image10("");
			}
			
			
			int res = adminMapper.updateProdImage(imgDTO);
			System.out.println(res);
			if(res == 0) {
				req.setAttribute("msg", "이미지 수정 실패!");
				req.setAttribute("url", "admin_product_view.do?product_num="+dto.getProduct_num());
			}else{			
				req.setAttribute("msg", "이미지 수정 성공");	
				req.setAttribute("url", "admin_product_list.do");
			
			}
			
			int prod_res = adminMapper.updateProd(dto);
			System.out.println("들왔니" + prod_res);
			if(prod_res==0) {
				req.setAttribute("msg", "상품 수정 실패");
				req.setAttribute("url", "admin_product_view.do?product_num="+dto.getProduct_num());
			}else {
				req.setAttribute("msg", "상품 수정 성공");
				req.setAttribute("url", "admin_product_list.do");
					
			}
		
		return mav;
	}
	
	
	 @PostMapping(value = "/admin_product_realDelete.do")	 
	 @ResponseBody public int real_delete_list(@RequestParam(value="dlist",required=false)List<String> list) { 
		System.out.println("일단 요까지");
		 if(list != null) { 
			 for(String str : list) { 
				 str = str.split("\"")[1]; 
				 int res = adminMapper.deleteRealProdList(str);
				 break; 
				 } 
			 } 
		 System.out.println("여기");
				 	
		return 1; 
		}
	 
	 
	
	@PostMapping(value = "/admin_product_moveDeleteList.do")
	@ResponseBody
	public int move_delete_list(@RequestParam(value="list",required=false)List<String> list ) {
		System.out.println("들어왔노라");
		if(list != null) {
			for(String str : list) {
				str = str.split("\"")[1];				
				int res = adminMapper.moveDeleteProdList(str);
			
			}
		}
		return 1;
	}
	
	@PostMapping("/admin_product_codeCheck.do")
	@ResponseBody
	public int code_check(@RequestParam(value="input",required=false)String input){
		System.out.println("컨트롤러도착");
		int res = adminMapper.codeCheck(input);
		return res;
	}

	/*
	 * @PostMapping("/admin_product_editPqty.do")
	 * 
	 * @ResponseBody public int
	 * productEditPqty(@RequestParam(value="input",required=false)int input){
	 * System.out.println("컨트롤러도착"); int res = adminMapper.editPqty(input); return
	 * res; }
	 */
	
	
	
	@RequestMapping(value="/admin_product_search.do", method = RequestMethod.POST)
		public String adminProductSearch(String search, String searchString, HttpServletRequest req,@RequestParam(required = false)Map<String, String> map) {
			System.out.println("search: " + search);
			if(searchString == null || searchString.trim().equals("")) {
				return "redirect:admin_product_list.do";
				
			}
			
			if(map.get("mode")==null || map.get("mode").equals("")) {		
			List<EzenatProductAllDTO> list = null;
			if(search.trim().equals("product_name")) {
				System.out.println(searchString);
					list = adminMapper.searchProductname(searchString);
					System.out.println("상품명 검색 사이즈: " + list.size());
				}else if(search.trim().equals("product_code")) {
					list = adminMapper.searchProductcode(searchString);
					System.out.println("상품코드 검색 사이즈: " + list.size());
				}
				req.setAttribute("listProd", list);
			
			
			}else if(map.get("mode").contentEquals("Y")) {
				List<EzenatProductAllDTO> list = null;
				if(search.trim().equals("product_name")) {
					System.out.println(searchString);
					list = adminMapper.searchProductnameDel(searchString);
					System.out.println("상품명 검색 사이즈: " + list.size());
					
				}else if(search.trim().equals("product_code")) {
					list = adminMapper.searchProductcodeDel(searchString);
					System.out.println("상품코드 검색 사이즈: " + list.size());
				}
				req.setAttribute("listProd", list);
				req.setAttribute("mode", "Y");
				
				
			}
			
			return "admin/admin_product_list";
		
			
		}

	
	@PostMapping(value = "/admin_member_delete.do")
	@ResponseBody
	public int member_delete_list(@RequestParam(value="list",required=false)List<String> list ) {
		System.out.println("요까지왔나?");
		if(list != null) {
			for(String str : list) {
				str = str.split("\"")[1];				
				int res = adminMapper.adminDeleteMember(str);
				
			}
		}
		return 1;
	}
	
	@RequestMapping(value = "/admin_member_search.do", method = RequestMethod.GET)
	public String searchMember() {
		return "admin/admin_member_list";
	}

	@RequestMapping(value = "/admin_member_search.do", method = RequestMethod.POST)
	public String searchMember(String search, String searchString, HttpServletRequest req) {
		System.out.println("select :" + search);
	

		if (searchString == null || searchString.trim().equals("")) {
			return "redirect:admin_member_list.do"; 																				
		}
		List<EzenatMemberDTO> list = null; 																
		if (search.trim().equals("id")) { 																		
			list = adminMapper.searchId(searchString); 													
		} else if (search.trim().equals("email")) {													 
			list = adminMapper.searchEmail(searchString); 													
		} else if(search.trim().equals("hp")) {
			list = adminMapper.searchHp(searchString);
		} else if(search.trim().equals("nickname")) {
			list = adminMapper.searchNickname(searchString);
		} else if(search.trim().equals("address")) {
			list = adminMapper.searchAddress(searchString);		
		}
		
		req.setAttribute("listMember", list);
		return "admin/admin_member_list";
	}
	
	@PostMapping("/admin_member_moveBlackList.do")
	@ResponseBody
	public int move_black_list(@RequestParam String mode,@RequestParam(value="dlist",required=false)List<String> list ) {
		System.out.println("들어왔노라");
		if(mode.equals("N")) {
			if(list != null) {
				for(String str : list) {
					str = str.split("\"")[1];				
					int res = adminMapper.memberMoveBlackList(str);
					
				}
			}
			return  -1;
		}
		if(mode.equals("Y")) {
			return 1;
		}
	
		return 0;
	}
	
		
}
	

