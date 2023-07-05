<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "mall_index_top.jsp" %>

<!-- mall_member_join.jsp -->
<style>
.member_join_center {
    width: 100%;
    max-width: 1200px;
    padding: 0 var(--layout-row-gap);
    margin: 0 auto;
    zoom: 1;
}

.title {
    text-align: center;
    padding: 3rem 0;
    text-transform: capitalize;
}

.title > * {
	margin: 0;
    padding: 0;
    text-transform: capitalize;
    color: var(--color) !important;
	font-weight: bold;
}

.member_join {
    width: 100%;
    max-width: 500px;
    margin: 0 auto;
}

.member_join h3 {
    padding: 0 0 10px;
    font-weight: bold;
}

.member_join .required {
    margin: -25px 0 10px;
    color: initial;
    text-align: right;
    font-weight: bold;
}

.member_join .board_write {
    width: 100%;
    table-layout: fixed;
    line-height: 180%;
}

.member_join .board_write tr:first-child td {
    border-top: 0;
}

.member_join .board_write td {
    display: block;
    position: relative;
    width: auto;
    padding: 10px 0;
    border-top: var(--border-width) solid transparent;
}

.member_join input[type=text], .member_join input[type=password] {
    width: 100%;
}

.member_join .postal_code, .member_join .input_certified_number {
    width: 77% !important;
}

.member_join .board_write .search_postal_code, .member_join .board_write .certification_btn {
    width: 20%;
    margin: 0 0 0 2% !important;
}

.member_join #phone, .member_join #birth {
    width: 30% !important;
    margin: 0!important;
}

.member_join #certification .time {
    margin-top: 0;
    position: absolute;
    top: 50%;
    right: 125px;
    transform: translateY(-50%);
}

.layout-contents select {
    width: auto;
    height: var(--select-height);
    position: relative;
    border-radius: 0;
    display: inline-block;
    vertical-align: middle;
    margin: 0;
    border: var(--border-width) solid var(--select-border-color);
    overflow: hidden;
    z-index: 2;
    padding: 13px 35px 13px 10px;
    line-height: 1;
    cursor: pointer;
    outline: none;
    appearance: none;
    transition: border 300ms ease;
    background-image: url(/web/upload/131/image/chevron-down.svg);
    background-repeat: no-repeat;
    background-position-y: center;
    background-position-x: calc(100% - 10px);
    background-size: 14px 14px;
}

.member_join #phone + .ele, .member_join #birth + .ele {	/* 비슷한 것들 묶어서 사용 */
    display: inline-block;
    width: 5%;
    text-align: center;
    margin: 0 -4.3px;
}

.member_join #birth {
    width: 28.3333% !important;
}





.wrap {
    border-top: var(--border-width) solid var(--border-color);
    border-bottom: var(--border-width) solid var(--border-color);
}





.member_join .btn_area {
    padding: 20px 0 100px;
    text-align: center;
}

.member_join .btn_area .btn {
    margin: 0 1% 0 0;
    float: left;
    width: 49%;
}
</style>

<script type="text/javascript">

	// 필수입력칸 유효성 검사
	function joinCheck() {
		if (document.join_form.id.value == "") {
			alert("아이디를 입력하세요.")
			document.join_form.id.focus()
			
			return false
		}
		
		if (document.join_form.password.value == "") {
			alert("비밀번호를 입력하세요.")
			document.join_form.password.focus()
			
			return false
		}
		
		if (document.join_form.member_pwd_check.value == "") {
			alert("비밀번호 확인란을 입력하세요.")
			document.join_form.member_pwd_check.focus()
			
			return false
		}
		
		if (document.join_form.name.value == "") {
			alert("이름을 입력하세요.")
			document.join_form.name.focus()
			
			return false
		}
		
		if (document.join_form.hp2.value == "") {
			alert("휴대폰 번호를 입력하세요.")
			document.join_form.hp2.focus()
			
			return false
		}
		
		if (document.join_form.hp3.value == "") {
			alert("휴대폰 번호를 입력하세요.")
			document.join_form.hp3.focus()
			
			return false
		}
		
		if (document.join_form.email.value == "") {
			alert("이메일을 입력하세요.")
			document.join_form.email.focus()
			
			return false
		}

		if (document.join_form.isIdCheck.value == "false") {
			alert("아이디 중복확인을 해주세요.")
			document.join_form.id.focus()
			
			return false
		}
		
		if (document.join_form.isPwdCheck.value == "false") {
			alert("입력한 비밀번호가 일치하는지 확인해주세요.")
			document.join_form.member_pwd_check.focus()
			
			return false
		}
		
		if (document.join_form.certification.value == "false") {
			alert("휴대폰 인증을 해주세요.")
			document.join_form.hp2.focus()
			
			return false
		}
		
		return true
	}
</script>

<!-- daum 주소 찾기 api -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function daumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    //document.getElementById("sample6_extraAddress").value = extraAddr;
                
                //} else {
                    //document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.join_form.postal_code.value = data.zonecode;
                document.join_form.address.value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.join_form.detail_address.focus();
            }
        }).open();
    }
</script>

<div class = "memeber_join_wrap">
	<div class = "member_join_center">
		<div class = "title">
			<h2>회원가입</h2>
		</div>
		
		<form name = "join_form" action = "mall_member_join_complete.ezenat"
			method = "post" onsubmit = "return joinCheck()">
			<div class = "member_join">
				<h3>INFORMATION</h3>
				
				<p class = "required">* 필수입력사항</p>
				
				<div class = "board_write">
					<table border = "1">
						<caption>회원 기본정보</caption>
						
						<tbody>
							<tr>
								<td>
									<input type = "text" name = "id" maxlength="16"
									onkeyup="idCheck(this.value)" placeholder="*아이디 (영문소문자/숫자, 4~16자)">
									<br>
									<span id = "id_check"></span> <!-- css 미적용 -->
									<input type = "hidden" name = "isIdCheck">
								</td>
							</tr>
							
							<tr>
								<td>
									<input type = "password" name = "password" onkeyup="pwdCheck(this.value)"
											maxlength="16" placeholder="*비밀번호 (영문대소문자/숫자/특수문자 중 2가지 이상 조합, 10~16자)">
								</td>
							</tr>
							
							<tr>
								<td>
									<input type = "password" name = "member_pwd_check" onkeyup="pwdCheck(this.value)"
											maxlength="16" placeholder="*비밀번호 확인">
									<br>
									<span id = "pwd_check"></span>
									<input type = "hidden" name = "isPwdCheck">
								</td>
							</tr>
							
							<tr>
								<td>
									<c:if test="${empty name }">
									<input type = "text" name = "name" placeholder="*이름">
									</c:if>
									<c:if test="${not empty name }">
									<input type = "text" name ="name" value ="${name}" readOnly>
									</c:if>
								</td>
							</tr>
							
							<tr>
								<td>
									<input type = "text" name = "postal_code" class = "postal_code"
											placeholder="우편 번호" readonly="readonly">
									<input type = "button" value = "검색하기"
											class = "search_postal_code btn" onclick = "daumPostcode()">
								</td>
							</tr>
							
							<tr>
								<td>
									<input type = "text" name = "address" placeholder="주소" readonly="readonly">
								</td>
							</tr>
							
							<tr>
								<td>
									<input type = "text" name = "detail_address" placeholder="나머지 주소 (선택 입력 가능)">
								</td>
							</tr>
							
							<tr>
								<td>
								<c:if test ="${empty hp1}" >
									<select name = "hp1" id = "phone">
										<option selected="selected" value = "010">010</option>
										<option value = "011">011</option>
										<option value = "016">016</option>
										<option value = "017">017</option>
										<option value = "018">018</option>
										<option value = "019">019</option>
									</select>
								</c:if>	
									<c:if test ="${not empty hp1}">
									<input type =" text" name = "hp1" id="phone" value="${hp1}" readOnly>
									</c:if>
									<span class = "ele">-</span>
									<c:if test ="${empty hp2}">
									<input type = "text" name = "hp2" id = "phone" maxlength="4" placeholder="*휴대폰 번호" >
									</c:if>
									<c:if test ="${not empty hp2}">
									<input type =" text" name = "hp2" id="phone" value="${hp2}" readOnly>
									</c:if>
									<span class = "ele">-</span>
									<c:if test ="${empty hp3}">
									<input type = "text" name = "hp3" id = "phone" maxlength="4" >
									</c:if>
									<c:if test ="${not empty hp3}">
									<input type =" text" name = "hp3" id="phone" value="${hp3}" readOnly>
									</c:if>
									<!-- <input type = "hidden" name = "isPhoneCheck" value = "false"> -->
									<input type = "hidden" name = "certification" value = "false">
								</td>
							</tr>
							<tr>
								<td>
									<input type = "button" value = "인증번호 받기" style = "width : 100%;"
											class = "btn" id = "phoneNumCheckBtn" onclick = "phoneNumberCheck()">
											
									<br>
									<span id = "phone_number_check"></span>
								</td>
							</tr>
							
							<tr id = "certification" hidden="hidden">
								<td>
									<input type = "text" name = "input_certified_number" maxlength="4"
											class = "input_certified_number" placeholder="인증번호 입력">
									<div class = "time"></div>
									<input type = "button" value = "인증하기" class = "certification_btn btn"
											onclick = "">
								</td>
							</tr>
							
							<tr>
								<td>
									<c:if test="${empty email}"  >
									<input type = "text" name = "email" placeholder="*이메일">
									</c:if>
									<c:if test="${not empty email}">
									<input type = "text" name = "email" value ="${email}">
									</c:if>
									<input type = "hidden" name = "isEmailCheck" value = "false">
									
								</td>
							</tr>
							<tr class = "displaynone">
								<td>
									<input type = "button" value = "이메일 인증하기" style = "width : 100%;"
											class = "btn" onclick = "emailCheck()">
									<br>
									<span id = "email_check"></span>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<h3 style = "padding-top: 20px;">EXTRA INFORMATION</h3>
				
				<div class = "board_write type_more_info">
					<table border = "1">
						<caption>회원 추가정보</caption>
						
						<tbody>
							<tr>
								<td>
									<c:if test = "${ empty gender }">
										<input type = "radio" name = "gender" value = "male" checked="checked">
										<label>남성</label>
										&emsp;
										<input type = "radio" name = "gender" value = "female">
										<label>여성</label>
									</c:if>
									
									<c:if test = "${ gender == 'male' }">
										<input type = "radio" name = "gender" value = "male" checked="checked" disabled="disabled">
										<label>남성</label>
										&emsp;
										<input type = "radio" name = "gender" value = "female" disabled="disabled">
										<label>여성</label>
									</c:if>
									
									<c:if test = "${ gender == 'female' }">
										<input type = "radio" name = "gender" value = "male" disabled="disabled">
										<label>남성</label>
										&emsp;
										<input type = "radio" name = "gender" value = "female" checked="checked" disabled="disabled">
										<label>여성</label>
									</c:if>
									
								</td>
							</tr>
							
							<tr>
								<td>
									<c:if test ="${empty birth_year}" >
									<input type = "text" name = "birth_year" id = "birth" maxlength="4">
							
									
									<span class = "ele">년</span> 
									<input type = "text" name = "birth_month" id = "birth" maxlength="2">
									<span class = "ele">월</span> 
									<input type = "text" name = "birth_day" id = "birth" maxlength="2">
									<span class = "ele">일</span> 
									</c:if>
											
									<c:if test = "${not empty birth_year }" >
									<input type ="text" value="${birth_year }/${birth_month}/${birth_day }">
											
									<input type = "hidden" name = "birth_year" value="${birth_year }">
									<input type = "hidden" name = "birth_month"value="${birth_month }">
									<input type = "hidden" name = "birth_day"value="${birth_day }">
											
									</c:if>
											
											
								</td>
							</tr>
							
							<tr>
								<td>
									<input type = "text" name = "bank_account_owner" placeholder="예금주">
								</td>
							</tr>
							
							<tr>
								<td>
									<select id="refund_bank_code" name="bank_code" style = "width : 100%;">
										<option value="" selected="selected">- 은행선택 -</option>
										<option value="bank_02">산업은행</option>
										<option value="bank_03">기업은행</option>
										<option value="bank_04">국민은행</option>
										<option value="bank_05">하나(외환)은행</option>
										<option value="bank_07">수협중앙회</option>
										<option value="bank_11">농협중앙회</option>
										<option value="bank_12">농협개인</option>
										<option value="bank_13">농협</option>
										<option value="bank_20">우리은행</option>
										<option value="bank_209">유안타증권</option>
										<option value="bank_218">KB증권</option>
										<option value="bank_23">SC제일은행</option>
										<option value="bank_230">미래에셋증권</option>
										<option value="bank_238">대우증권</option>
										<option value="bank_240">삼성증권</option>
										<option value="bank_243">한국투자증권</option>
										<option value="bank_26">신한은행</option>
										<option value="bank_261">교보증권</option>
										<option value="bank_262">하이투자증권</option>
										<option value="bank_263">현대차증권</option>
										<option value="bank_266">SK증권</option>
										<option value="bank_267">대신증권</option>
										<option value="bank_269">한화증권</option>
										<option value="bank_270">하나대투증권</option>
										<option value="bank_278">신한금융투자</option>
										<option value="bank_279">동부증권</option>
										<option value="bank_280">유진투자증권</option>
										<option value="bank_287">메리츠증권</option>
										<option value="bank_288">카카오페이증권</option>
										<option value="bank_289">NH투자증권</option>
										<option value="bank_291">신영증권</option>
										<option value="bank_292">케이뱅크</option>
										<option value="bank_293">카카오뱅크</option>
										<option value="bank_294">LIG증권</option>
										<option value="bank_295">OK저축은행</option>
										<option value="bank_296">토스뱅크</option>
										<option value="bank_297">토스증권</option>
										<option value="bank_31">대구은행</option>
										<option value="bank_32">부산은행</option>
										<option value="bank_34">광주은행</option>
										<option value="bank_35">제주은행</option>
										<option value="bank_37">전북은행</option>
										<option value="bank_39">경남은행</option>
										<option value="bank_52">모건스탠리은행</option>
										<option value="bank_53">씨티은행</option>
										<option value="bank_57">유에프제이은행</option>
										<option value="bank_58">미즈호코퍼레이트은행</option>
										<option value="bank_59">미쓰비시도쿄은행</option>
										<option value="bank_60">뱅크오브아메리카</option>
										<option value="bank_71">우체국</option>
										<option value="bank_76">신용보증기금</option>
										<option value="bank_77">기술신용보증기금</option>
										<option value="bank_81">하나은행</option>
										<option value="bank_82">농협회원조합</option>
										<option value="bank_83">도이치은행</option>
										<option value="bank_84">상호저축은행</option>
										<option value="bank_85">새마을금고</option>
										<option value="bank_86">수출입은행</option>
										<option value="bank_87">신용협동조합</option>
										<option value="bank_89">홍콩상하이은행(HSBC)</option>
										<option value="bank_90">에이비엔암로은행</option>
										<option value="bank_91">산림조합</option>
										<option value="bank_93">한국주택금융공사</option>
										<option value="bank_94">서울보증보험</option>
										<option value="bank_95">경찰청</option>
										<option value="bank_99">금융결제원</option>
										<option value="bank_999">기타</option>
									</select>
								</td>
							</tr>
							
							<tr>
								<td>
									<input type = "text" name = "bank_account_num" placeholder="계좌번호 ('-' 와 숫자만 입력해주세요.)">
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<h3 style = "padding: 20px 0 10px 0;">개인정보 동의</h3>
				
				<div class = "wrap">
					<br><br>
				</div>
				
				<div class = "btn_area">
					<input type = "submit" value = "회원가입" class = "btn s-btn">
					<input type = "button" value = "가입취소" class = "btn role-btn" onclick = "history.back()">
				</div>
			</div>
		</form>
	</div>
</div>

<script type="text/javascript">

	/* 아이디 중복 검사 */
	function idCheck(idValue) {
		/* 아이디, 비밀번호 패턴 유효성 검사
		
		정규식 메모
		
		/ 이 안에 수식 /
		^ : 수식의 시작
		$ : 수식의 끝
		[ 이 안에 조건 ]
		 · [a-z] : 알파벳 소문자 체크
		 · [A-Z] : 알파벳 대문자 체크
		 · [0-9] : 숫자 0~9 체크
		 · [#?!@$^&*-] : 특수기호 체크
		   ~!@#$%^&*()_+|<>?:{}`
		[^ ] : 조건식 부정
		? : 0회 or 1회 반복되었다면
		* : 0회 이상 반복되었다면
		() : 그룹화
		{n} : n회 만큼 일치시킴
		{n,} : n회 이상 일치시킴
		{n1, n2} : 최소 n1 ~ 최대 n2 까지 일치시킴
		플래그
		 · /[~~~]/g : g 는 전역 검색
		 · /[~~~]/i : i 는 대소문자 구분 없이 검색
		 · /[~~~]/m : m 은 줄 바꿈 행을 검색
		 · /[~~~]/gi : 이런 것도 가능
		
		시도 해본 것들	안해씨ㅂ
		/^[a-z0-9]{1}(?=.*[0, 9]{1})(?=.*[a-z]{1}).{3,17}$/
		/^[a-z]{1}[a-z0,9](?=.*?[a-z0-9]).{3,17}$/
		/^[a-z0,9]{1}.{3,17}$/
		/^[a-z]{1}(?=.*?[^A-Z#?!@$^&*-]{1,}).{3,17}$/
		/^([a-z]{1}([*^A-Z#?!@$^&*-])).{3,17}$/
		/^.*(?=^.{4,16}$)(?=.*\d)(?=.*[a-z])(?=.[^A-Z])(?=.[^~!@#$%^&*()_+|<>?:{}`]).*$/
			=> 영소문자 외의 첫 문자 / 특수문자 / 영대문자가 안걸러짐, 위 식이 최선인데 ..
		/^[a-z]{1}(?=.*[^a-z0-9]{16}).{3,17}$/g
		
		해보면서 알게된 것
		수식1수식2수식3 : 수식마다 첫 글자 두 번째 글자 등등.. 자리를 차지함
		[a-z]{1} : 첫 글자는 무조건 알파벳 소문자로 와야 true, 이 이후 수식은 두 번째 글자부터
		
		*/
		
		// alert(isLowercase.test(idValue)), 
		var isLowercase = /^[a-z]+[a-z0-9]{3,17}$/g		// 해결 !!!!!!!!!!!!!!!
		
		if (idValue.match(isLowercase) != null) {
			$.ajax({
				type : "GET",
				
				url : "/ezenat/idUseCheck",
				
				data: {
					"id" : idValue
				},
				
				success : function(res) {
					if (res > 0) {
						document.getElementById("id_check").innerHTML
						= "<p style = 'font-size : 12; color : red;'>이미 사용중인 아이디입니다.</p>"

						document.join_form.isIdCheck.value = "false"
						
					} else {
						document.getElementById("id_check").innerHTML
							= "<p style = 'font-size : 12; color : blue;'>사용 가능한 아이디입니다.</p>"
							
						document.join_form.isIdCheck.value = "true"
					}
				}
				
			})
		} else {
			document.getElementById("id_check").innerHTML
				= "<p style = 'font-size : 12; color : red;'>사용 불가능한 아이디입니다.</p>"

			document.join_form.isIdCheck.value = "false"
		}
		
		/* if (isLowercase.test(idValue) == true) {
			document.getElementById("id_check").innerHTML
				= "<p style = 'font-size : 12; color : blue;'>사용가능한 아이디입니다.</p>"
				
			document.join_form.isIdCheck.value = "true"
				
		} else if (isLowercase.test(idValue) == false) {
			document.getElementById("id_check").innerHTML
				= "<p style = 'font-size : 12; color : red;'>사용 불가능한 아이디입니다.</p>"

			document.join_form.isIdCheck.value = "false"
		}
		 */
		
		
		
		if (idValue == "") {
			document.getElementById("id_check").innerHTML = ""
			document.join_form.isIdCheck.value = "false"
		}
	}
	/* // 아이디 중복 검사 */
	
	
	/* 비밀번호 확인 검사 */
	function pwdCheck(pwdValue) {
					// 영소문자로 시작하는 영대소문자 + 숫자 + 특수기호 로 구성된 비밀번호 정규 표현식, 된다 ..ㅠㅠㅠㅠ
		isPwdcase = /^[a-zA-Z]+(?=.*\d)(?=.*[~!@#$%^&*()_+|<>?:{}`])[0-9a-zA-Z~!@#$%^&*()_+|<>?:{}`]{9,17}$/g
		
		
		
		if (document.join_form.password.value != document.join_form.member_pwd_check.value) {
			document.getElementById("pwd_check").innerHTML
				= "<p style = 'font-size : 12; color : red;'>비밀 번호가 일치하지 않습니다.</p>"
				
			document.join_form.isPwdCheck.value = "false"
			
		} else if (document.join_form.password.value == document.join_form.member_pwd_check.value) {
			if (pwdValue.match(isPwdcase) == null) {
				document.getElementById("pwd_check").innerHTML
				= "<p style = 'font-size : 12; color : red;'>영문자, 숫자, 특수기호로 구성된 10자 ~ 16자의 비밀번호를 입력해주세요.</p>"
				
				document.join_form.isPwdCheck.value = "false"
				
			} else {
				document.getElementById("pwd_check").innerHTML
					= "<p style = 'font-size : 12; color : blue;'>비밀 번호가 일치합니다.</p>"
					
				document.join_form.isPwdCheck.value = "true"
			}
		}
		
		
		
		
		if (document.join_form.password.value == "" || document.join_form.member_pwd_check.value == "") {
			document.getElementById("pwd_check").innerHTML = ""
			
			document.join_form.isPwdCheck.value = "false"
		}
	}
	/* // 비밀번호 확인 검사 */
	
	
	/* 휴대폰 인증 */
	function phoneNumberCheck() {		// 이상하게 여기서는 exec.test(String) 메서드가 중복 사용이 안됌
		var isHpcase = /^[0-9]{4}$/gi
		
		var hp1 = document.join_form.hp1.value
		var hp2 = document.join_form.hp2.value
		var hp3 = document.join_form.hp3.value
		var phoneNumber = hp1 + hp2 + hp3
		
		var timer = null;
		var isRunning = false;
		
		if (hp2 == "" || hp3 == ""
			|| hp2.match(isHpcase) == null
			||  hp3.match(isHpcase) == null) {
			document.getElementById("phone_number_check").innerHTML
				= "<p style = 'font-size : 12; color : red;'>유효하지 않은 휴대폰 번호입니다. 입력한 번호를 확인해 주세요.</p>"
				
			document.getElementById("certification").hidden = "hidden"
			
			document.join_form.certification.value = "false"
			
		} else if (hp2.match(isHpcase) != null && hp3.match(isHpcase) != null) {
			document.getElementById("phone_number_check").innerHTML
				= "<p style = 'font-size : 12; color : blue'>인증번호를 발송했습니다."
				+ "<br>인증번호를 받지 못한 경우 휴대폰 번호를 확인해주세요.</p>"
			
			document.getElementById("certification").hidden = ""
			
			/* 타이머 */
			var display = $('.time')
			var leftSec = 180				// 남은 시간
			
			// 이미 타이머가 작동중이면 중지
			if (isRunning) {
				clearInterval(timer)
				display.html("")
				startTimer(leftSec, display)
				
			} else {
				startTimer(leftSec, display)
			}
				
			display.html("3:00")
			
			function startTimer(count, display) {
				var minutes, seconds
				
				timer = setInterval(function() {
					minutes = parseInt(count / 60, 10)
					seconds = parseInt(count % 60, 10)
					
					minutes = minutes < 10 ? minutes : minutes
					seconds = seconds < 10 ? "0" + seconds : seconds
					
					display.html(minutes + ":" + seconds)
					
					
					
					// 타이머 끝
					if (--count < -1) {
						Swal.fire({
							icon : "warning",
							title : "시간 초과",
							text : "휴대폰 인증 번호의 유효 시간이 초과되었습니다. 다시 시도해주세요."
						})
						clearInterval(timer)
						display.html("")
						$('#certification').attr("hidden", "hidden")
						$("#phone_number_check").html("")
						isRunning = false
					}
				}, 1000)
				
				isRunning = true
			}
			/* // 타이머 */
	
			/* ajax */
			$.ajax({
				type: "GET",
				
				url: "/ezenat/sendSMS",
				
				data: {
					"phoneNumber" : phoneNumber					// 휴대폰 번호를 url (컨트롤러) 에 넘기고
				},
				
				success: function(res) {						// 성공 시 랜덤 숫자를 받아온다. 문자 보내는 것까진 성공, $click 안먹힘
					$('.certification_btn').click(function() {
						if($.trim(res) == $('.input_certified_number').val()) {
							Swal.fire({
								icon : 'success',
								title : '인증성공!',
								text : '휴대폰 인증이 정상적으로 완료되었습니다.',
							})
							
							document.join_form.certification.value = "true" //임시
							/* alert(document.join_form.certification.value) */
							
							clearInterval(timer)
							isRunning = false
							
							$('#phoneNumCheckBtn').attr("disabled", "disabled")
							$('.certification_btn').attr("disabled", "disabled")
					
						} else {
							Swal.fire({
								icon: 'error',
								title: '인증오류',
								text: '인증번호가 올바르지 않습니다!',
								footer: '<a href="/home">다음에 인증하기</a>'
							})
						}
					})
					/* // click */
				}
				/* // success */
			})
			/* // ajax */
		}
	}
	/* // 휴대폰 인증 */
</script>
<%@ include file = "mall_index_bottom.jsp" %>
