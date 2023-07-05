package com.ezen.ezenat;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.ezenat.dto.EzenatMemberDTO;
import com.ezen.ezenat.service.MemberMapper;
import com.ezen.ezenat.service.SendCertificationService;

@Controller
public class MallClientController {

	@Autowired
	private SendCertificationService sendSerificationService;

	 @Autowired
	 private JavaMailSender mailSender;
	 
	@Autowired
	private MemberMapper memberMapper;

	@RequestMapping("/index")
	public ModelAndView index() {

		return new ModelAndView("/index");
	}

	// 이제낫 홈페이지
	@RequestMapping("/mall_index.ezenat")
	public ModelAndView mall_index() {

		return new ModelAndView("/mall_client/mall_index");
	}

	// 회원가입 페이지
	@RequestMapping("/mall_member_join.ezenat")
	public ModelAndView mall_member_join() {

		return new ModelAndView("/mall_client/mall_member_join");
	}

	// 사용중인 아이디 체크
	@GetMapping("/idUseCheck")

	public @ResponseBody int idUseCheck(String id) {
		int res = memberMapper.idUseCheck(id);

		return res;
	}

	// 회원가입 - 휴대폰 문자 인증
	@GetMapping("/sendSMS")
	public @ResponseBody String sendSMS(String phoneNumber) {
		Random rand = new Random();
		String numStr = "";

		for (int i = 0; i < 4; i++) {
			String ran = Integer.toString(rand.nextInt(10));
			numStr += ran;
		}

		System.out.println("수신자 번호 : " + phoneNumber);
		System.out.println("인증번호 : " + numStr);

//		sendSerificationService.certifiedPhoneNumber(phoneNumber, numStr);

		return numStr;
	}

	// 회원가입 완료 페이지
	@RequestMapping("/mall_member_join_complete.ezenat")
	public ModelAndView mall_member_join_complete(HttpServletRequest req, @ModelAttribute EzenatMemberDTO dto,
			BindingResult result) {
//		if (result.hasErrors()) {
//			dto.setMember_rating("bronze");
//			dto.setAdmin_power("client");
//		}

		dto.setMember_rating("bronze");
		dto.setAdmin_power("client");
		dto.setNickname(dto.getName());

		System.out.println(dto.getName());

		int res = memberMapper.joinMember(dto);

		if (res > 0) {
			return new ModelAndView("/mall_client/mall_member_join_complete", "client_name", dto.getNickname());

		} else {
			req.setAttribute("msg", "회원가입에 실패했습니다. 다시 시도해주세요.");
			req.setAttribute("url", "mall_member_join.ezenat");

			return new ModelAndView("forward:/WEB-INF/views/message.jsp");
		}

	}
	
	// 회원 & 비회원 주문조회 페이지 (7/3 경필님 수정한부분)
	@RequestMapping("/mall_client_order_breakdown.ezenat")
	public ModelAndView mall_client_order_breakdown(HttpServletRequest req, String mode, String tab, Integer prevDays) {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		req.setAttribute("mode", mode);
		
		if (tab == null) {
			tab = "orders";
		}
		req.setAttribute("tab", tab);
		
		if (prevDays == null) {
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.MONTH, -3);
			
			req.setAttribute("prevDate", sdf.format(cal.getTime()));
			
		} else if (prevDays != null) {
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.DATE, -prevDays);
			
			req.setAttribute("prevDate", sdf.format(cal.getTime()));
		}
		req.setAttribute("todayDate", sdf.format(date));
		
		return new ModelAndView("/mall_client/mall_client_order_breakdown");
	}

	// 회원 로그인 기능
	@RequestMapping("/mall_client_login.ezenat")
	public ModelAndView mall_client_login(HttpServletRequest req) {
		HttpSession session = req.getSession();
		
		String id = req.getParameter("member_id");
		String password = req.getParameter("member_password");
		
		// 회원 체크
		int res = memberMapper.checkLogin(id, password);

		if (res == memberMapper.OK) {
			EzenatMemberDTO dto = memberMapper.getEzenatMemberById(id);
			
			session.setAttribute("memInfo", dto);
			
			return new ModelAndView("redirect:mall_index.ezenat");
			
		} else if (res == memberMapper.NOT_ID || res == memberMapper.NOT_PW) {
			req.setAttribute("msg", "아이디 또는 비밀번호가 일치하지 않습니다.");
			
		} else if (res == memberMapper.ERROR) {
			req.setAttribute("msg", "진행이 원활하지 않습니다, 잠시 후에 다시 이용해주세요.");
			
		} else if (id.equals("admin") && password.equals("1234")) {
			session.setAttribute("memInfo", id);
		} 

		req.setAttribute("url", "mall_index.ezenat");
		return new ModelAndView("forward:/WEB-INF/views/message.jsp");
	}

	// 회원 로그아웃 기능
	@RequestMapping("/mall_client_logout.ezenat")
	public String mall_client_logout(HttpServletRequest req) { // 리턴값 수정으로 String으로 바꿨어요.
		HttpSession session = req.getSession();
		String mode = (String) session.getAttribute("social");
		if (mode != null) {
			// kakao 계정으로 로그아웃할경우,
			if (mode.equals("kakao")) { 
				req.setAttribute("msg", "카카오계정이 정상적으로 로그아웃 되었습니다.");
				req.setAttribute("url", "https://accounts.kakao.com/logout?continue=https%3A%2F%2Fcs.kakao.com%2F");
				session.invalidate();
				return "kakaoMessage"; // 세션 종료후 메인화면으로 넘어가기위해 별도의 message.jsp 만들어놓음.
			}
		}

		session.invalidate();

		req.setAttribute("msg", "정상적으로 로그아웃됐습니다.");
		req.setAttribute("url", "mall_index.ezenat");
		return "message";

	}

	// 상품 리스트 페이지
	@RequestMapping("/mall_product_list.ezenat")
	public ModelAndView mall_product_list(HttpServletRequest req, String page) {
		req.setAttribute("page", page);

		return new ModelAndView("/mall_client/mall_product_list");
	}

	// 상품 상세 페이지
	@RequestMapping("/mall_product_content.ezenat")
	public ModelAndView mall_product_content(HttpServletRequest req) {

		return new ModelAndView("/mall_client/mall_product_content");
	}

	// 장바구니 페이지
	@RequestMapping("/mall_client_cart.ezenat")
	public ModelAndView mall_client_cart() {

		return new ModelAndView("/mall_client/mall_client_cart");
	}

	// 7월 4일(추가) 


	// 아이디 찾기 페이지
	@RequestMapping("/find_id.do")
	public String findId(HttpServletRequest req, String name, String email, String hp, String radio_option) {
		String mode = (String) req.getAttribute("mode");

		if (mode == null) {
			mode = "find_id";
			req.setAttribute("mode", "find_id");
		}

		return "mall_client/find_id";
	}

	// 비밀번호 찾기 페이지
	@RequestMapping("/find_pw.do")
	public String findPw(HttpServletRequest req) {
		String mode = (String) req.getAttribute("mode");
		if (mode == null) {
			mode = "find_pw";
			req.setAttribute("mode", "find_pw");
		}

		return "mall_client/find_id";
	}

	// 아이디 찾기 기능
	@RequestMapping(value = "/find_id_complete.do", method = RequestMethod.POST)
	public String findId(@RequestParam Map<String, String> map, HttpServletRequest req) {

		EzenatMemberDTO dto = new EzenatMemberDTO();
		String userId = null;
		if (map.get("mode").equals("find_id")) {
			if (map.get("radio_option").equals("hp")) {
				String hp1 = (String) map.get("hp").substring(0, 3);
				String hp2 = (String) map.get("hp").substring(3, 7);
				String hp3 = (String) map.get("hp").substring(7);
				System.out.println(hp1 + "-" + hp2 + "-" + hp3);
				String name = (String) map.get("name");
				dto.setHp1(hp1);
				dto.setHp2(hp2);
				dto.setHp3(hp3);
				dto.setName(name);
				userId = memberMapper.findIdHp(dto);
				System.out.println(userId);
			}
			if (map.get("radio_option").equals("email")) {

				dto.setName(map.get("name"));
				dto.setEmail(map.get("email"));
				userId = memberMapper.findIdEmail(dto);
				System.out.println(userId);
			}
			req.setAttribute("userId", userId);
			return "mall_client/find_id_complete";
		}
		if(map.get("mode").equals("find_pw")) {

			int res = memberMapper.findPw(map);
			
			if (res == 1) {
				char[] str = {'!','@','#','$','%','^','&','*','-','?'};	
				String pw = "";
				for (int i = 0; i < 12; i++) {
					pw += (char) ((Math.random() * 26) + 97);
				}		
				for(int i =0; i<4;i++) {
					char s = str[(int) ((Math.random()*9))];
					pw +=s;
				}
				
			
				map.put("password",pw);
				int rs = memberMapper.resetPw(map);
				 /* 이메일 보내기 */
		        String setFrom = "wjs9276@naver.com";
		        String toMail = map.get("email");
		        String title = "회원가입 인증 이메일 입니다.";
		        String content = 
		                "홈페이지를 방문해주셔서 감사합니다." +
		                "<br><br>" + 
		                "임시비밀번호는 " + pw + "입니다." + 
		                "<br>" + 
		                "해당 비밀번호를 비밀번호 입력창에 기입하여 주세요.";
		        try {
		            
		            MimeMessage message = mailSender.createMimeMessage();
		            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
		            helper.setFrom(setFrom);
		            helper.setTo(toMail);
		            helper.setSubject(title);
		            helper.setText(content,true);
		            mailSender.send(message);
		            
		        }catch(Exception e) {
		            e.printStackTrace();
		        }
		        
		        
				req.setAttribute("userPw", pw);

			}
			return "mall_client/find_pw_complete";
		}

		return "mall_client/find_id_complete";
	}


}
