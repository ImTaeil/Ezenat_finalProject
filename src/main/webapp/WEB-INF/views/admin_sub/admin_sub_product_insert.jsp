<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="admin_sub_top.jsp"%>
<div class="container">
	<p style="font-weight: bold; font-size: 30px;">오프라인 상품 등록</p>
	<table class="table table-bordered" style="border: 2px solid #000000; text-align: center;">
		<thead>
			<tr>
				<th style="border-right: none;" colspan="2">발주 상품 설정</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="table-light">카테고리 선택</td>
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
				<td class="table-light">발주 재고 설정</td>
				<td style="border-right: none;">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> <label class="form-check-label" for="inlineRadio1">판매함</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> <label class="form-check-label" for="inlineRadio2">판매안함</label>
					</div>
					<button type="submit" class="btn btn-dark" style="border-radius: 1; margin:auto;">상품불러오기</button>
				</td>
			</tr>
	</table>
	<button type="submit" class="btn btn-dark" style="border-radius: 1; margin:auto;">상품입고</button>



</div>


<!-- 	</form> -->
</body>
</html>