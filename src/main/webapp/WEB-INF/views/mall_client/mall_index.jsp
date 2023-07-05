<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<%@ include file = "mall_index_top.jsp" %>
		<style>
			.best_product_slide, .styling_slide {
			    margin: 1rem 0 5rem 0;
			    padding: 0 calc(var(--layout-row-gap) * 2);
			    position: relative;
			}
			
			.best_product_slide.title {
			    text-align: left;
			}
			
			.best_product_slide.title, .best_product_slide.title * {
			    font-size: calc(var(--font-size) + 7px);
			}
			
			.title > * {
			    padding: 3rem 0;
			    text-transform: capitalize;
			}
			
			.title-h2 {
				font-size: revert;
				font-weight: revert;
			}
			
			.swiper {
				margin-bottom : 50px;
			}
			
			.swiper-button-prev, .swiper-button-next {
				color : #000;
			}
			
			
			
			
			
			
			
			.best_product_swiper .swiper-slide .text-info {
			    width: auto;
			    padding: 10px 0;
			    text-align: left;
			    position: relative;
			}
			
			.best_product_swiper .swiper-slide .name *, .best_product_swiper .swiper-slide .text-info * {
			    font-size: var(--font-size) !important;
			}
			
			.best_product_swiper .swiper-slide .name {
			    margin-top: 0;
			    margin-bottom: 0;
			    white-space: normal;
			}
			
			.best_product_swiper .swiper-slide a {
			    display: block;
			    position: relative;
			}
			
			.best_product_swiper .swiper-slide .name * {
			    word-break: keep-all;
			}
			
			.best_product_swiper .swiper-slide .text-info > ul > li[rel='판매가'] {
			    margin-right: 10px;
			}
			
			.best_product_swiper .swiper-slide .text-info > ul > li[rel='판매가']
			, .best_product_swiper .swiper-slide .text-info > ul > li[rel='할인판매가'] {
			    display: inline;
			}
			
			
			
			
			
			
			
			.styling_swiper .swiper-slide > img {
			    border-radius: 20px;
			}
			
			.carousel-item {
				height : 600px;
			}
		</style>
		
		<!-- main_slide -->
		<div class="carousel slide carousel-fade carousel-dark" id="carousel_main_silde_controls" data-bs-ride="carousel">
			<div class = "carousel-inner">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carousel_main_silde_controls" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carousel_main_silde_controls" data-bs-slide-to="1" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#carousel_main_silde_controls" data-bs-slide-to="2" aria-label="Slide 3"></button>
			
				</div>
				
				<div class = "carousel-item active" data-bs-interval="3500">
					<img src = "https://covernat.net/renewal/main/23_main_43.jpg" alt = "..." class = "d-block w-100 h-100">
				</div>
				
				<div class = "carousel-item" data-bs-interval="3500">
					<img src = "https://covernat.net/renewal/main/23_main_40_.jpg" alt = "..." class = "d-block w-100 h-100">
				</div>
				
				<div class = "carousel-item" data-bs-interval="3500">
					<img src = "https://covernat.net/renewal/main/23_main_37_.jpg" alt = "..." class = "d-block w-100 h-100">
				</div>
			</div>
			
			<button class="carousel-control-prev" type="button" data-bs-target="#carousel_main_silde_controls" data-bs-slide="prev">
			   <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			  <span class="visually-hidden">Previous</span>
			</button>
			
			<button class="carousel-control-next" type="button" data-bs-target="#carousel_main_silde_controls" data-bs-slide="next">
			  <span class="carousel-control-next-icon" aria-hidden="true"></span>
			  <span class="visually-hidden">Next</span>
			</button>
		</div>
		<!-- // main_slide -->
		
		<!-- best_product_slide -->
		<div class = "best_product_slide">
			<div class = "title">
				<h2 class = "title-h2">
					<span>
						<strong>BEST</strong>
					</span>
				</h2>
			</div>
		
			<!--buttons -->
			<div class="swiper-button-prev"></div>
			<div class="swiper-button-next"></div>
			
			<div class="swiper best_product_swiper">
				<div class="swiper-wrapper" style = "margin-bottom : 25px;">
					<div class="swiper-slide">
						<img src = "https://covernat.net/web/product/medium/202305/822a9e4f57a3e808742921110d42c3f4.jpg">
						
						<div class = "text-info">test</div>
					</div>
					
					<div class="swiper-slide">
						<img src = "https://covernat.net/web/product/small/202304/b576f28db95dfd7934ad16850cd95602.jpg">
						
						<div class = "text-info">test</div>
					</div>
					
					<div class="swiper-slide">
						<img src = "https://covernat.net/web/product/small/202304/24ae37408499f052abb1e4e3a92efc73.jpg">
						
						<div class = "text-info">test</div>
					</div>
					
					<div class="swiper-slide">
						<img src = "https://covernat.net/web/product/medium/202306/6fd0ebba3e88636cecaf0e1292b0a968.jpg">
						
						<div class = "text-info">test</div>
					</div>
					
					<div class="swiper-slide">
						<img src = "https://covernat.net/web/product/small/202306/359f2b3ea1874eb31d8b355b926b0818.jpg">
						
						<div class = "text-info">test</div>
					</div>
					
					<div class="swiper-slide">
						<img src = "https://covernat.net/web/product/medium/202305/89b7226aac00bcd1b9f61afba12fda9a.jpg">
						
						<div class = "text-info">test</div>
					</div>
					
					<div class="swiper-slide">
						<img src = "https://covernat.net/web/product/small/202305/61df93e614b93dfe0e4830a87ca9c1ed.jpg">
						
						<div class = "text-info">test</div>
					</div>
					
					<div class="swiper-slide">
						<img src = "https://covernat.net/web/product/small/202305/8b9dfa749335e82d7f6b31fba5970e3d.jpg">
						
						<div class = "text-info">
							<div class="name ">
								<a href="/product/detail.html?product_no=2892&amp;cate_no=1&amp;display_group=2"
									name="anchorBoxName_2892">
									<span style="font-size:16px;color:#000000;">
										C 로고 티셔츠 블랙
									</span>
								</a>
								
								<span class="srn-icon"></span>                                        
							</div>
							
							<ul class="xans-element- xans-product xans-product-listitem-1 xans-product-listitem xans-product-1">
								<li rel="판매가" class=" xans-record-">
									<span style="font-size:15px;color:#595858;text-decoration:line-through;">
										39,000원
									</span>
									
									<span id="span_product_tax_type_text" style="text-decoration:line-through;"></span>
								</li>
								
								<li rel="할인판매가" class=" xans-record-">
									<span style="font-size:15px;color:#000000;">
										35,100원 
										
										<span style="font-size:12px;color:#000000;">
											10%
										</span>
									</span>
								</li>
							</ul>
						</div>
					</div>
					
					<div class="swiper-slide">
						<img src = "https://covernat.net/web/product/medium/202305/3b2939cb5157d7594e9f2b847048c010.jpg">
						
						<div class = "text-info">test</div>
					</div>
					
					<div class="swiper-slide">
						<img src = "https://covernat.net/web/product/small/202304/ed9a5f49407f0d95b78e0fd16c378472.jpg">
						
						<div class = "text-info">test</div>
					</div>
					
					<div class="swiper-slide">
						<img src = "https://covernat.net/web/product/medium/202306/2d9907894afcc91bba2f97c5c6dd3e9e.png">
						
						<div class = "text-info">test</div>
					</div>
					
					<div class="swiper-slide">
						<img src = "https://covernat.net/web/product/small/202305/7503d0078419e8c58554875fc2423f1c.jpg">
						
						<div class = "text-info">test</div>
					</div>
					
					<div class="swiper-slide">
						<img src = "https://covernat.net/web/product/medium/202305/34ff4514a6cfe2824b36106b37aeb6cc.jpg">
						
						<div class = "text-info">test</div>
					</div>
					
					<div class="swiper-slide">
						<img src = "https://covernat.net/web/product/medium/202305/99d0dcf9ee09558a32026cccbee32af9.jpg">
						
						<div class = "text-info">test</div>
					</div>
					
					<div class="swiper-slide">
						<img src = "https://covernat.net/web/product/medium/202305/c99f2b9c8dd5eccdf080ae50275babaf.jpg">
						
						<div class = "text-info">test</div>
					</div>
				</div>
				
				<!--pagination -->
				<div class="swiper-pagination"></div>
				
				
				<!--scrollbar -->
				<!-- <div class="swiper-scrollbar"></div> -->
				
				<script type="text/javascript">
					var slide = new Swiper('.best_product_swiper', {
						slidesPerView: '1', // 한 슬라이드에 보여줄 갯수
						
						spaceBetween: 6, // 슬라이드 사이 여백
						
						loop: false, // 슬라이드 반복 여부
						
						pagination: true, // pager 여부
						
						autoplay: { // 자동 슬라이드 설정 
							delay: 3000, // 시간 설정
							disableOnInteraction: false, // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
						},
						
						navigation: { // 버튼 사용자 지정
							nextEl: '.swiper-button-next',
							prevEl: '.swiper-button-prev',
						},
						
						breakpoints: { //반응형
							// 화면의 넓이가 320px 이상일 때
							320: {
								slidesPerView: 2,
								spaceBetween: 20
							},
							
							// 화면의 넓이가 640px 이상일 때
							1000: {
								slidesPerView: 7,
								spaceBetween: 40
							}
						}
					})
				</script>
			</div>
		</div>
		<!-- // best_product_slide -->
		
		<!-- styling(sns)_slide -->
		<div class = "styling_slide">
			<div class = "title">
				<h2 class = "title-h2">
					<span>
						<strong>STYLING </strong>+
					</span>
				</h2>
			</div>
			
			<div class="swiper styling_swiper">
				<div class="swiper-wrapper" style = "margin-bottom : 45px;">
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_376.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_374.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_373.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_375.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_377.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_371.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_369.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_368.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_372.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_370.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_365.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_363.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_367.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_366.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_356.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_343.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_341.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_340.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_358.jpg"></div>
					<div class="swiper-slide"><img src = "https://covernat.net/renewal/styling_new/styling_333.jpg"></div>	
				</div>
				
				<!--pagination -->
				<div class="swiper-pagination"></div>
				
				
				<!--scrollbar -->
				<div class="swiper-scrollbar"></div>
				
				<script type="text/javascript">
					var slide = new Swiper('.styling_swiper', {
						slidesPerView: '1', // 한 슬라이드에 보여줄 갯수
						
						spaceBetween: 6, // 슬라이드 사이 여백
						
						loop: false, // 슬라이드 반복 여부
						
						pagination: true, // pager 여부
						
						autoplay: { // 자동 슬라이드 설정 
							delay: 3000, // 시간 설정
							disableOnInteraction: false, // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
						},
						
						breakpoints: { //반응형
							// 화면의 넓이가 320px 이상일 때
							320: {
								slidesPerView: 1,
								spaceBetween: 20
							},
							
							// 화면의 넓이가 640px 이상일 때
							1000: {
								slidesPerView: 4,
								spaceBetween: 40
							}
						},
						
						slideToClickedSlide : true, // 해당 슬라이드 클릭시 슬라이드 위치로 이동 
						
						scrollbar: {
					        el: '.swiper-scrollbar',
					      },
					})
				</script>
			</div>
		</div>
		<!-- // styling(sns)_slide -->
		
<%@ include file = "mall_index_bottom.jsp" %>