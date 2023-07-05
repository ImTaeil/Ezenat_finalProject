<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="admin_sub_top.jsp"%>
<!-- <form name="f" action="insert_sns.do" onsubmit="return check()"
		method="post" enctype="multipart/form-data"> -->
<div class="container">
	<p style="font-weight: bold; font-size: 30px;'">상품 목록</p>
	<form action="#" method="get" name="prodBoard">
		<table class="table" style="border: 2px solid #000000; text-align: center;">
			<tbody>
				<tr>
					<th scope="row">검색분류</th>
					<td>
						<ul>
							<li><select class="option-name" style="margin-right: 5px">
									<option value="productname">상품명</option>
									<option value="productname">상품번호</option>
									<option value="productname">상품코드</option>
									<option value="productname">원산지</option>
							</select>
								<div class="input-group input-group-sm mb-3">
									<input type="text" class="text-size" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
								</div></li>
						</ul>
					</td>

				</tr>
				<tr>
					<th scope="row">상품분류</th>
					<td>
						<ul>
							<li><select class="option-name" style="margin-right: 5px">
									<option value="productname">대분류선택</option>

							</select> <select class="option-name" style="margin-right: 5px">
									<option value="productname">중분류선택</option>

							</select> <select class="option-name" style="margin-right: 5px">
									<option value="productname">소분류선택</option>

							</select> <select class="option-name">
									<option value="productname">상세분류선택</option>

							</select></li>
						</ul>
					</td>

				</tr>
				<tr>
					<th scope="row">상품등록일</th>
					<td><select class="option-name" style="margin-right: 5px">
							<option value="productname">상품등록일</option>
							<option value="productname">상품최종수정일</option>
					</select>

						<button type="submit" class="btn btn-dark" style="border-radius: 1">오늘</button>
						<button type="submit" class="btn btn-dark" style="border-radius: 1">어제</button>
						<button type="submit" class="btn btn-dark" style="border-radius: 1">3일</button>
						<button type="submit" class="btn btn-dark" style="border-radius: 1">7일</button>
						<button type="submit" class="btn btn-dark" style="border-radius: 1">1개월</button>
						<button type="submit" class="btn btn-dark" style="border-radius: 1">3개월</button>
						<button type="submit" class="btn btn-dark" style="border-radius: 1">6개월</button> <input type="text" placeholder="yyyy-mm-dd"> <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-calendar-week" viewBox="0 0 16 16">
              <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" />
              <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
            </svg> ~ <input type="text" placeholder="yyyy-mm-dd"> <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-calendar-week" viewBox="0 0 16 16">
              <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" />
              <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
            </svg></td>
				</tr>
			</tbody>
		</table>

	</form>
	<div class="row">
		<div class="col" align="center" style="padding: 10px 10px">
			<button type="button" class="btn btn-dark">검색</button>
			<button type="button" class="btn btn-dark">초기화</button>
		</div>
	</div>


	<div>
		<p style="font-weight: bold; font-size: 15px;'">상품목록</p>
		[총 n개]
		<table class="table table-bordered" style="border: 2px solid #000000; text-align: center;">
			<thead>
				<tr>
					<td colspan="9"><select id="dropdown-select" name="search" onchange="handleDropdownChange(this)" style="float: right;">
							<option value="content">등록일 역순</option>
							<option value="hashTag_name">등록일 순</option>
							<option value="content">수정일 역순</option>
							<option value="hashTag_name">수정일 순</option>
							<option value="content">상품명 역순</option>
							<option value="hashTag_name">상품명 순</option>
							<option value="content">판매가 역순</option>
							<option value="hashTag_name">판매가 순</option>
							<option value="content">공급가 역순</option>
							<option value="hashTag_name">공급가 순</option>
							<option value="content">진열 역순</option>
							<option value="hashTag_name">진열열 순</option>
							<option value="content">장바구니수 역순</option>
							<option value="hashTag_name">장바구니수 순</option>
							<option value="content">조회수 역순</option>
							<option value="hashTag_name">조회수 순</option>
							<option value="content">좋아요 역순</option>
							<option value="hashTag_name">좋아요 순</option>
					</select> <select id="dropdown-select" name="search" onchange="handleDropdownChange(this)" style="float: right; margin-right: 5px;">
							<option value="content">10개씩 보기</option>
							<option value="content">20개씩 보기</option>
							<option value="content">30개씩 보기</option>
							<option value="content">50개씩 보기</option>
							<option value="content">100개씩 보기</option>
					</select></td>
				</tr>
				<tr>
					<td colspan="9" align="left">
						<button type="submit" class="btn btn-dark" style="border-radius: 1; float: left; margin-right: 5px;">진열함</button>
						<button type="submit" class="btn btn-dark" style="border-radius: 1; float: left; margin-right: 5px;">진열안함</button>
						<button type="submit" class="btn btn-dark" style="border-radius: 1; float: left; margin-right: 5px;">판매함</button>
						<button type="submit" class="btn btn-dark" style="border-radius: 1; float: left; margin-right: 5px;">판매안함</button>
						<button type="submit" class="btn btn-dark" style="border-radius: 1; float: left; margin-right: 5px;">복사</button>
						<button type="submit" class="btn btn-dark" style="border-radius: 1; float: left;">삭제</button>
					</td>
				</tr>
				<tr>
					<td colspan="9">
						<button type="submit" class="btn btn-dark" style="border-radius: 1; float: right;">상품등록</button>
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"> <label class="form-check-label" for="flexCheckDefault"> </label>
						</div>
					</th>
					<th>No</th>
					<th>상품구분</th>
					<th>상품코드</th>
					<th>상품명</th>
					<th>판매가</th>
					<th>할인가</th>
				</tr>
				<tr>
					<th colspan="9">등록된 상품이 없습니다.</th>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<!-- 	</form> -->
</body>
</html>