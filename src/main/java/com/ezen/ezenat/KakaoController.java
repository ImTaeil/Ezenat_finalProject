package com.ezen.ezenat;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.ezenat.service.KakaoService;
import com.ezen.ezenat.service.MemberMapper;


@Controller
public class KakaoController {
	
	@Autowired
	private KakaoService ks;
	@Autowired
	private MemberMapper memberMapper;
	
//	@Autowired
//	private HttpSession session;
	
	@RequestMapping("/mall_index_top.do")
	public String kakaoLoginView() {
		return "client/mall_index_top";
	}
	
	@RequestMapping(value = "/kakaoLogin", method = RequestMethod.GET)
	public String loginTest(HttpSession session,@RequestParam(value = "code", required = false) String code,HttpServletRequest req) throws Throwable {
	
		System.out.println("code:" + code);		
		String access_Token = ks.getAccessToken(code);
    
		HashMap<String, Object> userInfo = ks.getUserInfo(access_Token);
		String hp = (String) userInfo.get("phone");			
		String hp1 = hp.substring(0,3);						//번호중간에 하이픈이 있기때문에  잘라서 가져옴.
		String hp2 = hp.substring(3,7);
		String hp3 = hp.substring(7);
		String gender = (String) userInfo.get("gender");
		if(gender.equals("male")) {
			gender="남성";
		}else if(gender.equals("female")) {
			gender="여성";
		}
		userInfo.put("hp1", hp1);
		userInfo.put("hp2", hp2);
		userInfo.put("hp3", hp3);
		System.out.println(hp1);
		System.out.println(hp2);
		System.out.println(hp3);
		String birth = (String) userInfo.get("birth");

		int count = memberMapper.checkJoin(userInfo);
		if(count == 0) {
			req.setAttribute("hp1", hp1);
			req.setAttribute("hp2", hp2);
			req.setAttribute("hp3", hp3);
			req.setAttribute("name",userInfo.get("name"));	
			req.setAttribute("email",userInfo.get("email"));	
			req.setAttribute("birth_year",userInfo.get("birthyear"));	
			req.setAttribute("birth_month",birth.substring(4,6));	
			req.setAttribute("birth_day",birth.substring(6));	
			req.setAttribute("gender",	gender);	
		
	
			return "mall_client/mall_member_join";
			
		}
		session.setAttribute("memInfo", userInfo.get("nickname"));
		session.setAttribute("social", "kakao");
		req.setAttribute("msg", "로그인 하셨습니다");
		req.setAttribute("url", "mall_index.ezenat");
		
		System.out.println("###access_Token#### : " + access_Token);	
		System.out.println("###access_Token#### : " + access_Token);
		System.out.println("###nickname#### : " + userInfo.get("nickname"));
		System.out.println("###email#### : " + userInfo.get("email"));
		System.out.println("###birthyear#### : " + userInfo.get("birthyear"));
		System.out.println("###birthday#### : " + userInfo.get("birthday"));
		System.out.println("###birth#### : " + userInfo.get("birth"));
		System.out.println("###gender#### : " + userInfo.get("gender"));
		System.out.println("###hp#### : " + userInfo.get("hp"));
		System.out.println("###hpS#### : " + userInfo.get("hpS"));
		System.out.println("###phone#### : " + userInfo.get("phone"));
		System.out.println("어서와");
		return "message";
	}

	
	
//	public String getAccessToken(String code) {
//	      String accessToken = "";
//	      String refresh_Token = "";
//	      String reqURL = "https://kauth.kakao.com/oauth/token";
//	      try {
//	         URL url = new URL(reqURL);
//	         HttpURLConnection con = (HttpURLConnection) url.openConnection();
//	         con.setRequestMethod("POST");
//	         con.setDoOutput(true);
//	         BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(con.getOutputStream()));
//	         StringBuilder sb = new StringBuilder();
//	         sb.append("grant_type=authorization_code");
//	         sb.append("&client_id=f25838346653fc8e34caa142400e5c89");
//	         sb.append("&redirect_uri=http://localhost:8081/ezenat/kakaoLogin");
//	         sb.append("&code="+code);
//	         bw.write(sb.toString());
//	         bw.flush();
//	         int res = con.getResponseCode();
//	         //결과 코드 200이면 성공
//	         System.out.println("res = "+res);
//	         //여기까지 오는데 401?
//	         BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
//	         String line = "";
//	         String result = "";
//	         while((line=br.readLine())!=null) {
//	            result += line;
//	         }
//	         System.out.println("response body ="+result);
//	         JsonParser parser = new JsonParser();
//	         JsonElement el = parser.parse(result);
//	         accessToken = el.getAsJsonObject().get("access_token").getAsString();
//	         System.out.println("accessToken="+accessToken);
//	         refresh_Token = el.getAsJsonObject().get("refresh_token").getAsString();
//	         System.out.println("accessToken="+accessToken);
//	         System.out.println("refreshToken="+refresh_Token);
//	         br.close();
//	         bw.close();
//	      }catch(Exception e) {
//	         e.printStackTrace();
//	      }
//	      return accessToken;
//	   }
//	
	
	
	
	
//	@RequestMapping("/kakaoLogin")
//	public String kakaoLogin() {
//		
//		return
//	}
	
//	@RequestMapping(value = "/loginTest", method = RequestMethod.GET)
//	public String loginpage_kakao_callback(HttpServletRequest request, HttpServletResponse response,
//		HttpSession session, Model model) throws Exception {
//		UrlPathHelper urlPathHelper = new UrlPathHelper();
//		String originalURL = urlPathHelper.getOriginatingRequestUri(request);
//		Map<String, String[]> paramMap = request.getParameterMap();
//		Iterator keyData = paramMap.keySet().iterator();
//		CommonData dto = new CommonData();
//		while (keyData.hasNext()) {
//		String key = ((String) keyData.next());
//		String[] value = paramMap.get(key);
//		dto.put(key, value[0].toString());
//		}
//		
//		String url = "https://kauth.kakao.com/oauth/token";
//		RestTemplate restTemplate = new RestTemplate();
//		HttpHeaders headers = new HttpHeaders();
//		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
//		LinkedMultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
//		map.add("client_id", "7b402ddebc44b5d24d5fdc2ac761e43d");
//		String redirect_url = "http://localhost:8081/kakao/loginTest";
//		map.add("redirect_uri", redirect_url);
//		map.add("grant_type", "authorization_code");
//		map.add("code", dto.get("code"));
//        
//		HttpEntity<LinkedMultiValueMap<String, String>> request2 = new HttpEntity<LinkedMultiValueMap<String, String>>(
//				map, headers);
//		CommonData response2 = restTemplate.postForObject(url, request2, CommonData.class);
//		map.clear();
//		model.addAttribute("access_token", response2.get("access_token"));
//		return "/kakao/loginTest";
//	}
	
	
	
	
	
	
	
	
//	private final static String K_CLIENT_ID = "7b402ddebc44b5d24d5fdc2ac761e43d";
//    //이런식으로 REDIRECT_URI를 써넣는다.                                                                                                  //                                                //
//	private final static String K_REDIRECT_URI = "http://localhost:8081/kakao";
//
//	public static String getAuthorizationUrl(HttpSession session) {
//		String kakaoUrl = "https://kauth.kakao.com/oauth/authorize?" + "client_id=" + K_CLIENT_ID + "&redirect_uri="+ K_REDIRECT_URI + "&response_type=code";
//		return kakaoUrl;
//	}
//
//
//	public static JsonNode getAccessToken(String autorize_code) {
//		final String RequestUrl = "https://kauth.kakao.com/oauth/token";
//		final List<NameValuePair> postParams = new ArrayList<NameValuePair>();
//		postParams.add(new BasicNameValuePair("grant_type", "authorization_code"));
//		postParams.add(new BasicNameValuePair("client_id", "자기꺼REST API KEY복붙")); // REST API KEY
//		postParams.add(new BasicNameValuePair("redirect_uri", "http://localhost:8080/myfinal/kakaologin.do")); // 리다이렉트 URI                                                              
//		postParams.add(new BasicNameValuePair("code", autorize_code)); // 로그인 과정중 얻은 code 값
//		final HttpClient client = HttpClientBuilder.create().build();
//		final HttpPost post = new HttpPost(RequestUrl);
//		JsonNode returnNode = null;
//		try {
//		post.setEntity(new UrlEncodedFormEntity(postParams));
//		final HttpResponse response = client.execute(post);
//		// JSON 형태 반환값 처리
//		ObjectMapper mapper = new ObjectMapper();
//		returnNode = mapper.readTree(response.getEntity().getContent());
//		} catch (UnsupportedEncodingException e) {
//		e.printStackTrace();
//		} catch (ClientProtocolException e) {
//		e.printStackTrace();
//		} catch (IOException e) {
//		e.printStackTrace();
//		} finally {
//		// clear resources
//		}
//		return returnNode;
//	}
//
//	public static JsonNode getKakaoUserInfo(JsonNode accessToken) {
//		final String RequestUrl = "https://kapi.kakao.com/v2/user/me";
//		final HttpClient client = HttpClientBuilder.create().build();
//		final HttpPost post = new HttpPost(RequestUrl);
//		// add header
//		post.addHeader("Authorization", "Bearer " + accessToken);
//		JsonNode returnNode = null;
//		try {
//		final HttpResponse response = client.execute(post);
//		// JSON 형태 반환값 처리
//		ObjectMapper mapper = new ObjectMapper();
//		returnNode = mapper.readTree(response.getEntity().getContent());
//		} catch (ClientProtocolException e) {
//		e.printStackTrace();
//		} catch (IOException e) {
//		e.printStackTrace();
//		} finally {
//		// clear resources
//		}
//		return returnNode;
//	}
//		
	
	
	
//	@RequestMapping(value = "/kakao", method = RequestMethod.GET)
//	public ModelAndView kakaoLogin(@RequestParam(value = "code", required = false) String code) {
//		
////		System.out.println("code:" + code);
//		
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("code", code);
////		mav.setViewName("kakaoView"); // 뷰의 이름을 설정합니다.
//		
//		return mav;
//		
//	
//	}
	
}

//		@Autowired
//		KakaoLoginService kls;
//		
//		@GetMapping(value = "kakao/login")
//		public @ResponseBody String kakaoCallback(String code) {
//			
//			String accessToken = kls.getAccesstoken(code);
//			System.out.println(accessToken);
//			return accessToken;
//		}
	
	
	
//	    @GetMapping("/kakao/login")
//	    public String kakaoLogin() {
//	        // 카카오 인가 URL 생성
//	        String kakaoAuthUrl = "https://kauth.kakao.com/oauth/authorize?" +
//	                "client_id=7b402ddebc44b5d24d5fdc2ac761e43d&" +
//	                "redirect_uri=http://localhost:8081/kakao/login&" +
//	                "response_type=code";
//	        
//	        // 생성된 카카오 인가 URL로 리다이렉트
//	        return "redirect:" + kakaoAuthUrl;
//	    }
//	    
//	    @GetMapping("/kakao/callback")
//	    public String kakaoCallback(String code) {
//	        // 받아온 인가 코드 처리
//	        System.out.println("카카오 인가 코드: " + code);
//	        // 추가적인 처리 로직 작성
//	        
//	        return "redirect:client/mall_kakao_redirect"; // 인가 코드를 받은 후 리다이렉트할 페이지 설정
//	    }
	    
	    
//	    @GetMapping("/kakao/callback")
//	    public String kakaoCallback(String code) {
//	        // 받아온 인가 코드 처리
//	        System.out.println("카카오 인가 코드: " + code);
//	        // 추가적인 처리 로직 작성
//	        
//	        return "redirect:client/mall_kakao_redirect"; // 인가 코드를 받은 후 리다이렉트할 페이지 설정
//	    }
	

	
//	@GetMapping(value="kakao/login")
//	public @ResponseBody String KakaoCallBack(String code) {
//		return "카카오 서버로부터 받은 code 정보 : " + code;
//	}
	
//	@RequestMapping("/mall_client_login.do")
//	public String MallClientLogin() {
//		return "client/mall_client_login";
//	}

//	@RequestMapping(value = "/mall_client_login.do", method = RequestMethod.GET)
//	public ModelAndView kakaoLogin(@RequestParam(value = "code", required = false) String code) throws Throwable {
//		ModelAndView mav = new ModelAndView("client/mall_kakao_redirect");
//		// 1번
//		System.out.println("code:" + code);
//		return mav;
//	}
	
//	@RequestMapping("/mall_kakao_redirect.do")
//	public String MallClientLogin() {
//		return "client/mall_kakao_redirect";
//	}
	
//		@RequestMapping(value = "/mall_client_login.do", method = RequestMethod.GET)
//		public String KakaoLogin(@RequestParam(value = "code", required = false) String code) throws Throwable {
//			
//			System.out.println("code :" + code);
//			return "client/mall_kakao_redirect";
//			
//			
//		}
		
//	@RequestMapping(value = "/kakao", method = RequestMethod.GET)
//	public ModelAndView kakaoLogin(@RequestParam(value = "code", required = false) String code) throws Exception {
//		ModelAndView mav = new ModelAndView("redirect:client/mall_kakao_redirect");
//			
//		System.out.println("code:" + code);
//		return mav;
//	}
		
	

//		@RequestMapping(value="/kakao/login", method=RequestMethod.GET)
//		public String kakaoLogin(@RequestParam(value = "code", required = false) String code) throws Exception {
//			System.out.println("#########" + code);
//			return "client/mall_kakao_redirect";
//		}
		
		
