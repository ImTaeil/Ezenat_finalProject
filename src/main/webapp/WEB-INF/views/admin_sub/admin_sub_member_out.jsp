<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="admin_sub_top.jsp"%>
<!-- <form name="f" action="insert_sns.do" onsubmit="return check()"
		method="post" enctype="multipart/form-data"> -->


<div class="container">
	<p style="font-weight: bold; font-size: 30px;'">회원 탈퇴 관리</p>
	<form action="#" method="get" name="prodBoard">
		<div>
			<table class="table" border="1" style="border: 2px solid #000000">
				<tbody>
					<tr>
						<th scope="row">아이디</th>
						<td>
							<ul>
								<li>
									<div class="input-group input-group-sm mb-3">
										<input type="text" class="text-size" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" style="width: 20%;">
									</div>
								</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th scope="row">탈퇴유형</th>
						<td>
							<ul>
								<li><select class="option-name" style="margin-right: 5px">
										<option value="productname">전체</option>
										<option value="productname">일반탈퇴</option>
										<option value="productname">탈퇴신청</option>
										<option value="productname">강제탈퇴</option>
								</select></li>
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
		</div>
	</form>



	<div class="col" align="center" style="padding: 10px 10px">
		<button type="button" class="btn btn-dark">검색</button>
	</div>


	<div class="col">
		<p style="font-weight: bold; font-size: 20px;'">탈퇴 회원 목록</p>
	</div>


	<div class="col">[총 탈퇴 회원수 n명] 검색 결과 n 건</div>




	<table class="table" style="border: 2px solid #000000">
		<thead>
			<tr>
				<td colspan="5">
					<button type="submit" class="btn btn-dark" style="border-radius: 1; float:left;'">탈퇴</button>
					<div class="col" style="float: right;">
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
				<th style="text-align: center;">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"> <label class="form-check-label" for="flexCheckDefault"></label>
					</div>
				</th>
				<th>아이디</th>
				<th>회원탈퇴일</th>
				<th>구분</th>
				<th>탈퇴사유</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th colspan="5">검색된 회원 내역이 없습니다</th>
			</tr>
		</tbody>
	</table>


</div>

<!-- 	</form> -->
</body>
</html>