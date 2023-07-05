<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="admin_top.jsp"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<form name="f" action="admin_product_view.do"
	 method="post" enctype="multipart/form-data">
	<script type="text/javascript"
		src="resources/js/admin_product_update.js"></script>
	<div class="container">
		<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		alert('화면')
        $("a[name='file-delete']").on("click", function(e) {
        	alert('클릭')
            e.preventDefault();
            deleteFile($(this));
        });
        var imgCount = document.getElementById('file-list').childElementCount;
		var fileCount = document.getElementById('attachFileDiv').childElementCount;
		var lastFile = document.getElementById('attachFileDiv').lastElementChild.id;
		if((imgCount+fileCount) == 11){
			alert("disabled되야댐")
			document.getElementById(lastFile).firstElementChild.disabled = true;
			return
		}else{
			alert("disabled안되야함 : "+document.getElementById('attachFileDiv').lastElementChild.id)
			document.getElementById(lastFile).firstElementChild.disabled = false;
			return
		}
    })
    
/*    
function editPqty(){
	
	var isPqty = confirm("수량을 수정하시겠습니까?")

	if(isPqty){
		var pqty = document.getElementByid("product_pqty").value;

	}
	
	$ajax({
		url	:	"./admin_product_editPqty.do",
		type : "post",
		data : {	input : isPqty},
		cache : false,
		success : function(res){
			
			if(res>0){
				alert("수정 완료하였습니다.")
				document.getElementByid("isPqty").value;
			}else{
				alert("수정 실패.")
				document.getElementByid("isPqty").focus();
			}
			location.href("admin_product_view.do")
		}
		error : function(){
			alert("에러")
			
		}

	});
} */
	

	</script>
		</head>
		
		<div class="row">
			<input type ="hidden" value = "${getProd.product_num}" name = "product_num">
			<table table class="table table-bordered">
				<thead>
					<tr>
						<th style="border-right: none;">기본 정보</th>
					</tr>
				</thead>

				<tbody>
					<tr>
						<td class="table-light">상품명</td>
						<td><input type="text" name="product_name" value="${getProd.product_name}">
							</td>
					</tr>
					<tr>
						<td class="table-light">상품코드</td>
						<td>
							<input type="text" name="product_code" value="${getProd.product_code}">
						</td>
					</tr>
					<tr>
						<td class="table-light">상품색상</td>
						<td><input type="text" name="product_color" value="${getProd.product_color}">
							</td>
					</tr>
					<tr>
						<td class="table-light">상품 설명</td>
						<td><input type="text" name="product_content" value="${getProd.product_content}">
						</td>
					</tr>
					<tr>
						<td class="table-light">상품 사이즈 : </td>
						<td>${getProd.product_size}</td>
						<td>
							변경할 사이즈:
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="product_size" id="product_size" value="S"> 
									<label class="form-check-label" for="inlineRadio1">S</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio" name="product_size" id="product_size" value="M">
                     			 <label class="form-check-label" for="inlineRadio2">M</label>
                    		</div>
                    		<div class="form-check form-check-inline">
                    			  <input class="form-check-input" type="radio" name="product_size" id="product_size" value="L">
                      				<label class="form-check-label" for="inlineRadio2">L</label>
                    		</div>
                   			 <div class="form-check form-check-inline">
                   				   <input class="form-check-input" type="radio" name="product_size" id="product_size" value="XL">
                      				<label class="form-check-label" for="inlineRadio2">XL</label>
                    		</div>
                    
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
      						<td><input type="text" name="product_price" value="${getProd.product_price}">KRW
                        </tr>
                      </thead>
                    </table>
                  </td>
                </tr>
                
				  <tr>
                  <td class="table-light">수량</td>
                  <td>
                    <table table class="table table-bordered">
                      <thead>
                        <tr>
      						<td><input type="text" name="product_pqty" value="${getProd.product_pqty}" id="product_pqty"> 개
                        	<!-- <td><input type="button" onclick ="editPqty()" value="수정"></td> -->
                        </tr>
                      </thead>
                    </table>
                  </td>
                </tr>
                
                
                
<!-- 
                <tr>
                  <td class="table-light">공급가</td>
                  <td>
                    <div class="d-flex align-items-center">
                      <input type="text" class="form-control" id="" placeholder="공급가 입력...">KRW
                    </div>
                  </td>
                </tr>

                <tr>

                </tr> -->
    <!--             
                
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
                            <button type="" class="btn btn-dark" style="border-radius: 1">
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
                          <td>판매가 
                            <div class="d-flex align-items-center">
                              <input type="text" class="form-control" style="width:300px;" id="product_price" placeholder="">KRW
                            </div>
                          </td> -->
                     <!--      
                          <td>상품가
                            <div class="d-flex align-items-center">
                              <input type="text" class="form-control" style="width:300px;" id="" placeholder="">KRW
                            </div>
                          </td>
                         
                          <td>과세금액
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
                </tr> -->

         <!--        <tr>
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
                      사용 가능 체크했을때 가능한 쿠폰 선택할 수 있게 하는 거 추가해야함
                    </div>
                    <div class="form-check form-check-inline">
                      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                      <label class="form-check-label" for="inlineRadio2">사용 불가능</label>
                    </div>
                  </td>
                </tr>

              </tbody>

          </tbody>
        </table>  -->

      </tbody>
    </table>
        
 		<!-- 	<table table class="table table-bordered"> -->
	<thead>
		<tr>
			<th style="border-right: none;">이미지 정보</th>
		</tr>
	</thead>

	<tbody>
	
				<tr><td>
				<c:forEach items="${imgList}" var="file">
                           <div class="file-input">
                              <!-- <span class="glyphicon glyphicon-camera" aria-hidden="true"></span> -->
                              <img src="${upPath}/${file}" width="50" height="50"><br>
                              ${file} <a href='#this' name='file-delete'>삭제</a> 
                              <input type="hidden" name="file_img" value="${file}">
                           </div>
                        </c:forEach>
                 	</td>
				</tr>				
						
		 	 	<tr>
			<td>
				<div class="form-group file-group" id="file-list">
					<c:set var="number" value="1" />
					<c:forEach items="${imageList}" var="file">
						<div class="file-input">
							<c:if test="${file != null }">
								<img src="${upPath}/${file}" width="50" height="50">
								<br>
										${file} 
									
									<a href='#this' name='file-delete'>삭제</a>
								
								<input type="hidden" name="product_image${number}" value="${file}">
							</c:if>
						</div>
						<c:set var="number" value="${number+1}" />
					</c:forEach>
				</div> 
					<div id="attachFileDiv">
						<div id="file0">
							<input type="file" id="file_img0" name="file_img0" value=""
								size="20" onchange="javascript:attachFile.add(0)">
						</div>
					</div>
				
			</td>
		<tr>

		</tr>
		</div>

	</tbody>

	</table>

	</div>
	</div>
	<td>
		<div>
			<button type="submit" style="border-radius: 0">수정</button>
		</div>
	</td>

	<td>
		<div>
			<button type="cancel" style="border-radius: 0">취소</button>
		</div>
	</td>


	</body>
	</html>
</form>