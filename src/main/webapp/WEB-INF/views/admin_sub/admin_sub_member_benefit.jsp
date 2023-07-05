<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="admin_sub_top.jsp"%>
<!-- <form name="f" action="insert_sns.do" onsubmit="return check()"
		method="post" enctype="multipart/form-data"> -->

<div class="container">
	<form action="#" method="get" name="prodBoard">

		<p style="font-weight: bold; font-size: 30px;'">회원적립금 관리</p>
		<table class="table table-bordered" style="border: 2px solid #000000; text-align: center;">
			<tbody>
				<tr>
					<th style="width: 100px;">검색분류</th>
					<td>
						<ul>
							<li><select class="option-name" style="margin-right: 5px">
									<option value="productname">전체</option>
									<option value="productname">일반회원</option>
									<option value="productname">브론즈회원</option>
									<option value="productname">실버회원</option>
									<option value="productname">골드회원</option>
							</select></li>
						</ul>
					</td>
				</tr>
				<tr>
					<th scope="row">아이디</th>
					<td>
						<ul>
							<li>
								<div class="input-group input-group-sm mb-3">
									<input type="text" class="text-size" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" style="width: 20%">
								</div>
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<th scope="row">기간</th>
					<td>
						<button type="submit" class="btn btn-dark" style="border-radius: 1">오늘</button>
						<button type="submit" class="btn btn-dark" style="border-radius: 1">어제</button>
						<button type="submit" class="btn btn-dark" style="border-radius: 1">3일</button>
						<button type="submit" class="btn btn-dark" style="border-radius: 1">7일</button> <input type="text" placeholder="yyyy-mm-dd"> <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-calendar-week" viewBox="0 0 16 16">
										              <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" />
										              <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
										            </svg> ~ <input type="text" placeholder="yyyy-mm-dd"> <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-calendar-week" viewBox="0 0 16 16">
										              <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" />
										              <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
										            </svg>
					</td>
				</tr>
			</tbody>
		</table>

		<div class="col" align="center" style="padding: 10px 10px">
			<button type="button" class="btn btn-dark">검색</button>
		</div>


		
			<p style="font-weight: bold;">조회기간 내 적립금 내역 통계</p>

			<table class="table table-bordered" style="border: 2px solid #000000; text-align: center;">
				<thead>
					<tr>
						<th colspan="3">가용 적립금</th>
						<th>미가용 적립금</th>
						<th>미가용 회원/쿠폰 적립금</th>
					</tr>
					<tr>
						<th>증가</th>
						<th>차감</th>
						<th>합계</th>
						<th>증가</th>
						<th>증가</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
					</tr>
				</tbody>
			</table>



			<div>
			<p style="font-weight: bold;">회원 적립금 내역</p>
			<ul>
				<li style="float: right;"><select class="option-name">
						<option value="productname">10개씩보기</option>
						<option value="productname">20개씩보기</option>
						<option value="productname">30개씩보기</option>
						<option value="productname">50개씩보기</option>
						<option value="productname">100개씩보기</option>
				</select></li>
			</ul>
			</div>
			
			<table style="border: 2px solid #000000" class="table">
				<thead>
					<tr>
						<th rowspan="2">일자</th>
						<th rowspan="2">아이디</th>
						<th colspan="3">가용적립금</th>
						<th rowspan="2">관련주문/추천일</th>
						<th rowspan="2">처리자</th>
						<th rowspan="2">적립금 유형</th>
						<th rowspan="2">내용</th>
					</tr>
					<tr>
						<th>증가</th>
						<th>차감</th>
						<th>잔액</th>
					</tr>
				</thead>
			</table>
			<p>검색된 회원 적립금 내역이 없습니다.</p>

		
	</form>
</div>
<!-- 	</form> -->
</body>
</html>