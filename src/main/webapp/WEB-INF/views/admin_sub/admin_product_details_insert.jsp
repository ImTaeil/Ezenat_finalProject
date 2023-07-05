<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="admin_top.jsp" %>
	    <div class="container">
    <div class="row">

    <table table class="table table-bordered">
      <thead>
        <tr>
          <th style="border-right: none;">표시 설정</th>
        </tr>
      </thead>

      <tbody>
        <tr>
          <td class="table-light">진열상태</td>
          <td style="border-right: none;">
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
              <label class="form-check-label" for="inlineRadio1">진열함</label>
            </div>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
              <label class="form-check-label" for="inlineRadio2">진열안함</label>
            </div>
          </td>
        </tr>

        <tr>
          <td class="table-light">판매상태</td>
          <td style="border-right: none;">
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
              <label class="form-check-label" for="inlineRadio1">판매함</label>
            </div>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
              <label class="form-check-label" for="inlineRadio2">판매안함</label>
            </div>
          </td>
        </tr>

        <tr>
          <td class="table-light">메인 진열</td>
          <td>
            <table table class="table table-bordered">
              <thead>
                <tr>
                  <td>추천상품</td>
                  <td>
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                        진열함
                      </label>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>신상품</td>
                  <td>
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                        진열함
                      </label>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>추가카테고리1</td>
                  <td>
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                        진열함
                      </label>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td>추가카테고리2</td>
                  <td>
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                        진열함
                      </label>
                    </div>
                  </td>
                </tr>
              </thead>
            </table>
          </td>
        </tr>

        <table table class="table table-bordered">
          <thead>
            <tr>
              <th style="border-right: none;">기본 정보</th>
            </tr>
          </thead>

          <tbody>
            <tr>
              <td class="table-light">상품명</td>
              <td>
                <input type="text" class="form-control" id="" placeholder="">
              </td>
            </tr>

            <tr>
              <td class="table-light">영문 상품명</td>
              <td>
                <input type="text" class="form-control" id="" placeholder="">
              </td>
            </tr>

            <tr>
              <td class="table-light">모델명</td>
              <td>
                <input type="text" class="form-control" id="" placeholder="">
              </td>
            </tr>

            <tr>
              <td class="table-light">상품코드</td>
              <td>
                <div class="d-flex align-items-center">
                  <input type="text" class="form-control" id="" placeholder="">
                  <button type="submit" class="btn btn-dark" style="border-radius: 1">
                    중복확인
                  </button>
                </div>
              </td>
            </tr>

            <tr>
              <td class="table-light">상품상태</td>
              <td>
                <input type="text" class="form-control" id="" placeholder="">
              </td>
            </tr>

            <tr>
              <td class="table-light">상품 요약설명</td>
              <td>
                <textarea placeholder="문구 입력..." class="border-0" rows="3" style="width: 100%;" name="content" id="content"></textarea>
              </td>
            </tr>

            <tr>
              <td class="table-light">상품 상세설명</td>
              <td>
                <textarea placeholder="문구 입력..." class="border-0" rows="9" style="width: 100%;" name="content" id="content"></textarea>
              </td>
            </tr>

            <tr>
              <td class="table-light">검색어 설정</td>
              <td>
                <textarea placeholder="문구 입력..." class="border-0" rows="2" style="width: 100%;" name="content" id="content"></textarea>
              </td>
            </tr>
          
            <table table class="table table-bordered">
              <thead>
                <tr>
                  <th style="border-right: none;">판매 정보</th>
                </tr>
              </thead>
    
              <tbody>
                <tr>
                  <td class="table-light">소비자가</td>
                  <td>
                    <table table class="table table-bordered">
                      <thead>
                        <tr>
                          <td class="table-light">소비자가</td>
                        </tr>
                        <tr>
                          <td>
                            <div class="d-flex align-items-center">
                              <input type="text" class="form-control" id="" placeholder="">KRW
                            </div>
                          </td>
                        </tr>
                      </thead>
                    </table>
                  </td>
                </tr>

                <tr>
                  <td class="table-light">공급가</td>
                  <td>
                    <div class="d-flex align-items-center">
                      <input type="text" class="form-control" id="" placeholder="">KRW
                    </div>
                  </td>
                </tr>

                <tr>
                  <td class="table-light">과세구분</td>
                  <td>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                      <label class="form-check-label" for="inlineRadio1">과세상품</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                      <label class="form-check-label" for="inlineRadio2">영세상품</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                      <label class="form-check-label" for="inlineRadio2">면세상품</label>
                    </div>
                    <div class="d-flex align-items-center">
                      * 과세율 : <input type="text" class="form-control" style="width:300px;" id="" placeholder="">%
                    </div>
                  </td>
                </tr>
                
                
                <tr>
                  <td class="table-light">판매가 계산</td>
                  <td>
                    <table table class="table table-bordered">
                      <thead>
                        <tr>
                          <td class="table-light">마진율</td>
                          <td class="table-light">추가금액</td>
                          <td class="table-light">판매가적용</td>
                        </tr>
                        <tr>
                          <td>
                            <div class="d-flex align-items-center">
                              <input type="text" class="form-control" style="width:300px;" id="" placeholder="">%
                            </div>
                          </td>
                          <td>
                            <div class="d-flex align-items-center">
                              <input type="text" class="form-control" style="width:300px;" id="" placeholder="">KRW
                            </div>
                          </td>
                          <td>
                            <button type="submit" class="btn btn-dark" style="border-radius: 1">
                              판매가적용
                            </button>
                          </td>
                        </tr>
                      </thead>
                    </table>
                  </td>
                </tr>

                <tr>
                  <td class="table-light">판매가</td>
                  <td>
                    <table table class="table table-bordered">
                      <thead>
                        <tr>
                          <td class="table-light">판매가</td>
                          <td class="table-light">상품가</td>
                          <td class="table-light">과세금액</td>
                        </tr>
                        <tr>
                          <td class="table-info">
                            <div class="d-flex align-items-center">
                              <input type="text" class="form-control" style="width:300px;" id="" placeholder="">KRW
                            </div>
                          </td>
                          <td>
                            <div class="d-flex align-items-center">
                              <input type="text" class="form-control" style="width:300px;" id="" placeholder="">KRW
                            </div>
                          </td>
                          <td>
                            <div class="d-flex align-items-center">
                              <input type="text" class="form-control" style="width:300px;" id="" placeholder="">KRW
                            </div>
                          </td>
                        </tr>
                      </thead>
                    </table>
                  </td>
                </tr>

                <tr>
                  <td class="table-light">단독구매 제한</td>
                  <td>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                      <label class="form-check-label" for="inlineRadio1">제한안함</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                      <label class="form-check-label" for="inlineRadio2">단독구매 불가</label>
                    </div>
                  </td>
                </tr>

                <tr>
                  <td class="table-light">주문수량 제한</td>
                  <td>
                    <table table class="table table-bordered">
                      <thead>
                        <tr>
                          <td class="table-light">주문수량 기준</td>
                          <td>
                            <select id="dropdown-select" name="search" class="form-select" onchange="handleDropdownChange(this)">
                              <option value="product-standard">상품 기준</option>
                              <option value="Item basis">품목 기준</option>
                            </select>
                          </td>
                        </tr>
                        <tr>
                          <td class="table-light">최소 주문수량</td>
                          <td>
                            <div class="d-flex align-items-center">
                              <input type="text" class="form-control" style="width:40px;" id="" placeholder="">개 이상
                            </div>
                          </td>
                        </tr>
                        <tr>
                          <td class="table-light">최대 주문수량</td>
                          <td>
                            <div class="d-flex align-items-center">
                            <div class="form-check form-check-inline">
                              <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                              <label class="form-check-label" for="inlineRadio1">제한없음</label>
                            </div>
                            <div class="form-check form-check-inline">
                              <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                              <label class="form-check-label" for="inlineRadio2">
                                <input type="text" class="form-control" style="width:40px; ime-mode:disabled;" id="" placeholder="">
                                개 이하로 제한함
                              </label>
                            </div>
                            </div>
                          </td>
                        </tr>
                      </thead>
                    </table>
                  </td>
                </tr>

                <tr>
                  <td class="table-light">쿠폰</td>
                  <td>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                      <label class="form-check-label" for="inlineRadio1">사용 가능</label>
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                      <label class="form-check-label" for="inlineRadio2">사용 불가능</label>
                    </div>
                  </td>
                </tr>

                <tr>
                  <td class="table-light">적립금</td>
                  <td>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                      <label class="form-check-label" for="inlineRadio1">사용 가능</label>
                      <!-- 사용 가능 체크했을때 가능한 쿠폰 선택할 수 있게 하는 거 추가해야함 -->
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                      <label class="form-check-label" for="inlineRadio2">사용 불가능</label>
                    </div>
                  </td>
                </tr>

              </tbody>

          </tbody>
        </table>  

      </tbody>
    </table>
    

    <table table class="table table-bordered">
      <thead>
        <tr>
          <th style="border-right: none;">이미지 정보</th>
        </tr>
      </thead>

      <tbody>
        <tr>
          <td class="table-light">이미지등록</td>
          <td>
            <div id="attachFileDiv">
              <div id="file0">
                <input type="file" id="file_img0" name="file_img0" value="" size="20" onchange="javascript:attachFile.add(0)" >
              </div>      
            </div>
            <div id="image-preview" class="image-preview"></div>
          </td>
        </tr>


      </tbody>

    </table>

    </div>
    </div>

<!-- 	</form> -->
</body>
</html>