<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file = "mall_index_top.jsp" %>
<style>
@media only screen and (max-width: 1680px) {
	.xans-product-image {
	    margin-top: 50px;
	}
}

.xans-product-image {
    clear: both;
    padding-top: 0;
    width: 100%;
    margin: 0 auto;
    margin-top: 100px;
    display: flex;
}
/* 



 */
@media only screen and (max-width: 1500px) {
	.xans-product-detail .detail-left, .xans-product-detail .detail-right {
	    width: 25% !important;
	}
}

@media only screen and (max-width: 1680px) {
	.xans-product-detail .detail-left, .xans-product-detail .detail-right {
	    width: 25% !important;
	}
}

.xans-product-detail .detail-left {
    padding-right: 2rem;
    padding-left: var(--layout-row-gap);
    width: 20%;
}

.xans-product-detail .detail-left .detail-scroll-fixed {
    display: flex;
    justify-content: flex-end;
}

@media only screen and (max-width: 1680px) {
	.detail-scroll-fixed {
	    top: calc(var(--header-h) + 50px);
	}
}

.detail-scroll-fixed {
    text-align: center;
    position: sticky;
    top: calc(var(--header-h) + 100px);
    left: 0;
    z-index: 1;
}

.detail-scroll-fixed .detail-content-container {
    width: 100%;
    height: auto;
}

.xans-product-detail .detail-left .detail-side-thumb {
    position: relative;
    min-width: 67px;
    display: none;
}

.xans-product-detail .detail-left .detail-side-thumb .swiper-container {
    min-height: 300px;
    height: 30vh;
}

.swiper-pointer-events.swiper-vertical {
    touch-action: pan-x;
}

body .swiper-container {
    width: 100%;
    height: auto;
    overflow: hidden;
    position: relative;
}

.swiper-free-mode>.swiper-wrapper {
    transition-timing-function: ease-out;
    margin: 0 auto;
}

.swiper-vertical>.swiper-wrapper {
    flex-direction: column;
}

.swiper-android .swiper-slide, .swiper-wrapper {
    transform: translate3d(0px,0,0);
}

.swiper-wrapper {
    position: relative;
    width: 100%;
    height: 100%;
    z-index: 1;
    display: flex;
    transition-property: transform;
    box-sizing: content-box;
}

.xans-product-detail .detail-left .detail-side-thumb .swiper-container .swiper-slide.swiper-slide-thumb-active {
    opacity: 0.5;
}

/* .swiper-slide {
    flex-shrink: 0;
    width: 100%;
    height: 100%;
    position: relative;
    transition-property: transform;
} */

.xans-product-detail .detail-left .detail-side-thumb .swiper-container .swiper-slide img {
    width: auto;
    height: 100%;
}

body .swiper-container .swiper-slide img {
    width: 100%;
}
/* 



 */
.xans-product-detail .detail-left .detail-side-thumb [class*="swiper-button-"].swiper-button-disabled {
    opacity: 0;
}

.xans-product-detail .detail-left .detail-side-thumb [class*="swiper-button-"] {
    position: absolute;
    text-align: center;
    width: 100%;
    left: 0;
    right: auto;
    top: -30px;
    bottom: auto;
    margin: 0;
    color: var(--color);
    font-size: 1rem;
    height: auto;
}

body .swiper-navigation > div > i {
    font-size: 1rem;
    color: #000;
}

.ti-angle-up:before {
    /* content: "\e648"; */
}

.xans-product-detail .detail-left .detail-side-thumb .swiper-button-next {
    top: auto;
    bottom: -30px;
}

.ti-angle-down:before {
	/* content: "\e64b"; */
}

.swiper-button-prev:after, .swiper-button-next:after {
    content: none !important;
}
/* 



 */
@media only screen and (max-width: 1500px) {
	.detail-center {
	    width: 50%;
	}
}

.detail-center {
    display: inline-block;
    max-width: 800px;
    margin: 0 auto;
    text-align: center;
}

.detail-center .imgArea-wrap {
    width: 100%;
    margin: 0 auto;
}

.m-listImg {
    display: none;
}

.m-listImg .swiper-scrollbar {
    position: static;
    margin: 1rem auto;
    width: 100%;
    transition-duration: 0ms;
}

body .swiper-scrollbar {
    overflow: hidden;
}

.detailArea {
    text-align: center;
    width: auto !important;
    max-width: 800px;
    height: auto;
    margin: 0 auto;
    margin-top: 100px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.detailArea img {
    width: 100% !important;
    max-width: 800px;
    height: auto !important;
    display: block;
    margin: 0 auto;
}
/* 



 */
.xans-product-detail .detail-right {
    display: inline-block;
    width: 20%;
    padding: 0 var(--layout-row-gap) 0 2rem;
}

.xans-product-detail .detail-right .innerbox {
    overflow: hidden;
    padding: 0;
}

.xans-product-detail .detail-right .xans-product-detaildesign {
    text-align: left;
}

.xans-product-detail .xans-product-detaildesign table {
    line-height: 0;
}

.xans-product-detail .infoArea table {
    margin: 0 0 10px 0;
}

.xans-product-detail .detail-right .xans-product-detaildesign tbody {
    display: flex;
    flex-direction: column;
}

.xans-product-detail .detail-right .xans-product-detaildesign tr[rel="상품명"] {
    margin-bottom: 20px;
}

.xans-product-detail .infoArea th {
    display: none;
    font-weight: normal;
    width: 115px;
    text-align: left;
    vertical-align: middle;
}

.xans-product-detail .infoArea td {
    padding: 0;
    vertical-align: middle;
    line-height: 20px;
}

.xans-product-detail .infoArea td #span_product_price_text {
    font-weight: inherit;
}

.xans-product-detail .detail-right .xans-product-detaildesign tr[rel="할인판매가"] .discountMember {
    display: none;
}

.xans-product-detail .infoArea td > span > ul.discountMember > li {
    position: relative;
    float: left;
}

.xans-product-detail .infoArea td ul.discountMember li a {
    display: block;
    margin: 0 4px 4px 0;
}
/* 



 */
.xans-product-detail .detail-right .xans-product-detaildesign tr[rel="자체상품코드"] {
    margin-top: 20px;
}
/* 



 */
.xans-product-detail .detail-right .xans-product-detaildesign tr[rel="상품간략설명"] {
	display: none;
}
/* 



 */
.xans-product-detail .detail-right .xans-product-relationlist {
    margin: 20px 0 0;
    text-align: left;
}

.xans-product-detail .detail-right .xans-product-relationlist h3 {
    display: none;
    font-size: inherit;
    letter-spacing: 0;
    padding-top: 5px;
    padding-bottom: 10px;
}

ul.prdList {
    margin: 0 -7px;
    display: flex;
    flex-wrap: wrap;
    flex: 1;
}

.xans-product-detail .detail-right .xans-product-relationlist li.item {
    margin-bottom: 10px;
}

li.item {
    width: 25%;
    padding: 0 7px;
    margin-bottom: 70px;
    text-align: center;
    line-height: 1.5;
}

li.item .box {
    position: relative;
}

li.item .box a {
    display: block;
    position: relative;
}

li.item .thumb-box {
    position: relative;
    display: block;
    overflow: hidden;
}

li.item .thumb {
    opacity: 1;
}

li .thumb {
    width: 100%;
}

.xans-product-detail .detail-right .xans-product-relationlist li.item .text-info {
    display: none;
    padding-top: 5px;
    padding-bottom: 0;
}

li.item .text-info {
    width: auto;
    padding: 10px 0;
    text-align: left;
    position: relative;
}

.xans-product-detail .detail-right .xans-product-relationlist li.item .text-info * {
    color: initial;
    font-weight: normal !important;
}

li.item .name *, li.item .text-info * {
    font-size: var(--font-size) !important;
}

li.item .name {
    margin-top: 0;
    margin-bottom: 0;
    white-space: normal;
}

li.item .name * {
    word-break: keep-all;
}
/* 



 */
.xans-product-detail .detail-right .xans-product-additional {
    padding-left: 0;
}

.xans-product-detail .detail-right #tabs {
    margin-top: 20px;
    margin-bottom: 30px;
}

.xans-product-detail .detail-right #tabs ul {
    margin: 0 0 20px 0;
    border-bottom: 0px;
    text-align: left;
}

.xans-product-detail .detail-right #tabs ul li {
    display: inline-block;
    border: 0px;
    padding: 0px 20px 0 0;
    margin: 0;
}

.xans-product-detail .detail-right #tabs ul li a {
    color: var(--disable-color);
}

.xans-product-detail .detail-right #tabs .tabs-content {
    display: none;
    line-height: 1.8;
    font-size: inherit;
    color: #000;
    text-align: left;
    padding-right: 1rem;
    max-height: 250px;
    overflow-y: scroll;
    overflow-x: hidden;
}

#detail-info .close-btn {
    display: none;
}

.xans-product-detail .infoArea .xans-product-option tr:first-child td, .xans-product-detail .infoArea .xans-product-option .xans-product-fileoption td {
    border-top: 0px solid var(--border-color);
}

.xans-product-detail .infoArea .xans-product-option tr td {
    display: block;
    padding: 5px 0;
    text-align: left;
}

.xans-product-detail .detail-right .infoArea .xans-product-option .ec-product-button {
    margin-bottom: 0;
}

.xans-product-detail .infoArea .xans-product-option .ec-product-button {
    margin-bottom: -10px;
}

.xans-product-detail .detail-right .infoArea .xans-product-option .ec-product-button li {
    margin: 0 -1px -1px 0;
}

.xans-product-detail .infoArea .xans-product-option .ec-product-button li:last-child {
    margin-right: 0;
}

.xans-product-detail .infoArea .xans-product-option .ec-product-button li {
    color: var(--color);
    width: auto;
    text-align: center;
    text-decoration: none;
    word-break: break-all;
    position: relative;
    overflow: hidden;
    display: inline-block;
    margin: 0 10px 10px 0;
    vertical-align: middle;
    border: var(--border-width) solid var(--border-color);
    background: transparent;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    -webkit-transition: border 300ms ease;
    transition: border 300ms ease;
}

.xans-product-detail .detail-right .infoArea .xans-product-option .ec-product-button li a {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 0;
    margin: 0;
    width: 45px;
    height: 45px;
}

.xans-product-detail .infoArea .xans-product-option .ec-product-button li a {
    padding: 9px 16px;
    display: block;
    text-align: center;
    text-decoration: none;
    word-break: break-all;
}

.xans-product-detail .infoArea .xans-product-option .ec-product-button li a span {
    display: inline-block;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.xans-product-detail .infoArea .xans-product-option .value {
    display: none;
    font-size: 10px;
    padding-top: 5px;
    word-break: break-all;
}

.xans-product-detail .infoArea .option-select {
    width: 100% !important;
}

.xans-product-detail .infoArea select {
    width: 100%;
}
/* 



 */
#totalProducts {
    margin: 0;
    overflow: hidden;
    color: var(--color);
}




























</style>

<div class="layout-contents-wrap">
	<!-- 상단 제품 정보-->
	<!--
		$category_page = /product/list.html
		$project_page = /product/project.html
		$jointbuy_page = /product/jointbuy.html
	-->

	<!-- 상단 제품 정보-->
	<div>
		<div class="xans-element- xans-product xans-product-detail ">
			<!--
				※ 옵션 선택시 품목의 할인가로 표시됩니다.
				$use_item_sale_price = T
			-->
			
			<!-- 이미지 영역 -->
			<div class="xans-element- xans-product xans-product-image imgArea">
				<!-- detail-left -->
				<!-- 상세정보 내역 -->
				<div class="detail-left ">
					<div class="detail-scroll-fixed"> 
						<div class="detail-scroll-container">
							<div class="detail-scroll">
								<div class="detail-content-container">
									<div class="detail-content">
										<div class="detail-side-thumb" thumbsslider="" style="display: block;">
											<div class="swiper-container swiper-initialized swiper-vertical swiper-pointer-events swiper-free-mode swiper-watch-progress swiper-thumbs swiper-backface-hidden"> 
												<ul class="xans-element- xans-product xans-product-addimage swiper-wrapper slides" id="swiper-wrapper-44710003bf417da97" aria-live="polite" style="transition-duration: 0ms; transform: translate3d(0px, -62px, 0px);">
													<li class="add_img swiper-slide xans-record- swiper-slide-prev" role="group" aria-label="1 / 6" style="height: 52px; margin-bottom: 10px;">
														<a href="#none" class="prd-zoom">
															<img src="//covernat.net/web/product/big/202306/c4de453fcfdd40b46669058697cafc00.jpg"
																	class="ThumbImage" alt="">
														</a>
													</li>
													
													<li class="add_img swiper-slide xans-record- swiper-slide-visible swiper-slide-active"
															role="group" aria-label="2 / 6" style="height: 52px; margin-bottom: 10px;">
														<a href="#none" class="prd-zoom">
															<img src="//covernat.net/web/product/extra/small/202306/9442b17bca8c38ab73a36fee0748f47a.jpg"
																	class="ThumbImage" alt="">
														</a>
													</li>
													
													<li class="add_img swiper-slide xans-record- swiper-slide-visible swiper-slide-next"
															role="group" aria-label="3 / 6" style="height: 52px; margin-bottom: 10px;">
														<a href="#none" class="prd-zoom">
															<img src="//covernat.net/web/product/extra/small/202306/cc1fb41f0772340436b8a2c113fe001a.jpg"
																	class="ThumbImage" alt="">
														</a>
													</li>
													
													<li class="add_img swiper-slide xans-record- swiper-slide-visible"
															role="group" aria-label="4 / 6" style="height: 52px; margin-bottom: 10px;">
														<a href="#none" class="prd-zoom">
															<img src="//covernat.net/web/product/extra/small/202306/d55d548d2c57929d190179b0ed6df33d.jpg"
																	class="ThumbImage" alt="">
														</a>
													</li>
													
													<li class="add_img swiper-slide xans-record- swiper-slide-visible swiper-slide-thumb-active"
															role="group" aria-label="5 / 6" style="height: 52px; margin-bottom: 10px;">
														<a href="#none" class="prd-zoom">
															<img src="//covernat.net/web/product/extra/small/202306/880d1dce4e01d39fb522a588c1c08a3b.jpg"
																	class="ThumbImage" alt="">
														</a>
													</li>
													
													<li class="add_img swiper-slide xans-record- swiper-slide-visible"
															role="group" aria-label="6 / 6" style="height: 52px; margin-bottom: 10px;">
														<a href="#none" class="prd-zoom">
															<img src="//covernat.net/web/product/extra/small/202306/5b6c2bee50ff2b827c74e39d7dbdb07c.jpg"
																	class="ThumbImage" alt="">
														</a>
													</li>
												</ul>
												
												<span class="swiper-notification"
														aria-live="assertive" aria-atomic="true"></span>
											</div>
											
											<div class="swiper-navigation mobile-content-hide">
												<div class="swiper-button-prev" tabindex="0" role="button"
												aria-controls="swiper-wrapper-44710003bf417da97"
												aria-label="Previous slide" aria-disabled="false">
													<i class="ti-angle-up">
														<img src = "resources/images/up_icon.svg" style = "width : 2rem;">
													</i>
												</div>
												
												<div class="swiper-button-next swiper-button-disabled" tabindex="-1" role="button"
														aria-controls="swiper-wrapper-44710003bf417da97" 
														aria-label="Next slide" aria-disabled="true">
													<i class="ti-angle-down">
														<img src = "resources/images/down_icon.svg" style = "width : 2rem;">
													</i>
												</div>
											</div>
										</div>
										<!-- <div class="scroll-info scroll-info-up">
										<i class="ti-angle-up">
										</i>
										</div>
										<div class="box">
										<ul class="detail-side-thumb" module="product_addimage">
										<li class="add_img swiper-slide active">
										<a href="#none">
										</a>
										</li>
										<li class="add_img swiper-slide">
										<a href="#none">
										</a>
										</li>
										<li class="add_img swiper-slide">
										<a href="#none">
										</a>
										</li> 
										</ul> 
										</div>
										<div class="scroll-info scroll-info-down">
										<i class="ti-angle-down">
										</i>
										</div> -->
									</div>
								</div>
							</div>
						</div> 
					</div>
				</div><!--//detail-left-->
				
				<!--detail-center-->
				<div class="detail-center ">
					<div class="imgArea-wrap">
						<!-- <div class="listImg normal-detail-img" module="product_addimage">
						<ul>
						<li class="add_img swiper-slide">
						<a href="#none" class="prd-zoom">
						</a>
						</li>
						<li class="add_img swiper-slide">
						<a href="#none" class="prd-zoom">
						</a>
						</li>
						<li class="add_img swiper-slide">
						<a href="#none" class="prd-zoom">
						</a>
						</li>
						</ul>
						</div> -->
						<div class="m-listImg m-detail-slider" style="display: block;">
							<div class="swiper-container swiper-initialized swiper-horizontal swiper-pointer-events swiper-autoheight swiper-watch-progress swiper-backface-hidden"> 
								<ul class="xans-element- xans-product xans-product-addimage swiper-wrapper slides" id="swiper-wrapper-6e09f10a7813024c1" aria-live="polite" style="cursor: grab; transition-duration: 0ms; height: 817px; transform: translate3d(-2724px, 0px, 0px);">
									<li class="add_img swiper-slide xans-record-"
											role="group" aria-label="1 / 6" style="width: 681px;">
										<a href="#none">
											<img src="//covernat.net/web/product/big/202306/c4de453fcfdd40b46669058697cafc00.jpg"
													class="ThumbImage" alt="">
										</a>
									</li>
									
									<li class="add_img swiper-slide xans-record-"
											role="group" aria-label="2 / 6" style="width: 681px;">
										<a href="#none">
											<img src="//covernat.net/web/product/extra/small/202306/9442b17bca8c38ab73a36fee0748f47a.jpg"
													class="ThumbImage" alt="">
										</a>
									</li>
									
									<li class="add_img swiper-slide xans-record-"
											role="group" aria-label="3 / 6" style="width: 681px;">
										<a href="#none">
											<img src="//covernat.net/web/product/extra/small/202306/cc1fb41f0772340436b8a2c113fe001a.jpg"
													class="ThumbImage" alt="">
										</a>
									</li>
									
									<li class="add_img swiper-slide xans-record- swiper-slide-prev"
											role="group" aria-label="4 / 6" style="width: 681px;">
										<a href="#none">
											<img src="//covernat.net/web/product/extra/small/202306/d55d548d2c57929d190179b0ed6df33d.jpg"
													class="ThumbImage" alt="">
										</a>
									</li>
									
									<li class="add_img swiper-slide xans-record- swiper-slide-visible swiper-slide-active"
											role="group" aria-label="5 / 6" style="width: 681px;">
										<a href="#none">
											<img src="//covernat.net/web/product/extra/small/202306/880d1dce4e01d39fb522a588c1c08a3b.jpg"
													class="ThumbImage" alt="">
										</a>
									</li>
									
									<li class="add_img swiper-slide xans-record- swiper-slide-next"
											role="group" aria-label="6 / 6" style="width: 681px;">
										<a href="#none">
											<img src="//covernat.net/web/product/extra/small/202306/5b6c2bee50ff2b827c74e39d7dbdb07c.jpg"
													class="ThumbImage" alt="">
										</a>
									</li>
								</ul>
								
								<div class="layout-row">
									<div class="swiper-scrollbar swiper-scrollbar-horizontal">
										<div class="swiper-scrollbar-drag"
												style="transition-duration: 0ms;
														transform: translate3d(435.2px, 0px, 0px);
														width: 100px;"></div>
									</div>
								</div>
								<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
							</div>
						</div>
					</div>
					
					<div class="mobile-content-hide">
						<div class="detailArea">
							<img src="https://covernat.diskn.com/23SS/18th/상세페이지/18th_COVERNAT.jpg">
							<img src="https://covernat.diskn.com/23SS/18th/상세페이지/CO2300CA25NA_1.jpg">
							<br>
							<img src="https://covernat.diskn.com/23SS/18th/상세페이지/CO2300CA25NA_2.jpg">
							<br>
							<img src="https://covernat.diskn.com/23SS/18th/상세페이지/CO2300CA25NA_22.jpg">
							<br>
							<img src="https://covernat.diskn.com/23SS/18th/상세페이지/CO2300CA25NA_3.jpg">
							<br>
							<img src="https://covernat.diskn.com/23SS/18th/상세페이지/CO2300CA25_4.jpg">
							<br>
						</div>
					</div>
				</div>
				<!--//detail-center-->
				<!--detail-right-->
				<div class="detail-right visible-out">
					<div class="detail-scroll-fixed">
						<div class="detail-scroll-container">
							<div class="detail-scroll">
								<div class="detail-content-container">
									<div class="detail-content">
										<div class="box">
											<div class="innerbox">
											
												<!-- 상세정보 내역 -->
												<div class="infoArea">
													<div class="xans-element- xans-product xans-product-detaildesign">			
														<!--
															출력 갯수 지정 변수, 없으면 설정된 전체가 나옵니다.
															count = 10
														-->
														<table border="1" summary="">
															<caption>기본 정보</caption>
															
															<tbody>
																<tr rel="상품명" class=" xans-record-">
																	<th scope="row">
																		<span style="font-size:16px;color:#000000;">
																			상품명
																		</span>
																	</th>
																	
																	<td>
																		<span style="font-size:16px;color:#000000;">
																			와펜 볼캡 네이비
																		</span>
																	</td>
																</tr>
																
																<tr rel="판매가" class=" xans-record-">
																	<th scope="row">
																		<span style="font-size:13px;color:#a8a8a8;">
																		판매가
																		</span>
																	</th>
																	
																	<td>
																		<span style="font-size:13px;color:#a8a8a8;">
																			<strong id="span_product_price_text" style="text-decoration: line-through;">
																				39,000원
																			</strong>
																			
																			<input id="product_price" name="product_price" value="" type="hidden">
																		</span>
																	</td>
																</tr>
																
																<tr rel="할인판매가" class=" xans-record-">
																	<th scope="row">
																		<span style="font-size:13px;color:#595858;">
																			할인판매가
																		</span>
																	</th>
																	
																	<td>
																		<span>
																			<span style="font-size:13px;color:#595858;">
																				<span id="span_product_price_sale">35,100원
																					<span style="font-size:14px;color:#595858;">
																						(10% 할인)
																					</span>
																				</span>
																			</span>
																			
																			<ul class="discountMember">
																				<li>
																					<a href="#">
																						<img class="ec-front-product-show-benefit-icon"
																								product-no="6640" benefit="DP" alt="기간할인"
																								src="//img.echosting.cafe24.com/skin/admin_ko_KR/product/btn_disc_period.gif">							
																					</a>
																				</li>
																			</ul>
																		</span>
																	</td>
																</tr>
																
																<tr rel="자체상품코드" class=" xans-record-">
																	<th scope="row">
																		<span style="font-size:12px;color:#a8a8a8;">
																			자체상품코드
																		</span>
																	</th>
																	
																	<td>
																		<span style="font-size:12px;color:#a8a8a8;">
																			CO2300CA25NA
																		</span>
																	</td>
																</tr>
																
																<tr rel="원산지" class=" xans-record-">
																	<th scope="row">
																		<span style="font-size:12px;color:#a8a8a8;">
																			원산지
																		</span>
																	</th>
																	
																	<td>
																		<span style="font-size:12px;color:#a8a8a8;">												
																			국내
																		</span>
																	</td>
																</tr>
																
																<tr rel="상품간략설명" class=" xans-record-">
																	<th scope="row">
																		<span style="font-size:12px;color:#555555;">
																			상품간략설명
																		</span>
																	</th>
																	
																	<td>
																		<span style="font-size:12px;color:#555555;">
																			º디자인
																			<br>
																			경량한 소재가 특징이며, 커버낫 로고 와펜 포인트를 준 와펜 볼캡.
																			<br>
																			- 머리를 충분히 감싸 얼굴이 작아 보이는 핏과 편안한 착용감
																			<br>
																			- 배색 디자인 포인트
																			<br>
																			- 스트랩 버클에 커버낫 로고 각인 포인트
																			<br>
																			<br>
																			º원단
																			<br>
																			NYLON 100% / 소재 특성상 은은한 광택감을 보여주며, 가볍고 편안한 착용감을 제공합니다.
																			<br>									
																			<br>
																			ºSIZE(CM)
																			<br>
																			FREE - 챙길이 : 7.2, 모자깊이 : 16.5, 둘레 : 58
																			<br>
																		</span>
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
													
													<!--관련상품-->
													<div class="xans-element- xans-product xans-product-relation xans-record-">
														<!-- $only_html = yes -->
														<div class="relation">
															<div class="xans-element- xans-product xans-product-relationlist">
															<h3>RELATED PRODUCTS</h3>
															<ul class="prdList">
																<li class="item xans-record-">
																	<div class="box">
																		<a href="/product/와펜-볼캡-차콜/6639/category/28/display/1/">
																			<span class="thumb-box">
																				<img src="//covernat.net/web/product/medium/202306/5834f12368f1dcd5f32c0a3936bfd8d4.jpg"
																						alt="와펜 볼캡 차콜" class="thumb">
																			</span>
																		</a>
																		
																		<div class="text-info">
																			<a href="/product/와펜-볼캡-차콜/6639/category/28/display/1/"></a>
																			
																			<div class="name">
																				<a href="/product/와펜-볼캡-차콜/6639/category/28/display/1/"></a>
																				
																				<a href="/product/와펜-볼캡-차콜/6639/category/28/display/1/">
																					와펜 볼캡 차콜
																				</a>
																			</div>
																			
																			<ul>
																				<li>
																					<strong class="strike">
																						39,000원
																					</strong>
																				</li>
																				
																				<li class="salePrice ">
																					35,100원
																				</li>
																			</ul>
																		</div>			
																	</div>
																</li>
															</ul>
															</div>
														</div>
													</div>	<!--//관련상품-->
													
													<!-- detail tabs -->
													<div id="tabs-wrap" class="xans-element- xans-product xans-product-additional ">
														<div id="tabs">
															<ul class="tabs-menu">
																<li>
																	<a href="#none">
																		DETAILS
																	</a>
																</li>
																
																<li>
																	<a href="#none">
																		EXCHANGE &amp; RETURN
																	</a>
																</li>
															</ul>
															
															<div class="tabs-content-wrap">
																<div class="tabs-content">º디자인
																	<br>
																	경량한 소재가 특징이며, 커버낫 로고 와펜 포인트를 준 와펜 볼캡.
																	<br>
																	- 머리를 충분히 감싸 얼굴이 작아 보이는 핏과 편안한 착용감
																	<br>
																	- 배색 디자인 포인트
																	<br>
																	- 스트랩 버클에 커버낫 로고 각인 포인트
																	<br>
																	<br>
																	º원단
																	<br>
																	NYLON 100% / 소재 특성상 은은한 광택감을 보여주며, 가볍고 편안한 착용감을 제공합니다.
																	<br>
																	<br>
																	ºSIZE(CM)
																	<br>
																	FREE - 챙길이 : 7.2, 모자깊이 : 16.5, 둘레 : 58
																	<br>
																</div>
																
																<div class="tabs-content">
																	[교환 및 환불규정]
																	<br>
																	-제품에 착용 흔적이 없는 상태에서 교환 및 환불이 가능합니다.
																	<br>
																	-상품 또는 상품 포장지가 훼손되었거나 택이 없을 경우 교환 및 환불이 불가합니다.
																	<br>
																	-2-PACK 등 묶음 상품의 부분(낱개) 교환 및 환불이 불가합니다.
																	<br>
																	-양말 속옷류 액세서리류는 교환 및 환불이 불가합니다.
																	<br>
																	-교환 및 반품을 위해 고객님께서 직접 제품을 물류지로 보내실 경우 추가 비용 발생할 수 있습니다.
																	<br>
																	-상품 입고 시 영업일 1-3일 정도 검수 기간이 소요되는 점 양해 부탁드립니다.
																	<br>
																	<br>
																	
																	[온라인 고객센터]
																	<br>
																	평일 오전 9시 - 오후 6시 / 02-338-3316 
																</div>
															</div>
														</div>
													</div>	<!-- //detail tabs -->
													
													<div id="detail-info" class="fixed-bottom-hide npay-show">
														<div class="detail-info-inside">
															<div class="close-btn">
																<i class="ti-angle-down"></i>
															</div>
															
															<table border="1" summary=""
																	class="xans-element- xans-product xans-product-option xans-record-">
																<caption>상품 옵션</caption>
																
																<tbody class="xans-element- xans-product xans-product-option xans-record-">
																	<tr>
																		<th scope="row">사이즈</th>
																		
																		<td>
																			<ul option_product_no="6640" option_select_element="ec-option-select-finder"
																					option_sort_no="1" option_type="T" item_listing_type="C"
																					option_title="사이즈" product_type="product_option"
																					product_option_area="product_option_6640_0" option_style="button"
																					ec-dev-id="product_option_id1" ec-dev-name="option1"
																					ec-dev-class="ProductOption0" class="ec-product-button" required="true">
																				<li class="" option_value="P0000JVK000A" link_image="" title="F">
																					<a href="#none">
																						<span>
																							F
																						</span>
																					</a>
																				</li>
																			</ul>
																			
																			<p class="value">[필수]
																				<span class="ec-shop-front-product-option-desc-trigger"
																						data-option_msg="옵션을 선택해 주세요">
																					옵션을 선택해 주세요
																				</span>
																			</p>
																			
																			<select required="true" product_option_area_select="product_option_6640_0" id="product_option_id1" name="option1" option_title="사이즈" option_type="T" item_listing_type="C" class="ProductOption0 displaynone option-select product_option_id1">
																				<option value="*">
																					empty
																				</option>
																				
																				<option value="P0000JVK000A">
																					F
																				</option>
																			</select>
																		</td>
																	</tr>
																</tbody>
															</table>
															
															<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
															<div id="totalProducts" class="">
																<table border="1" summary="">
																	<caption>상품 목록</caption>
																	
																	<colgroup>
																		<col style="width:284px;">
																		<col style="width:80px;">
																		<col style="width:110px;">
																	</colgroup>
																	
																	<thead>
																		<tr>
																			<th scope="col">상품명</th>
																			<th scope="col">상품수</th>
																			<th scope="col">가격</th>
																		</tr>
																	</thead>
																	
																	<tbody class="displaynone">
																		<tr>
																			<td>와펜 볼캡 네이비</td>
																			
																			<td>
																				<span class="quantity">
																					<input id="quantity" name="quantity_name" style="" value="0" type="tel">
																					
																					<a href="#none">
																						<img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
																								alt="수량증가" class="QuantityUp up">
																					</a>
																					
																					<a href="#none">
																						<img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
																								alt="수량감소" class="QuantityDown down">
																					</a>
																				</span>
																			</td>
																			
																			<td class="right">
																				<span class="quantity_price">
																					39000
																				</span>
																				
																				<span class="mileage ">
																					(<img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_product_point.gif">
																					&nbsp;
																					
																					<span class="mileage_price">
																						1060
																					</span>
																					
																					)
																				</span>
																				
																				<div id="totalPrice" class="totalPrice">
																					<span class="total"></span>
																				</div>
																			</td>
																		</tr>
																	</tbody>
																	
																	<!-- 참고 : 옵션선택 또는 세트상품 선택시 상품이 추가되는 영역입니다. 쇼핑몰 화면에는 아래와 같은 마크업구조로 표시됩니다. 삭제시 기능이 정상동작 하지 않습니다.-->
																	<tbody>
																		<!-- tr>
																		<td>
																		<p class="product">
																		$상품명<br />
																		<span>$옵션</span>
																		</p>
																		</td>
																		<td>
																		<span class="quantity">
																		<input type="text" class="quantity_opt" />
																		&nbsp;<a href="#none">
																		<img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif" alt="수량증가" class="up" />
																		</a>
																		<a href="#none">
																		<img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif" alt="수량감소" class="down" />
																		</a>
																		</span>
																		<a href="#none">
																		<img src="//img.echosting.cafe24.com/design/skin/default/product/btn_price_delete.gif" alt="삭제" class="option_box_del" />
																		</a>
																		</td>
																		<td class="right">
																		<span>$가격</span>
																		<span class="mileage">(<img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/product/ico_pay_point.gif" /> &nbsp;<span class="mileage_price">$적립금</span>)</span>
																		</td>
																		</tr -->
																	</tbody>	<!-- //참고 -->
																</table>
															</div>	<!-- //참고 -->
															
															<div id="totalPrice" class="totalPrice">
																<span>
																	TOTAL
																</span>
																
																<span class="total">
																	<strong>
																		<em>0</em>
																	</strong>
																	
																	(0개)
																</span>
															</div>
															
															<p class="ec-base-help txt11 displaynone EC-price-warning">
																할인가가 적용된 최종 결제예정금액은 주문 시 확인할 수 있습니다.
															</p>
															
															<!-- 참고 : 뉴상품관리 전용 변수가 포함되어 있습니다. 뉴상품관리 이외의 곳에서 사용하면 일부 변수가 정상동작하지 않을 수 있습니다. -->
															<div class="xans-element- xans-product xans-product-action ">
																<div class="ec-base-button">
																	<a href="#none" class="first btn s-btn " onclick="product_submit(1, '/exec/front/order/basket/', this)">
																		<span alt="바로구매하기" id="btnBuy">
																			BUY NOW
																		</span>
																		
																		<span alt="예약주문" class="displaynone" id="btnReserve">
																			PRE ORDER
																		</span>
																		
																		<span id="" class="displaynone">
																			정기배송 신청하기
																		</span>
																	</a>
																	
																	<a href="#none" class="btn " onclick="product_submit(2, '/exec/front/order/basket/', this)">
																		ADD TO CART
																	</a>
																	
																	<span class="btn displaynone">
																		SOLD OUT
																	</span>
																	
																	<a href="#none" onclick="add_wishlist(this, true);" class="wish-btn btn ">
																		<i class="ti-heart"></i>
																		
																		Wishlist
																	</a>
																</div>
															</div>	<!-- //참고 -->
														</div>
													</div> 
												</div>	<!-- // 상세정보 내역 -->
												
												<div id="detail-option-trigger"></div>
												
												<div class="infoArea-wrap-space" style="height: 265px;"></div>
												
												<div id="detail-open" class="xans-element- xans-product xans-product-action ">		
													<a href="#none" class="btn open-btn ">ADD TO CART</a>
													
													<span class="btn s-btn displaynone">SOLD OUT</span>
													
													<a href="#none" class="first btn s-btn open-btn ">
														<span alt="바로구매하기">BUY NOW</span>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>	<!-- // detail-right-->
			</div>	<!-- // 이미지 영역 -->
		</div>
		
		<div class="scroll-fixed-limit"></div>
		
		<div style="position: static; float: left; width: 100%;" class="xans-element- xans-product xans-product-detail ">
			<div class="mobile-content-show"> 
				<div class="detailArea">
					<img src="https://covernat.diskn.com/23SS/18th/상세페이지/18th_COVERNAT.jpg">
					<img src="https://covernat.diskn.com/23SS/18th/상세페이지/CO2300CA25NA_1.jpg">
					<br>
					<img ec-data-src="https://covernat.diskn.com/23SS/18th/상세페이지/CO2300CA25NA_2.jpg"
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=">
					<br>
					<img ec-data-src="https://covernat.diskn.com/23SS/18th/상세페이지/CO2300CA25NA_22.jpg"
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=">
					<br>
					<img ec-data-src="https://covernat.diskn.com/23SS/18th/상세페이지/CO2300CA25NA_3.jpg"
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=">
					<br>
					<img ec-data-src="https://covernat.diskn.com/23SS/18th/상세페이지/CO2300CA25_4.jpg"
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR4nGP6zwAAAgcBApocMXEAAAAASUVORK5CYII=">
					<br>
				</div> 
			</div>
		</div>
		
		
		
		<style>
			#bg-pastelly-detail-1 { padding-bottom: 35%; position: relative; }
			#bg-pastelly-detail-1iframe { position: absolute; top:0; left:0; width:100%; height: 100%; }
			#bg-pastelly-detail-2 { padding-bottom: 35%; position: relative; }
			#bg-pastelly-detail-2iframe { position: absolute; top:0; left:0; width:100%; height: 100%; }
		</style> 
		
		
		<div class="detail-bottom">
			<!-- bigin pastelly --> 
			<script>
				(function(b,p,a,s,t,e,l,y) {
					b.biginPastelly=b.biginPastelly||[];b.biginPastelly.push({
						config:"config",namespace:s,projectId:e
					})
					
					p.getElementById(t)||(
						l=document.createElement(a),
						y=document.getElementsByTagName(a)[0],
						l.id=t,
						l.async=!0,
						l.src="https://sdk.bigin.io/v1/bigin.pastelly.sdk.js",
						y.parentNode.insertBefore(l,y)
					)
				})
							
				(window,document,"script","biginPastelly","bigin-pastelly-sdk","ZYDTMTSMED-1")
			</script>
			
			<!-- bigin pastelly -->
			<!-- bigin pastelly -->
			<div class="layout-row">
				<div id="bg-pastelly-detail-1" class="mobile-content-hide" style="height: 537px; position: relative; display: block; width: auto; margin: auto;">
					<iframe id="bg-pastelly-detail-1-iframe" style="height: 100%; border: none; width: 100%; margin: auto;">
					</iframe>
				</div>
				
				<div id="bg-pastelly-detail-2" class="mobile-content-show" style="height: auto; position: relative; display: block; width: 1554px; margin: auto;">
					<iframe id="bg-pastelly-detail-2-iframe" style="height: 100%; border: none; width: 100%; margin: auto;">
					</iframe>
				</div>
			</div>
			
			<script>
				window.biginPastelly = window.biginPastelly || []; window.biginPastelly.push({
																		id: '1',
																		type: '02'
																	})
				window.biginPastelly = window.biginPastelly || []; window.biginPastelly.push({
																		id: '2',
																		type: '02'
																	})
			</script>
			<!-- bigin pastelly --> 
			
			<!--상품 게시판-->
			<section class="xans-element- xans-product xans-product-additional additional_after prd-board-section ">
				<div class="layout-row">
					<div class="additional_inside"> 
						<!-- 상품 사용 후기 --> 
						<section id="prdReview" class="prd-board tab-content">
							<div class="title-wrap">
								<!--<h2 class="titleArea">REVIEW</h2>-->
								<div class="boardBtn crema-hide crema-applied" style="display: none;">
									<a class="btn" href="/board/product/list.html?board_no=4">
										LIST
									</a>
									
									<a class="btn s-btn" 
										href="/board/product/write.html?board_no=4&amp;
										product_no=6640&amp;
										cate_no=874&amp;display_group=1">
										WRITE
									</a>
								</div>
							</div>
							
							<div id="reviewArea" class="prd-inside crema-hide crema-applied" style="display: none;">
								<p class="nodata">
									게시물이 없습니다
								</p>
							</div>
							
							<div class="crema-product-reviews crema-applied" data-widget-id="24" data-product-code="6640" style="">
								<iframe id="crema-product-reviews-1"
										src="https://review9.cre.ma/covernat.net/products/reviews?product_code=6640&amp;
										iframe_id=crema-product-reviews-1&amp;
										widget_id=24&amp;widget_style=&amp;app=0&amp;
										parent_url=https%3A%2F%2Fcovernat.net%2Fproduct%2Fdetail.html%3Fproduct_no%3D6640%26cate_no%3D874%26display_group%3D1&amp;
										nonmember_token=&amp;
										secure_device_token=V28fdccf04957de73ec61a6b712b5924e852f656649544407b8ea8bb926b17fb3e336fb31fb8e92d390e16a6ca9817e6e7&amp;
										iframe=1" height="0" width="100%" scrolling="no" allowtransparency="true" frameborder="0"
										name="crema-product-reviews-1-1688020695912"
										style="display: block; visibility: visible; height: 20px;">
								</iframe>
							</div>
							
							<div class="crema-product-reviews crema-applied" data-widget-id="2" data-product-code="6640" style="">
								<iframe id="crema-product-reviews-2"
										src="https://review9.cre.ma/covernat.net/products/reviews?product_code=6640&amp;
										iframe_id=crema-product-reviews-2&amp;
										widget_id=2&amp;widget_style=&amp;app=0&amp;
										parent_url=https%3A%2F%2Fcovernat.net%2Fproduct%2Fdetail.html%3Fproduct_no%3D6640%26cate_no%3D874%26display_group%3D1&amp;
										nonmember_token=&amp;
										secure_device_token=V28fdccf04957de73ec61a6b712b5924e852f656649544407b8ea8bb926b17fb3e336fb31fb8e92d390e16a6ca9817e6e7&amp;
										iframe=1" height="0" width="100%" scrolling="no" allowtransparency="true" frameborder="0"
										name="crema-product-reviews-2-1688020695917"
										style="display: block; visibility: visible; height: 870px;">
								</iframe>
							</div>
						</section>	<!-- //상품 사용 후기 -->
					</div>
					<!-- //상품 Q&A -->
				</div>
			</section>	<!--//상품 게시판-->
		</div>
	</div>


	<script>
		//slider
		/*
		$(window).scroll(function(){
		$(".detail-side-thumb li.add_img").first().addClass("active");
		$(".detail-center .normal-detail-img li.add_img").each(function(){
		var DsideThumb = $(this).index(); 
		var DmainOffset = $(this).offset().top / 1.1;
		var DCenterMargin = $(".detail-center").css("margin-top").replace(/[^0-9]/gi,'');
		var Wscroll = $(window).scrollTop();
		
		$(this).scrollTop();
		
		if ( Wscroll >= (DmainOffset - DCenterMargin - 1) ) {
		$(".detail-side-thumb li.add_img").eq(DsideThumb).addClass('active');
		$(".detail-side-thumb li.add_img").eq(DsideThumb).siblings().removeClass('active');
		}else {
		//$(".detail-side-thumb li.add_img").eq(DsideThumb).removeClass('active');
		}
		});
		});
		
		$(".detail-left .detail-side-thumb li.add_img").click(function(){
		var thisIndex = $(this).index();
		var DCenterMargin = $(".detail-center").css("margin-top").replace(/[^0-9]/gi,'');
		var DmainOffsetIndex = $(".detail-center .normal-detail-img li.add_img").eq(thisIndex).offset().top; 
		var headerH = $("header").outerHeight();
		$('html, body').animate({
		scrollTop: DmainOffsetIndex - DCenterMargin - headerH
		}, 500);
		});
		*/
		/*
		function thumbWrap(){
		const thumbImgH = $(".detail-side-thumb .add_img").first().find("img").height() + 10;
		console.log(thumbImgH);
		$(".detail-side-thumb .swiper-container").height(thumbImgH * 5);
		};
		$(window).on("load", function(){ thumbWrap(); });
		$(window).resize(thumbWrap);
		*/
		
		//var keyImg = $(".keyImg img").attr("src");
		//console.log(keyImg);
		//$(".m-detail-slider .swiper-slide").first().find("img").attr("src",keyImg);
		//$(".detail-side-thumb .swiper-slide").first().find("img").attr("src",keyImg);
		
		var prdThumbSwiper = new Swiper(".detail-side-thumb .swiper-container", {
			slidesPerView: 5,
			
			spaceBetween: 10,
			
			direction: "vertical",
			
			grabCursor: false,
			
			observer: true,
			
			observeParents: true,
			
			watchSlidesProgress: true,
			
			mousewheel: {
				invert: false
			},
			
			freeMode: {
				enabled: true,
				sticky: true
			},
			
			navigation: {
				nextEl: ".detail-side-thumb .swiper-button-next",
				prevEl: ".detail-side-thumb .swiper-button-prev"
			},
			
			on: {
				init: function () {
					var keyImg = $(".keyImg img").attr("src")
					
					console.log(keyImg)
					
					$(".detail-side-thumb .swiper-slide").first().find("img").attr("src",keyImg)
					$(".detail-side-thumb").show()
				}
			}
		})
		
		var prdSwiper = new Swiper('.m-detail-slider .swiper-container', {
			slidesPerView: 1,
			
			//speed: 500,
			
			grabCursor: true,
			
			loop : false,
			
			autoHeight: true,
			
			observer: true,
			
			observeParents: true, 
			
			watchSlidesProgress: true,
			
			pagination: {
				el: '.swiper-pagination',
				
				type: 'progressbar' 
			},
			
			scrollbar: {
				el: '.m-detail-slider .swiper-scrollbar',
				
				draggable: true,
				
				dragSize: 100
			},
			
			thumbs: {
				swiper: prdThumbSwiper,
			},
			
			on: {
				init: function () {
					var keyImg = $(".keyImg img").attr("src")
					
					console.log(keyImg)
					
					$(".m-detail-slider .swiper-slide").first().find("img").attr("src",keyImg)
					$(".m-detail-slider").show()
				}
			}
		})
		
		
		$(".detail-side-thumb").click(function() {
			$("html, body").animate({
				scrollTop: 0
			}, 0)
			
			return false 
		})
		
		//prdThumbSwiper.controller.control = this.prdSwiper;
		//prdSwiper.controller.control = this.prdThumbSwiper;
		
		
		//detailLeftScroll
		/*
		function detailLeftScroll(){
		varthumbWrapH = $(".detail-left .box").outerHeight(),
		thumbH = $(".detail-left .detail-side-thumb").outerHeight();
		
		if (thumbWrapH < thumbH) {
		$(".detail-left").addClass("overflowing");
		} else {
		$(".detail-left").removeClass("overflowing");
		};
		}
		
		detailLeftScroll(); 
		$(window).on("load", function(){ detailLeftScroll(); });
		$(window).resize(detailLeftScroll);
		
		 $(".detail-left .box").scroll(function(){
		const thumbWrapOffset = $(".detail-left .detail-side-thumb").position().top;
		constthumbWrapH = $(".detail-left .box").outerHeight(),
		thumbH = $(".detail-left .detail-side-thumb").outerHeight() 
		
		if ( Math.floor(thumbWrapOffset) <= Math.floor($(".detail-left .box").outerHeight()) - Math.floor($(".detail-left .detail-side-thumb").outerHeight()) ){
		$(".detail-left").removeClass("overflowing-top");
		$(".detail-left").addClass("overflowing-bottom"); 
		} else if ( Math.floor(thumbWrapOffset) == 0 ){
		$(".detail-left").addClass("overflowing-top"); 
		$(".detail-left").removeClass("overflowing-bottom");
		} else {
		//$(".detail-left").removeClass("overflowing");
		}
		});	
		*/
		</script> 
	
		<script>
		window.onload = function() {
			var product_items = []
			
			product_items.push({
				"id": iProductNo,
				"name": product_name,
				"price" : Number(product_price),
				
				item_id: iProductNo,
				item_name: product_name
			})
			
			dataLayer.push({
				'event':'view_item',
				
				'ecommerce':{
					'detail': {
						'products': product_items
					},
					
					'currency': 'KRW',
					
					'value': Number(product_price),
					
					'items': product_items
				}
			})
			
			document.querySelector('#detail-info > div > div.xans-element-.xans-product.xans-product-action'
					+ '> div.ec-base-button > a:nth-child(2)').addEventListener('click',function() {
				console.log('aa');
				
				dataLayer.push({
					'event':'add_to_cart',
					
					'ecommerce':{
						'add': {
							'products': product_items
						},
						
						'currency': 'KRW',
						
						'value': Number(product_price),
						
						'items': product_items
					}
				})
			})
		}
	</script>

	<!-- bigin recommend engine analyze sdk-->
	<script>
		function createBgBuffer() {
			var w = window
			var l = 'bigin'
			
			w["_b_g_e_b_f"] = w["_b_g_e_b_f"] ? w["_b_g_e_b_f"] : []
			
			w[l] = w[l] ? w[l] : {}
			
			w[l].event = function(c, d, t) {
				w["_b_g_e_b_f"].push({ t: "event", a1: c, a2: d, a3: t ? t : new Date().getTime() })
			}
		}
		
		function triggerBiginRecommendEvent(iframeElement, callable) {
			try {
				var iframeElemInnerDocument = iframeElement.contentWindow.document
				var productList = []
				
				function triggerEvent(productList) {
					var productListData = ''
					
					productList.forEach(function(product, index) {
						if(index === 0) {
							productListData += product.dataset.id
						
						} else {
							productListData +=',' + product.dataset.id
						}
						
						product.addEventListener('click', function(e) {
							bigin.event("bg:recommendClick", {
								'name' : 'pv',
								'productList': productListData,
								'product': e.currentTarget.dataset.id
							})
						})
					})
					
					if (callable){
						bigin.event("bg:recommend", {
							'name' : 'pv',
							'productList': productListData
						})
					}
				}
				
				if(iframeElemInnerDocument) {
					productList = iframeElemInnerDocument.querySelectorAll('.product-list li a')
				}
				if(productList.length !== 0) {
					triggerEvent(productList);
				}
			} catch(e) {}
		}
		
		function bgPastellyObserver(targetNode, iframeElem) {
			var config = {
				childList: true,
				subtree: true
			}
			
			var callback = function(mutationsList) {
				var i = 0
				
				while(i < mutationsList.length) {
					if (mutationsList[i].type === 'childList') {
						if(iframeElem) {
							triggerBiginRecommendEvent(iframeElem)
							observer.takeRecords()
							observer.disconnect()
							
							break;
						}
					}
					
					i++
				}
			}
			
			var observer = new MutationObserver(callback);
			
			observer.observe(targetNode, config);
			setTimeout(function() {
				observer.takeRecords();
				observer.disconnect();
			}, 10000);
		}
		
		window.addEventListener("load", function() {
			createBgBuffer()
			
			var iframeElementPc = document.querySelector('#bg-pastelly-detail-1-iframe')
			var iframeElementMobile = document.querySelector('#bg-pastelly-detail-2-iframe')
			
			var isExistIframe = !!iframeElementPc || !!iframeElementMobile
			
			if(isExistIframe) {
				triggerBiginRecommendEvent(iframeElementPc
											, (window.getComputedStyle(document.querySelector("#bg-pastelly-detail-1")).display
													=== 'block'))
				triggerBiginRecommendEvent(iframeElementMobile
											, (window.getComputedStyle(document.querySelector("#bg-pastelly-detail-2")).display
													=== 'block'))
			
			} else {
				var targetNodePc = document.querySelector('#bg-pastelly-detail-1')
				var iframeElemPc = document.querySelector('#bg-pastelly-detail-1-iframe')
				
				let targetNodeMobile = document.querySelector('#bg-pastelly-detail-2')
				var iframeElemMobile = document.querySelector('#bg-pastelly-detail-2-iframe')
				
				bgPastellyObserver(targetNodePc, iframeElemPc)
				bgPastellyObserver(targetNodeMobile, iframeElemMobile)
			}
			
			var productNo = iProductNo
			var productName = product_name
			var productPrice = Number(product_price.replace(/\D|\,/g, ''))
			var productQuantity = 1
			
			
			gtag_items.push({
				"id": productNo,
				
				"name": productName,
				
				"quantity": productQuantity,
				
				"price": productPrice
			})
			
			
			ga4_items.push({
				"item_id": productNo,
				
				"item_name": productName,
				
				"quantity": productQuantity,
				
				"price": productPrice
			})
			
			dataLayer.push({
				'event':'view_item',
				
				'ecommerce': {
					'currency': "KRW",
					
					'items' : ga4_items,
					
					'value': "{$product_price}".replace(/\D|\,/g,''),
					
					'detail': {
						'products': gtag_items
					}
				}
			})
		})
		
		document.querySelector('#actionCart').addEventListener('click',function() {
			dataLayer.push({
				'event': 'add_to_cart',
				
				'ecommerce': {
					'currencyCode': 'KRW',
					
					'add': {
						'products': gtag_items
					},
					
					'items' : ga4_items
				}
			})
		})
	</script>
	<!-- bigin recommend engine analyze sdk-->
</div>

<%@ include file = "mall_index_bottom.jsp" %>