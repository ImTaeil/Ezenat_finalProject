<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="admin_top.jsp" %>
	<!-- <form name="f" action="insert_sns.do" onsubmit="return check()"
		method="post" enctype="multipart/form-data"> -->

	
    <div class="container">
		<div class="col-12 main-content">
			<form action="#" method="get" name="prodBoard" >
				<div class="container">
					<div class="detail-content">
						<table class="table" border="1">
								<tbody>
								
										<tr>
											<th scope="row">검색분류</th>
												<td>
													<ul>
														<li>
															<select class="option-name" style="margin-right:5px">
																<option value="productname">상품명</option>
															</select>
                                                          <div class="input-group input-group-sm mb-3">
                                                            <input type="text" class="text-size" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
                                                          </div>
														</li>
													</ul>
												</td>
               
											
										</tr>
                                      <tr>
											<th scope="row">상품분류</th>
												<td >
													<ul >
														<li>
															<select class="option-name" style="margin-right:5px">
																<option value="productname">상품명</option>
																
															</select>
                                                          <select class="option-name" style="margin-right:5px">
																<option value="productname">상품명</option>
																
															</select>
                                                          <select class="option-name" style="margin-right:5px">
																<option value="productname">상품명</option>
																
															</select>
                                                          <select class="option-name">
																<option value="productname">상품명</option>
																
															</select>
														</li>
													</ul>
												</td>
                                           
								
										</tr>
                                      <tr>
											<th scope="row">상품등록일</th>
												<td>
													<ul>
														<li>
															<select class="option-name" style="margin-right:5px">
																<option value="productname">상품명</option>
																
															</select>
                                                          <select class="date" style="margin-right:5px">
																<option value="productname" >상품명</option>
																
															</select>
                                                          <select class="date" style="margin-right:5px">
																<option value="productname">상품명</option>
																
															</select>
                                                          <select class="#" style="margin-right:5px">
																<option value="productname">상품명</option>
																
															</select>
                                                          <select class="#" style="margin-right:5px">
																<option value="productname">상품명</option>
																
															</select>
                                                          <select class="#">
																<option value="productname">상품명</option>
																
															</select>
														</li>
													</ul>
												</td>
										</tr>
								</tbody>
							</table>
						</div>
					</div>
				</form>
                  <div class="row">
                     <div class="col" align="center" style="padding:10px 10px">
                   <button type="button" class="btn btn-dark">검색</button>
                    <button type="button" class="btn btn-dark">초기화</button>
                    </div>
                    </div>
			</div>
	
	</div>

    <div class="container">
      <div class="row">
        <div class="col-12">상품목록</div>

        <div class="col-8">[총 n개]</div>

        <div class="col-2">
          <select
            id="dropdown-select"
            name="search"
            class="form-select"
            onchange="handleDropdownChange(this)"
          >
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
          </select>
        </div>

        <div class="col-2">
          <select
            id="dropdown-select"
            name="search"
            class="form-select"
            onchange="handleDropdownChange(this)"
          >
            <option value="content">10개씩 보기</option>
            <option value="content">20개씩 보기</option>
            <option value="content">30개씩 보기</option>
            <option value="content">50개씩 보기</option>
            <option value="content">100개씩 보기</option>
          </select>
        </div>

        <div class="col-11" style="padding: 10px">
          <button type="submit" class="btn btn-dark" style="border-radius: 1">
            진열함
          </button>
          <button type="submit" class="btn btn-dark" style="border-radius: 1">
            진열안함
          </button>
          <button type="submit" class="btn btn-dark" style="border-radius: 1">
            판매함
          </button>
          <button type="submit" class="btn btn-dark" style="border-radius: 1">
            판매안함
          </button>
          <button type="submit" class="btn btn-dark" style="border-radius: 1">
            복사
          </button>
          <button type="submit" class="btn btn-dark" style="border-radius: 1">
            삭제
          </button>
          <button type="submit" class="btn btn-dark" style="border-radius: 1">
            분류수정 >
          </button>
          <button type="submit" class="btn btn-dark" style="border-radius: 1">
            메인진열수정 >
          </button>
          <button type="submit" class="btn btn-dark" style="border-radius: 1">
            엑셀다운로드 >
          </button>
        </div>

        <div class="col-1" style="padding: 12px">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="16"
            height="16"
            fill="currentColor"
            class="bi bi-gear-fill"
            viewBox="0 0 16 16"
          >
            <path
              d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872l-.1-.34zM8 10.93a2.929 2.929 0 1 1 0-5.86 2.929 2.929 0 0 1 0 5.858z"
            />
          </svg>
        </div>




      </div>




      <div class="row">
        

        <div class="col" style="text-align:right;">
          <button type="submit" class="btn btn-dark" style="border-radius: 1">
            메인진열관리
          </button>
          <button type="submit" class="btn btn-dark" style="border-radius: 1">
            분류별진열관리
          </button>
          <button type="submit" class="btn btn-dark" style="border-radius: 1">
            상품등록
          </button>
        </div>

        <div class="col-12">
          <table class="table">
            <thead>
              <tr>
                <th>
	                <div class="form-check">
		                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
		                <label class="form-check-label" for="flexCheckDefault">
		                </label>
	                </div>
                </th>
                <th>No</th>
                <th>상품구분</th>
                <th>상품코드</th>
                <th>상품명</th>
                <th>판매가</th>
                <th>할인가</th>
                <th>모바일 할인가</th>
                <th>바로구매 URL</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th>
	                <div class="form-check">
		                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
		                <label class="form-check-label" for="flexCheckDefault">
		                </label>
	                </div>
                </th>
                <td>2</td>
                <td>기본상품</td>
                <td>P000000J</td>
                <td>샘플상품2</td>
              </tr>
              <tr>
                <th>
	                <div class="form-check">
		                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
		                <label class="form-check-label" for="flexCheckDefault">
		                </label>
	                </div>
                </th>
                <td>1</td>
                <td>기본상품</td>
                <td>P000000I</td>
                <td>샘플상품1</td>
              </tr>
            </tbody>
          </table>
        </div>




      </div>


      
    </div>

<!-- 	</form> -->
</body>
</html>