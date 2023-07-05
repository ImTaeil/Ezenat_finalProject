<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="admin_sub_top.jsp" %>
	<!-- <form name="f" action="insert_sns.do" onsubmit="return check()"
		method="post" enctype="multipart/form-data"> -->
<div class="container">
    <table class="table table-bordered" style="border: 2px solid #000000; text-align: center;">
      
      <div><p style="font-weight:bold; font-size:30px;'">교환 관리</p></div> 

      <tbody>
        <tr>
          <td class="table-light">기간</td>
          <td>
            <select class="option-name" style="margin-right:5px">
              <option value="productname">주문일</option>
              <option value="productname">교환신청일</option>
              <option value="productname">교환접수일</option>
              <option value="productname">교환완료일</option>
            </select>
            <button type="submit" class="btn btn-dark" style="border-radius: 1">
              오늘
            </button>
            <button type="submit" class="btn btn-dark" style="border-radius: 1">
              어제
            </button>
            <button type="submit" class="btn btn-dark" style="border-radius: 1">
              3일
            </button>
            <button type="submit" class="btn btn-dark" style="border-radius: 1">
              7일
            </button>
            <button type="submit" class="btn btn-dark" style="border-radius: 1">
              1개월
            </button>
            <button type="submit" class="btn btn-dark" style="border-radius: 1">
              3개월
            </button>
            <button type="submit" class="btn btn-dark" style="border-radius: 1">
              6개월
            </button>
            <input type="text" placeholder="yyyy-mm-dd">
            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-calendar-week" viewBox="0 0 16 16">
              <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z"/>
              <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
            </svg> ~
            <input type="text" placeholder="yyyy-mm-dd">
            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-calendar-week" viewBox="0 0 16 16">
              <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z"/>
              <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
            </svg>
          </td>
        </tr>

        <tr>
          <td class="table-light">검색어</td>
          <td>
            <select class="option-name" style="margin-right:5px">
              <option value="productname">주문번호</option>
              <option value="productname">운송장번호</option>
              <option value="productname">----------------</option>
              <option value="productname">주문자명</option>
              <option value="productname">주문자 아이디</option>
              <option value="productname">회원 이메일</option>
              <option value="productname">주문자 휴대전화</option>
              <option value="productname">----------------</option>
              <option value="productname">입금자명</option>
              <option value="productname">수령자명</option>
              <option value="productname">수령자 휴대전화</option>
              <option value="productname">배송지 주소</option>
              <option value="productname">----------------</option>
              <option value="productname">상품명</option>
              <option value="productname">상품코드</option>
            </select>
            
            <input type="text">
            <button type="submit" class="btn btn-dark" style="border-radius: 1">+</button>
          </td>
        </tr>
      </tbody>
    </table>

    <div class="row">
      <div class="col text-center">
        <button type="submit" class="btn btn-dark" style="border-radius: 1">검색</button>
         <button type="submit" class="btn btn-dark" style="border-radius: 1">초기화</button>
      </div>
    </div>
    <br>
		검색결과 : n건
        <table class="table table-bordered" style="border: 2px solid #000000; text-align: center;">
          <tbody>
            <tr>
                <td colspan="10">
                <button type="submit" class="btn btn-dark" style="border-radius: 1; float:left;">수거완료</button>
                <select class="option-name" style="margin-right:5px; float:right;">
                  <option value="productname">주문일순</option>
                  <option value="productname">주문일 역순</option>
                  <option value="productname">교환접수일순</option>
                  <option value="productname">교환접수일 역순</option>
                  <option value="productname">교환신청일순</option>
                  <option value="productname">교환신청일 역순</option>
                </select>
                <select class="option-name" style="margin-right:5px; float:right;">
                  <option value="productname">10개씩 보기</option>
                  <option value="productname">20개씩 보기</option>
                  <option value="productname">30개씩 보기</option>
                  <option value="productname">50개씩 보기</option>
                  <option value="productname">100개씩 보기</option>
                  </select>
                  </td>
            </tr>
            <tr>
            
            </tr>
            <tr>
              <td>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                  <label class="form-check-label" for="inlineRadio1"></label>
                </div>
              </td>
              <td class="table-light">교환 신청일<p>(교환 접수일)</p></td>
              <td class="table-light">품목별 주문번호/교환번호</td>
              <td class="table-light">주문자</td>
              <td class="table-light">상품명/옵션</td>
              <td class="table-light">수량</td>
              <td class="table-light">주문상태</td>
              <td class="table-light">교환처리</td>
            </tr>

            <tr>
              <th colspan="16">검색된 주문내역이 없습니다.</th>
            </tr>

          </tbody>
        </table>
    
</div>
<!-- 	</form> -->
</body>
</html>