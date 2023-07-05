<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="admin_sub_top.jsp"%>
<!-- <form name="f" action="insert_sns.do" onsubmit="return check()"
		method="post" enctype="multipart/form-data"> -->
<div class="container">
	<div>
		<p style="font-weight: bold; font-size: 30px;'">휴면 회원 관리</p>
	</div>
	<table class="table table-bordered" style="border: 2px solid #000000; text-align: center;">
		<tbody>
			<tr>
				<td class="table-light">회원 정보</td>
				<td><select class="option-name" style="margin-right: 5px">
						<option value="productname">아이디</option>
						<option value="productname">이름</option>
						<option value="productname">휴대폰 번호</option>
						<option value="productname">이메일</option>
						<option value="productname">휴면 처리일</option>
				</select> <input type="text">
					<button type="button" class="btn btn-dark">검색</button></td>
			</tr>
		</tbody>
	</table>

	<div>
		<p style="font-weight: bold; font-size: 20px;'">휴면 회원 목록</p>
	</div>
	[총 휴면회원 n명] 검색결과 n명
	<table class="table table-bordered" style="border: 2px solid #000000; text-align: center;">
		<tbody>
			<tr>
				<td class="table-light">휴면 처리일</td>
				<td class="table-light">아이디</td>
				<td class="table-light">이름</td>
				<td class="table-light">이메일</td>
				<td class="table-light">휴대폰 번호</td>
				<td class="table-light">성별</td>
				<td class="table-light">나이</td>
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