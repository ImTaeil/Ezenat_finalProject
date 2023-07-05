<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="admin_sub_top.jsp"%>
<!-- <form name="f" action="insert_sns.do" onsubmit="return check()"
		method="post" enctype="multipart/form-data"> -->


<div class="container">
	<p style="font-weight: bold; font-size: 30px;'">회원 등급별 관리</p>
	<div>
		<form action="#" method="get" name="prodBoard">
				<div>
					<table class="table" style="border : 2px solid #000000">
						<tbody>
							<tr>
								<th scope="row">회원등급</th>
								<td>
									<ul>
										<li><select class="option-name" style="margin-right: 5px">
												<option value="productname">일반회원</option>
												<option value="productname">브론즈 회원</option>
												<option value="productname">실버 회원</option>
												<option value="productname">골드 회원</option>
										</select></li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
					<p style="font-weight: bold; font-size: 15px;'">회원 목록</p>
					<table class="table" border="1" style="border : 2px solid #000000">
						<tbody>
							<tr>
								<th scope="row">회원 검색</th>
								<td>
									<ul>
										<li><select class="option-name" style="margin-right: 5px">
												<option value="productname">아이디</option>
												<option value="productname">이름</option>
										</select>
											<div class="input-group input-group-sm mb-3">
												<input type="text" class="text-size" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
													<button type="button" class="btn btn-dark">검색</button>
											</div>
										
											</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			
		</form>
	</div>




	<div class="row">
		<div class="col-12">회원 목록</div>

		<div class="col-10">[총 회원수 n명] 검색 결과 n 건</div>
		<div>
			<table class="table" style="border : 2px solid #000000">
				<thead>
				<tr>
					<td colspan="8">
					
		<div style="margin-left:5px; float:left;">
			<button type="submit" class="btn btn-dark" style="border-radius: 1">등급해제</button>
			<button type="submit" class="btn btn-dark" style="border-radius: 1">적립금 일괄지급</button></div>
		<div style="float: right;">
			<select id="dropdown-select" name="search" onchange="handleDropdownChange(this)" style="float:right;">
				<option value="content">10개씩 보기</option>
				<option value="content">20개씩 보기</option>
				<option value="content">30개씩 보기</option>
				<option value="content">50개씩 보기</option>
				<option value="content">100개씩 보기</option>
			</select></div>
					</td>
				</tr>
					<tr>
						<th style=" text-align: center;">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"> 
								<label class="form-check-label" for="flexCheckDefault"></label>
							</div>
						</th>
						<th>등록일</th>
						<th>이름</th>
						<th>아이디</th>
						<th>등급</th>
						<th>성별</th>
						<th>나이</th>
						<th>관련내역보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th colspan="8">검색된 회원 내역이 없습니다</th>
					</tr>
				</tbody>
			</table>
			<p style="font-weight: bold; font-size: 15px;'">추가 설정</p>
				<table class="table" style="border : 2px solid #000000; height:40px;">
						<tbody>
							<tr>
								<th scope="row">회원등급변경</th>
								<td>
									<ul>
										<li>선택된 회원을<select class="option-name" style="margin-right: 5px">
										<option value="productname">일반회원</option>
										<option value="productname">브론즈 회원</option>
										<option value="productname">실버 회원</option>
										<option value="productname">골드 회원</option>
								</select>으로<button type="submit" class="btn btn-dark" style="border-radius: 1; maring:5 5px;">등급변경</button>합니다.</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
		</div>
		
	</div>
</div>

<!-- 	</form> -->
</body>
</html>