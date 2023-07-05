<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="admin_sub_top.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table table class="table table-bordered">

		<h5>
			<b>지점 판매 순위</b>
		</h5>

		<tbody>
			<tr>
				<td class="table-light">기간</td>
				<td>
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
            </svg>

				</td>
			</tr>

			<tr>
				<td class="table-light">지점</td>
				<td>
					<div class="d-flex align-items-center">
						<select id="dropdown-select" name="search" class="form-select" onchange="handleDropdownChange(this)">
							<option value="product-name">지점 선택</option>
							<option value="product-name">강남점</option>
							<option value="product-name">노원점</option>
							<option value="product-name">홍대점</option>
						</select>
					</div>
				</td>
			</tr>

			<tr>
				<td class="table-light">상품</td>
				<td>
					<div class="d-flex align-items-center">
						<select id="dropdown-select" name="search" class="form-select" onchange="handleDropdownChange(this)">
							<option value="product-name">상품명</option>
							<option value="product-name">상품코드</option>
							<option value="product-name">제조사</option>
							<option value="product-name">공급사</option>
						</select> <input type="text">
						<button type="submit" class="btn btn-dark" style="border-radius: 1">상품검색</button>
					</div>
				</td>
			</tr>


		</tbody>
	</table>

	<div class="row">
		<div class="col text-center">
			<button type="submit" class="btn btn-dark" style="border-radius: 1">검색</button>
		</div>
	</div>

	<h5>
		<b>통계 그래프</b>
	</h5>

	<table table class="table table-bordered">



		<tbody>
			<tr>그래프 들어갈 곳





			</tr>
		</tbody>
	</table>
</body>
</html>