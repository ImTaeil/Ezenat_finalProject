<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!--  LIST.JSP -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@include file="admin_top.jsp" %>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>

<script type="text/javascript">

 $(function(){
	var chkObj = document.getElementsByName("RowCheck");
	var rowCnt = chkObj.length;
	
	$("input[name='allCheck']").click(function(){
		var chk_listArr = $("input[name='RowCheck']");
		for (var i=0; i<chk_listArr.length; i++){
			chk_listArr[i].checked = this.checked;
		
		}
	});
	$("input[name='RowCheck']").click(function(){
		if($("input[name='RowCheck']:checked").length == rowCnt){
			$("input[name='allCheck']")[0].checked = true;
		}
		else{
			$("input[name='allCheck']")[0].checked = false;
		}
	});
}); 
	
function check(){
	 
	 if(f.searchString.value==""){
			alert("검색란에 내용을 입력해주세요.")
			f.searchString.focus()
			return false
		}
	 
}

 function realDeleteList(){
	 
	 var realDel = confirm("완전 삭제하시겠습니까");
	 if(realDel){
	 	//alert("삭제확인")
	 	var del2 = document.getElementsByName('RowCheck');
	 	const arr2 = [];
	 	for(i=0;i<del2.length;++i){
			if(del2[i].checked == true) {
				arr2.push(del2[i].value);
				alert(del2[i].value)
			}
		}
	 	
		$.ajax({
			
			url : './admin_product_realDelete.do',
			type : 'post',
			data : {
				dlist : JSON.stringify(arr2)
			},
			cache : false,
			success : function(res){
				//alert("진짜여기")
				location.href('admin_product_list.do?mode=Y')
			}
		});  
	 
	 
 } 
 }
 
function moveDeleteList(){
	
	var isDel = confirm("삭제목록으로 이동하시겠습니까?");
 	if(isDel){
		//alert("이동확인")
		//alert(document.getElementById('mode').value)
		var mode = document.getElementById('mode').value;
		var del = document.getElementsByName('RowCheck');
		
		const arr = [];
		for(i=0;i<del.length;++i){
			if(del[i].checked == true) {
				arr.push(del[i].value);
			
				alert(del[i].value)
			}
		
		}
		if(arr == null || arr == ""){
			alert("이동할 상품을 체크해주세요.")
			return;
		}
		alert(arr[0]) 
			$.ajax({
			url : './admin_product_moveDeleteList.do',
			type : 'post',
			data : {
				list : JSON.stringify(arr)
			
			},
			cache : false,
			success : function(res){
					//alert("진짜여기")
			/* 	if(mode == 'Y'){ 재등록 할거면 필요한 로직
					alert("")
					 location.href('admin_product_list.do?mode=N')
				 } */
				 if(mode ==null ||mode == ''||mode=='N'){
					 //alert("N들어옴")
					 location.href('admin_product_list.do?mode=Y')
				 }
			}
		});  
	}
}
</script>

    <!--  <div class="container">
		<div class="col-12 main-content">
			      
				<div class="container">
					<div class="detail-content">
						 <table class="table" border="1">
								<tbody> -->
								<!-- 
										<tr>
											<th scope="row">검색분류</th>
												<td>
													<ul>
														<li>
															<select class="option-name" style="margin-right:5px">
																<option ="productname">상품명</option>
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
																<option ="productname">상품명</option>
																
															</select>
                                                          <select class="option-name" style="margin-right:5px">
																<option ="productname">상품명</option>
																
															</select>
                                                          <select class="option-name" style="margin-right:5px">
																<option ="productname">상품명</option>
																
															</select>
                                                          <select class="option-name">
																<option ="productname">상품명</option>
																
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
																<option ="productname">상품명</option>
																
															</select>
                                                          <select class="date" style="margin-right:5px">
																<option ="productname" >상품명</option>
																
															</select>
                                                          <select class="date" style="margin-right:5px">
																<option ="productname">상품명</option>
																
															</select>
                                                          <select class="#" style="margin-right:5px">
																<option ="productname">상품명</option>
																
															</select>
                                                          <select class="#" style="margin-right:5px">
																<option ="productname">상품명</option>
																
															</select>
                                                          <select class="#">
																<option ="productname">상품명</option>
																
															</select>
                                                          
														</li>
													</ul>
												</td>
               
										
										</tr>
								
								</tbody>
							</table>
						</div>
					</div> 
				-->
				<form name="f" action="admin_product_search.do" method="post" role="search" onsubmit="return check()">
                   <input type ="hidden" name = "mode" value = "${mode}">
                  <div class="row">
                   <div class="col" align="center" style="padding:10px 10px">
                 	<select id="dropdown-select"  name="search" class="form-select" onchange="handleDropdownChange(this)">
    				<option value="product_name" >상품명</option>
    				<option value="product_code">상품코드</option>
 			 		</select>
                     <input class="form-control me-2" type="text" name = "searchString" placeholder="검색할 상품을 입력하세요..." aria-label="Search">
                  	<button type="submit" class = "btn btn-dark">검색</button>
                    <button type="reset" class="btn btn-dark">초기화</button>
                   </form>
                    </div> 
                    </div>
                    
                    <!--  
			</div> 
	
	 </div>

    <div class="container">
      <div class="row">
        <div class="col-12">상품목록</div>

        <div class="col-8">[총 n개]</div> -->

     <!--    <div class="col-2">
          <select
            id="dropdown-select"
            name="search"
            class="form-select"
            onchange="handleDropdownChange(this)"
          >
            <option ="content">등록일 역순</option>
            <option ="hashTag_name">등록일 순</option>
            <option ="content">수정일 역순</option>
            <option ="hashTag_name">수정일 순</option>
            <option ="content">상품명 역순</option>
            <option ="hashTag_name">상품명 순</option>
            <option ="content">판매가 역순</option>
            <option ="hashTag_name">판매가 순</option>
            <option ="content">공급가 역순</option>
            <option ="hashTag_name">공급가 순</option>
            <option ="content">진열 역순</option>
            <option ="hashTag_name">진열열 순</option>
            <option ="content">장바구니수 역순</option>
            <option ="hashTag_name">장바구니수 순</option>
            <option ="content">조회수 역순</option>
            <option ="hashTag_name">조회수 순</option>
            <option ="content">좋아요 역순</option>
            <option ="hashTag_name">좋아요 순</option>
          </select>
        </div> -->
 
<!--         <div class="col-2">
          <select
            id="dropdown-select"
            name="search"
            class="form-select"
             onchange="handleDropdownChange(this)" 
          >
            <option ="content">10개씩 보기</option>
            <option ="content">20개씩 보기</option>
            <option ="content">30개씩 보기</option>
            <option ="content">50개씩 보기</option>
            <option ="content">100개씩 보기</option>
          </select>
        </div>  -->
		
       <!--  <div class="col-11" style="padding: 10px">
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
     -->
	 	<button onclick="moveDeleteList()" class="btn btn-dark"  style="border-radius: 0">
					삭제목록으로 이동</button>
         <c:if test="${mode=='Y' }">
          
          <button onclick="realDeleteList()" class ="btn btn-dark"	 style ="border-radius: 0">
          			완전 삭제</button>
          
          </c:if>
          
       <!--    <button type="submit" class="btn btn-dark" style="border-radius: 1">
            분류수정 >
          </button>
          <button type="submit" class="btn btn-dark" style="border-radius: 1">
            메인진열수정 >
          </button>
          <button type="submit" class="btn btn-dark" style="border-radius: 1">
            엑셀다운로드 >
          </button>
        </div> -->
<!-- 
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
 -->

<!-- 

      </div> -->



<!-- 
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
 -->
        <div class="col-12">
          <table class="table">
            <thead>
              <tr>
                <th>
	              <!--   <div class="form-check"> -->
	              				
		                <input  type="checkbox"  id ="allCheck" name = "allCheck"/>전체선택
		          <!--        <label class="form-check-label" for="flexCheckDefault">
		                </label> -->
	                 </div> 
                </th>
                <th>No</th>
                <th>상품코드</th>
                <th>상품명</th>
                <th>상품색상</th>
                <th>판매가</th>
                <th>상품이미지</th>
                <th>수량</th>
                <th>할인가</th>
                <th>바로구매 URL</th>
              </tr>
              
           
            </thead>
            <tbody>
              <tr>
 					
                <table class = "table">
                <tr>
                <c:if test = "${empty listProd}">
                <td colspan = "10" align = "center">해당 상품이 존재하지 않습니다.</td>
                <td><a href ="admin_product_list.do">상품 목록으로 넘어가기</a></td>
                
                </c:if>
                
                <c:if test = "${not empty listProd }">
                 <c:forEach var = "dto" items = "${listProd}" >
                <th>   
                             		                            
		                <input  type="checkbox" name="RowCheck"  value = "${dto.product_num}" >
		            <!-- 	 <label class="form-check-label" for="flexCheckDefault">
		                </label>       -->                                
                </th>                      
                <td>${dto.product_num}</td>
                <td>${dto.product_code}</td>
                <td>${dto.product_name}</td>
                <td>${dto.product_color}</td>
                <td>${dto.product_price}</td>
                <td><a href="admin_product_view.do?product_num=${dto.product_num}">
              	<img src="${upPath}/${dto.product_image1}" class="card-img" alt="..."  width="50px" height="50px">						
            	</a></td>
            	 <td>${dto.product_pqty}</td>
            	<td>할인가</td>            
                <td>바로구매 URL</td>
				<!-- 기능구현이후에 필요한 컬럼값 넘기기 -->
				  </tr>
                </c:forEach>
              	</c:if>
                  	 		<!--  checkbox div -->
                </table> 
                <input type ="hidden" id = "mode" value = "${mode}">
          </tr>
            </tbody>
          </table>         
        </div>
      
      </div>
    </div>

</body>
</html>