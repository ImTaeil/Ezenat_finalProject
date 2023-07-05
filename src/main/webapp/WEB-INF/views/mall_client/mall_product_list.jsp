<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "mall_index_top.jsp" %>

<!-- mall_product_list.jsp -->
<style>
li {
    display: list-item;
}
/* 




 */
 .prd-list-wrap .prd-list-left, .prd-list-wrap .prd-list-center {
    padding: 2rem var(--layout-row-gap);
}

.product_list_wrap {
    display: flex;
    width: 100%;
}

.product_list_wrap .product_list_left {
    width: 400px;
    min-height: 70vh;
    border-right: var(--border-set);
    line-height: 2;
}

.product_list_wrap .product_list_left li {
    position: relative;
}

.product_list_wrap .product_list_left .product_list_left_inside {
    position: sticky;
	top: calc(var(--header-h) + 2rem);
/* 	top : 3rem; */
    left: var(--layout-row-gap);
}

.product_list_wrap .product_list_left .hasChild .open_icon {
    position: absolute;
    top: 0;
    right: 0;
    cursor: pointer;
}

.product_list_wrap .product_list_left .hasChild .open_icon::after {
    /* content: "\e61a"; */
    font-family: 'themify';
    display: block;
    opacity: 0.5;
    font-size: 12px;
    cursor: pointer;
}

.product_list_wrap .product_list_left a {
    display: block;
    font-size: calc(var(--font-size) + 2px);
    display: inline-block;
}

.product_list_wrap .product_list_left .sub_category_child a {
    font-size: var(--font-size);
    opacity: 0.6;
}
/* 




 */
.product_list_center {
    width: calc(100vw - 400px);
}

.product_list_left, .product_list_center {
    padding: 2rem var(--layout-row-gap);
}

.product_section {
    margin-top: 0;
    width: 100%;
    float: left;
}

.product_top_section {
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 100%;
    padding: 0 0 2rem 0;
}

.category_menu {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
}

.category_menu > li a {
    display: inline-block;
    padding: 6.5px;
    margin: 0 10px 10px 0;
    position: relative;
    width: auto;
    border: var(--border-width) solid var(--btn-border-color);
    background-color: var(--btn-background-color);
    color: var(--btn-color);
}

.select_sort {
    padding-top: 0;
    padding-bottom: 0;
    height: 30px;
    cursor: pointer;
}

ul.product_list {
    margin: 0 -7px;
    display: flex;
    flex-wrap: wrap;
    flex: 1;
}

li.product {
    width: 25%;
    padding: 0 7px;
    margin-bottom: 70px;
    text-align: center;
    line-height: 1.5;
}

li.product .product_box {
    position: relative;
}

li.product .product_box a {
    display: block;
    position: relative;
}

li.product .product_thumb_box {
    position: relative;
    display: block;
    overflow: hidden;
}

li.product .product_info {
    width: auto;
    padding: 10px 0;
    text-align: left;
    position: relative;
}

li.product .product_info_name *, li.product .product_info * {
    font-size: var(--font-size) !important;
}

li.product .product_info_name {
    margin-top: 0;
    margin-bottom: 0;
    white-space: normal;
    word-break: keep-all;
    font-weight: bold;
}

li.product .product_info > ul > li.price {
    margin-right: 10px;
}

li.product .product_info > ul > li.price, li.product .product_info > ul > li.discount_price {
    display: inline;
}

img {
    overflow-clip-margin: content-box;
    overflow: clip;
}

.product_list_paging {
    width: 100%;
    text-align: center;
    padding: 20px 0;
    display: flex;
    justify-content: center;
}

.product_list_paging ol, .product_list_paging p, .product_list_paging ol li {
    display: inline-block;
}

.product_list_paging ol li a {
    color: #999;
    padding: 5px 8px;
    margin: 0;
    font-weight: bold;
}

.product_list_paging ol li a.this {
    color: var(--color);
}

.product_list_paging p a {
    color: var(--color);
}

.paging p i {
    font-size: var(--font-size);
}

/* .ti-angle-left:before {
    content: "\e64a";
}

.ti-angle-right:before {
    content: "\e649";
} */
</style>

<div class = "product_list_wrap">
	<div class = "product_list_left">
		<div class = "product_list_left_inside">
			<ul class = "sub_catogory">
				<li class = "sub_catogory_li">
					<a href = "">
						모두 보기
					</a>
				</li>
						
				<!-- 반복문으로 서브 카테고리 정보 갖고와서 출력 -->
				<c:forEach begin="1" end = "3">
				
					<li class = "sub_catogory_li hasChild">
						<a href = "">
							모자
						</a>
						
						<ul class = "sub_category_child" style = "display : block;">
							<li class = "sub_category_child_li">
								<a href = "">
									볼캡
								</a>
							</li>
							
							<li class = "sub_category_child_li">
								<a href = "">
									버킷햇
								</a>
							</li>
							
							<li class = "sub_category_child_li">
								<a href = "">
									비니
								</a>
							</li>
						</ul>
						
						<span class = "open_icon">+</span>
					</li>
					
				</c:forEach>
			</ul>
		</div>
	</div>
	
	<div class = "product_list_center">
		<div class = "product_all_section">
			<div class = "product_top_section">
				<ul class = "category_menu">
				
					<!-- 반복문으로 카테고리 불러와서 출력해주면 됌 -->
					<c:forEach begin="1" end="3">
						<c:set var="num" value = "${ num + 1}"/>
						
						<li>
							<a href = "">
								카테고리${ num }
							</a>
						</li>
					
					</c:forEach>
				</ul>
				
				<select class = "select_sort">
					<option>신상품</option>
					<option>낮은 가격</option>
					<option>높은 가격</option>
					<option>인기 상품</option>
					<option>조회수</option>
				</select>
			</div>
			
			<ul class = "product_list">
				<!-- 반복문으로 상품 정보 불러와 출력 -->
				<c:forEach begin="1" end="20">	<!-- var = "dto", items = "productDTO" -->
				
					<li class = "product">
						<div class = "product_box">
							<!-- 상품 이미지 눌렀을 때 이동 경로 -->
							<a href = "mall_product_content.ezenat?product_num=">
								<span class = "product_thumb_box">
									<span>
										<!-- 상품 이미지 -->
										<img src = "//covernat.net/web/product/medium/202306/458a39911c80d806e8ae44d88d38cb1e.jpg">
									</span>
								</span>
							</a>
							
							<div class = "product_info">
								<div class = "product_info_name">
									<!-- 상품 상세보기 링크 -->
									<a href = "">
										<span style = "font-size : 14px; color : #000000;">
											<!-- 상품 이름 -->
											워시드 버킷 햇 차콜
										</span>
									</a>
								</div>
								
								<ul>
									<li class = "price">
										<!-- <strong class="title displaynone">
											<span style = "font-size : 14px; color : #595858;">
												판매가
											</span>
										</strong> -->
										
										<span style = "font-size : 14px; color : #595858; text-decoration : line-through;">
											<!-- 상품 가격 -->
											39,000원
										</span>
										
										<span class = "span_product_tax_type_text" style = "text-decoration : line-through;"></span>
									</li>
									
									<li class = "discount_price">
										<!-- <strong class="title displaynone">
											<span style="font-size:14px;color:#595858;">
												할인판매가
											</span>
										</strong> -->
										
										<span style="font-size : 14px; color : #595858;">
											<!-- 할인된 상품 가격 -->
											31,200원
											
											<span style="font-size : 14px; color : #595858;">
												<!-- 할인율 -->
												(20% 할인)
											</span>
										</span>
									</li>
								</ul>
							</div>
						</div>
					</li>
				
				</c:forEach>
			</ul>
		</div>
		
		<div class = "product_list_paging">
			<c:set var="page" value="${ page }"/>
			
			<c:if test="${ page == null }">
				<c:set var="page" value="1"/>
			</c:if>
			
			<!-- 커버낫에서 사용하던 페이징 링크 => 'href = ?cate_no=28&amp;page=' -->
			<p>
				<!-- 이전 페이지 -->
				<!-- page = 2 부터 href = 현재 페이지 - 1 로 링크 -->
				<c:if test="${ page == 1 }">
					<a href="#none" class="product_list_paging_prev">
						<i class="ti-angle-left">◀</i>
						
						Prev
					</a>
				</c:if>
				
				<c:if test="${ page > 1 }">
					<a href="mall_product_list.ezenat?page=${ page - 1 }" class="product_list_paging_prev">
						<i class="ti-angle-left">◀</i>
						
						Prev
					</a>
				</c:if>
			</p>
			
			<ol>
				<!-- 출력할 페이지만큼 반복, 여기 수정 필요함 -->
				<c:forEach begin="1" end="5">
					<c:set var="page_num" value="${ page_num + 1 }"/>
					
					<li class="xans-record-">
						<!-- 기본 class = other 에 현재 페이지만 class = this 로 변경
						, this 에만 굵은 글꼴 -->
						
						<!-- 페이지 != 현재 페이지, class = other -->
						<c:if test="${ page_num != page }">
							<a href="mall_product_list.ezenat?page=${ page_num }" class="other">
								${ page_num }
							</a>
						</c:if>
						
						<!-- 페이지 == 현재 페이지, class = this -->
						<c:if test="${ page_num == page }">
							<a href="mall_product_list.ezenat?page=${ page_num }" class="this">
								${ page_num }
							</a>
						</c:if>
					</li>
	                
				</c:forEach>
            </ol>
            
			<p>
				<!-- 다음 페이지 -->
				<a href="mall_product_list.ezenat?page=${ page + 1 }" class="product_list_paging_next">
					Next
					
					<i class="ti-angle-right">▶</i>
				</a>
			</p>
		</div>
	</div>
</div>

<%@ include file = "mall_index_bottom.jsp" %>