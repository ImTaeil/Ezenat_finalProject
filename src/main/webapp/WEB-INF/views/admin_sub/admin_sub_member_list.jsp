<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="admin_sub_top.jsp"%>
<!-- <form name="f" action="insert_sns.do" onsubmit="return check()"
		method="post" enctype="multipart/form-data"> -->

<div class="container">
	<div>
		<p style="font-weight: bold; font-size: 30px;'">회원정보 조회</p>
	</div>
	<table class="table table-bordered" style="border: 2px solid #000000; text-align: center;">
		<tbody>
			<tr>
				<td class="table-light">개인정보</td>
				<td colspan="3">
					<div class="d-flex align-items-center">
						<select id="dropdown-select" name="search" class="form-select" onchange="handleDropdownChange(this)">
							<option value="id">아이디</option>
							<option value="email">이메일</option>
							<option value="hp">전화번호</option>
							<option value="nickname">닉네임</option>
							<option value="address">주소</option>
						</select> <input type="text" style="margin: 5 5px;">
					</div>
				</td>
			</tr>

			<tr>
				<td class="table-light">회원등급</td>
				<td><select id="dropdown-select" name="search" class="form-select" onchange="handleDropdownChange(this)">
						<option value="all">전체</option>
						<option value="all">일반회원</option>
						<option value="all">브론즈회원</option>
						<option value="all">실버회원</option>
						<option value="all">골드회원</option>
				</select></td>

				<td class="table-light">회원유형</td>
				<td>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> <label class="form-check-label" for="inlineRadio1">전체</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> <label class="form-check-label" for="inlineRadio2">불량회원</label>
					</div>
				</td>
			</tr>

			<tr>
				<td class="table-light">나이</td>
				<td>
					<div class="form-check form-check-inline">
						<input type="text">세~<input type="text">
					</div>
				</td>
				<td class="table-light">성별</td>
				<td>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> <label class="form-check-label" for="inlineRadio1">전체</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> <label class="form-check-label" for="inlineRadio2">남</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> <label class="form-check-label" for="inlineRadio2">여</label>
					</div>
				</td>
			</tr>


			<tr>
				<td class="table-light">기간</td>
				<td colspan="3">
					<div class="d-flex align-items-center">
						<select id="dropdown-select" name="search" class="form-select" onchange="handleDropdownChange(this)">
							<option value="all">주문일</option>
							<option value="all">결제완료일</option>
						</select> <input type="text" placeholder="yyyy-mm-dd" style="margin: 5 5px;">
						<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-calendar-week" viewBox="0 0 16 16">
              <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" />
              <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
            </svg>
						~ <input type="text" placeholder="yyyy-mm-dd" style="margin: 5 5px;">
						<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-calendar-week" viewBox="0 0 16 16">
              <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" />
              <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
            </svg>
					</div>
				</td>
			</tr>

			<tr>
				<td class="table-light">주문상품</td>
				<td colspan="3"><input type="text">
					<button type="submit" class="btn btn-dark" style="border-radius: 1">상품검색</button></td>
			</tr>



		</tbody>
	</table>


	<div class="row">
		<div class="col text-center">
			<button type="submit" class="btn btn-dark" style="border-radius: 1">검색</button>
		</div>
	</div>



	<div>
		<p style="font-weight: bold; font-size: 20px;'">회원 목록</p>
	</div>
	<div class="col-10">[총 회원수 n명] 검색 결과 n 건</div>
	<table class="table table-bordered" style="border: 2px solid #000000; text-align: center;">
		<tbody>
			<tr>
				<td colspan="9">
					<button type="submit" class="btn btn-dark" style="border-radius: 1; float: left; margin: 1px;">불량회원 설정</button>
					<button type="submit" class="btn btn-dark" style="border-radius: 1; float: left; margin: 1px;">x 탈퇴/삭제</button>
	<div style="float: right;">
						<select id="dropdown-select" name="search" onchange="handleDropdownChange(this)">
							<option value="content">10개씩 보기</option>
							<option value="content">20개씩 보기</option>
							<option value="content">30개씩 보기</option>
							<option value="content">50개씩 보기</option>
							<option value="content">100개씩 보기</option>
						</select>
					</div>
					
				</td>
			</tr>

			<tr>
				<td>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="inlineRadio1" value="option1"> <label class="form-check-label" for="inlineRadio1"></label>
					</div>
				</td>
				<td>등록일</td>
				<td>이름</td>
				<td>아이디</td>
				<td>등급</td>
				<td>휴대전화</td>
				<td>성별</td>
				<td>나이</td>
			</tr>

			<tr>
				<td colspan="8">검색된 회원 내역이 없습니다.</td>
			</tr>

		</tbody>
	</table>
</div>
<!-- 	</form> -->
</body>
</html>