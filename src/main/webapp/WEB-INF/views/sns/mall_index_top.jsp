<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Ezenat</title>
		<link rel = "stylesheet" type = "text/css" href = "resources/mall_client_general.css"/>
		<style>
			article, aside, details, figcaption, figure
			, footer, header, hgroup, menu, nav, section {
			    display: block;
			}
			
			/* start top.jsp*/
			header {
			    width: 100%;
			    position: fixed;
			    top: 0;
			    left: 0;
			    z-index: 20;
			}
			/* 
			
			
			
			
			 */
			/* PC */
			#p-header.menu-drop-open .header-menu-dropdown
			, #p-header.search-drop-open .header-search-dropdown {
			    opacity: 1;
			    height: auto;
			    visibility: visible;
			    padding: var(--layout-row-gap);
			}
			
			#p-header {
			    position: relative;
			}
			
			#main #p-header .header-top {
			    border-bottom: 0;
			    background-color: transparent;
			}
			
			#p-header .header-top {
			    display: flex;
			    justify-content: space-between;
			    align-items: center;
			    padding: 36px var(--layout-row-gap);
			    border-bottom: var(--border-set);
			    position: relative;
			    z-index: 6;
			    background-color: #fff;
			}
			
			#p-header .shop-cate, #p-header .my-cate {
			    position: relative;
			    z-index: 1;
			}
			
			#p-header .shop-cate, #p-header .shop-cate > ul {
			    display: flex;
			    align-items: center;
			}
			
			nav ul {
			    list-style: none;
			}
			
			@media only screen and (max-width: 1680px) {
				#p-header .shop-cate li {
				    margin-right: 1rem;
				}
			}
			
			#p-header .shop-cate li {
			    margin-right: 2rem;
			}
			
			#p-header a, #p-header li, #p-header i {
			    color: var(--color);
			}
			
			.color-change #p-header .header-top > [class*="-cate"] > ul > li > a
			, .color-change #p-header .header-top > [class*="-cate"] > ul > li > a i {
			    color: #fff;
			}
			
			#p-header a, #p-header li, #p-header i {
			    color: var(--color);
			}
			
			#p-header a {
			    font-size: calc(var(--font-size) + 2px);
			}
			
			#p-header .shop-cate .cate_sub {
			    display: none;
			}
			/* 
			
			
			
			
			 */
			#p-header .logo {
			    text-align: center;
			    position: absolute;
			    top: 26px;
			    left: 0;
			    width: 100%;
			    z-index: 0;
			}
			
			#p-header .logo a {
			    display: inline-block;
			}
			
			.header-down #p-header .logo svg {
			    fill: #000 !important;
			}
			
			.color-change #p-header .logo img {
			    fill: #fff;
			}
			
			#p-header .logo img {
				width : 150px;
				height : 50px;
			}
			/* 
			
			
			
			
			 */
			 #p-header .my-cate ul {
			    display: flex;
			    justify-content: flex-end;
			    align-items: center;
			}
			
			@media only screen and (max-width: 1680px) {
				#p-header .my-cate li {
				    margin-left: 1rem;
				}
			}
			
			#p-header .my-cate li {
			    margin-left: 2rem;
			}
			
			.header-down #p-header .header-top > [class*="-cate"] > ul > li > a
			, .header-down #p-header .header-top > [class*="-cate"] > ul > li > a i {
			    color: #000 !important;
			}
			
			#p-header .search-cate i {
			    font-size: calc(var(--font-size) + 5px);
			}
			
			/* .ti-search:before {
			    content: "\e610";
			} */
			/* 
			
			
			
			
			 */
			 #p-header .header-dropdown {
			    display: block;
			    opacity: 0;
			    height: 0;
			    visibility: hidden;
			    overflow: hidden;
			    position: relative;
			    z-index: 6;
			    top: 0;
			    left: 0;
			    width: 100%;
			    background-color: #fff;
			    padding: 0;
			}
			
			#p-header .header-dropdown::after {
			    content: "";
			    display: block;
			    width: 100%;
			    height: 1px;
			    background-color: #000;
			    position: absolute;
			    left: 0;
			    bottom: 0;
			}
			
			#p-header .header-menu-dropdown .hd-inside {
			    display: flex;
			}

			#p-header .header-menu-dropdown .hd-inside .hd-divide {
			    width: 50%;
			}
			
			#p-header .header-menu-dropdown .hd-inside .hd-divide.drop-cate-list {
			    width: 50%;
			    margin-right: auto;
			}

			#p-header .header-menu-dropdown .hd-inside .hd-divide.drop-cate-list li {
			    line-height: 2;
			}
			/* 
			
			
			
			
			 */
			#p-header .header-search-dropdown * {
			    font-size: var(--font-size);
			}
			
			#p-header .header-search-dropdown {
			    position: fixed;
			    top: 0;
			    right: 0;
			    width: 25%;
			    left: auto;
			    height: 100vh !important;
			    padding-top: 31px !important;
			    border-left: var(--border-set);
			}
			
			#p-header .header-search-dropdown .search-wrap {
			    position: relative;
			    width: 100%;
			    margin: 0 auto;
			}
			
			#p-header .header-search-dropdown .search-input-wrap {
			    position: relative;
			}

			#p-header .header-search-dropdown #keyword {
			    border: 0;
			    border-bottom: var(--border-set);
			    width: 100%;
			    margin: 0;
			    padding: 7px 0;
			    padding-right: 25px;
			    font-size: var(--font-size);
			}

			#p-header .header-search-dropdown .search-go {
			    position: absolute;
			    top: 6px;
			    right: 0;
			}

			#p-header .header-search-dropdown .search-go i {
			    font-size: calc(var(--font-size) + 5px);
			}

			.ti-search:before {
			    content: "\e610";
			}

			#p-header .header-search-dropdown .search-keyword {
			    margin-top: 20px;
			}

			#p-header .header-search-dropdown .xans-product-searchdata {
			    display: block !important;
			}

			#p-header .header-search-dropdown .search-keyword .heading {
			    display: block;
			    margin-bottom: 40px;
			}

			#p-header .header-search-dropdown .search-keyword ul.list {
			    display: flex;
			    flex-wrap: wrap;
			}

			#p-header .header-search-dropdown .search-keyword ul.list > li {
			    margin-bottom: 15px;
			    width: 50%;
			}
			/* 
			
			
			
			
			 */
			#p-header.menu-drop-open .header-dropdown-bg
			, #p-header.search-drop-open .header-dropdown-bg {
			    display: block;
			}
			
			#p-header .header-dropdown-bg {
			    display: none;
			    position: fixed;
			    top: 0;
			    left: 0;
			    width: 100vw;
			    height: 100vh;
			    z-index: 5;
			}
			/* 
			
			
			
			
			 */
			/* mobile */
			.mobile-content-hide {
			    display: block !important;
			}
			/* end top.jsp */
			/* 
			
			
			
			
			 */
			/* start index.jsp */
			body #layout-contents {
			    overflow: visible !important;
			    overflow-x: visible !important;
			    overflow-y: visible !important;
			}
			
			#main #layout-contents {
			    padding-top: 0!important;
			}
			
			#layout-contents.no-space {
			    padding-top: 0!important;
			}
			
			#layout-contents {
			    overflow: hidden;
			    padding-top: 90px;
			    padding-bottom: 355.344px;
			}
			/* end index.jsp */
			/* 
			
			
			
			
			 */
			/* start bottom.jsp */
			footer * {
			    color: var(--color);
			    letter-spacing: 0;
			    font-size: var(--font-size);
			}
			
			footer {
			    width: 100%;
			    text-align: left;
			    line-height: 1.5;
			    position: absolute;
			    bottom: 0;
			    left: 0;
			    float: left;
			    z-index: 0;
			    padding: 5rem 0;
			    background-color: #fff;
			    border-top: var(--border-set);
			}
			
			.layout-row {
			    width: 100%;
			    padding: 0 var(--layout-row-gap);
			    margin: 0 auto;
			    zoom: 1;
			}
			
			footer .footer-inside {
			    display: flex;
			    justify-content: space-between;
			}
			
			footer .footer-top, footer .footer-bottom {
			    width: 50%;
			}
			
			footer #footer-accordion {
			    display: flex;
			}
			
			footer .fbox, footer .company-info {
			    line-height: 1.8;
			}
			
			footer .fbox {
			    width: 25%;
			    padding-right: 25px;
			}
			
			.mobile-content-hide {
			    display: block !important;
			}
			
			footer .fbox h2 {
			    margin-bottom: 2rem;
			}
			
			.mobile-content-show {
			    display: none !important;
			}
			
			footer a {
			    display: inline-block;
			    position: relative;
			}
			
			footer .footer-bottom {
			    display: flex;
			    justify-content: flex-end;
			    padding: 0 6vw;
			}
			/* end bottom.jsp */
		</style>
	</head>
	
	<body>
		<header>
			<!-- <div>
				<a href = "index">◀ Index</a>
			</div>
			<br> -->
			
			<!--
				카테고리에 hover 시 menu-drop-open 클래스 추가
				검색 아이콘에 hover 시 search-drop-open 클래스 추가
			-->
			<div id="p-header" class="mobile-content-hide ">
				<nav class="header-top">
					<!-- 상품/컬렉션 카테고리는 관리자 > 상품 > 상품분류관리 > 분류관리에서 설정 -->
					<div class="shop-cate">
						<ul id="prd_cate" class="xans-element- xans-layout xans-layout-category prd_cate">
							<li id="cate772" class="xans-record- cate_li">
								<a href="/product/list.html?cate_no=779" cate="?cate_no=772">
									MEN
									<span></span>
								</a>
								
								<ul class="cate_sub cate772">
									<li class="cate_sub_li">
										<a href="/product/list.html?cate_no=779" cate="?cate_no=779">
											모두 보기
										</a>
									</li>
									
									<li class="cate_sub_li">
										<a href="/product/list.html?cate_no=775" cate="?cate_no=775">
											신상품
										</a>
										
										<ul class="cate_sub_child">
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=917" cate="?cate_no=917">
													니트 컬렉션
												</a>
											</li>
										</ul>
									</li>
									
									<li class="cate_sub_li">
										<a href="/product/list.html?cate_no=25" cate="?cate_no=25">
											아우터
										</a>
										
										<ul class="cate_sub_child">
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=32" cate="?cate_no=32">
													다운
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=33" cate="?cate_no=33">
													코트
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=69" cate="?cate_no=69">
													자켓
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=42" cate="?cate_no=42">
													플리스
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=43" cate="?cate_no=43">
													가디건
												</a>
											</li>
										</ul>
									</li>
									
									<li class="cate_sub_li">
										<a href="/product/list.html?cate_no=26" cate="?cate_no=26">
											상의
										</a>
										
										<ul class="cate_sub_child">
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=55" cate="?cate_no=55">
													반팔 티셔츠
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=56" cate="?cate_no=56">
													긴팔 티셔츠
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=52" cate="?cate_no=52">
													셔츠
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=54" cate="?cate_no=54">
													맨투맨
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=51" cate="?cate_no=51">
													후디
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=53" cate="?cate_no=53">
													니트
												</a>
											</li>
										</ul>
									</li>
									
									<li class="cate_sub_li">
										<a href="/product/list.html?cate_no=27" cate="?cate_no=27">
											하의
										</a>
										
										<ul class="cate_sub_child">
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=57" cate="?cate_no=57">
													데님
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=58" cate="?cate_no=58">
													팬츠
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=59" cate="?cate_no=59">
													쇼츠
												</a>
											</li>
										</ul>
									</li>
								</ul>
							</li>
							
							<li id="cate686" class="xans-record- cate_li">
								<a href="/product/list.html?cate_no=780" cate="?cate_no=686">
									WOMAN
									
									<span></span>
								</a>
							
								<ul class="cate_sub cate686">
									<li class="cate_sub_li">
										<a href="/product/list.html?cate_no=780" cate="?cate_no=780">
											모두 보기
										</a>
									</li>
									
									<li class="cate_sub_li">
										<a href="/product/list.html?cate_no=778" cate="?cate_no=778">
											신상품
										</a>
										
										<ul class="cate_sub_child">
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=915" cate="?cate_no=915">
													<font color="#000000">
														니트 컬렉션
													</font>
												</a>
											</li>
										</ul>
									</li>
									
									<li class="cate_sub_li">
										<a href="/product/list.html?cate_no=687" cate="?cate_no=687">
											아우터
										</a>
										
										<ul class="cate_sub_child">
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=875" cate="?cate_no=875">
													다운
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=876" cate="?cate_no=876">
													코트
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=877" cate="?cate_no=877">
													자켓
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=878" cate="?cate_no=878">
													가디건
												</a>
											</li>
										</ul>
									</li>
									
									<li class="cate_sub_li">
										<a href="/product/list.html?cate_no=688" cate="?cate_no=688">
											상의
										</a>
										
										<ul class="cate_sub_child">
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=882" cate="?cate_no=882">
													티셔츠
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=881" cate="?cate_no=881">
													셔츠
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=879" cate="?cate_no=879">
													맨투맨
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=880" cate="?cate_no=880">
													후디
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=888" cate="?cate_no=888">
													니트
												</a>
											</li>
										</ul>
									</li>
									
									<li class="cate_sub_li">
										<a href="/product/list.html?cate_no=689" cate="?cate_no=689">
											하의
										</a>
										
										<ul class="cate_sub_child">
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=883" cate="?cate_no=883">
													데님
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=884" cate="?cate_no=884">
													팬츠
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=885" cate="?cate_no=885">
													쇼츠
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=886" cate="?cate_no=886">
													스커트
												</a>
											</li>
										</ul>
									</li>
									
									<li class="cate_sub_li">
										<a href="/product/list.html?cate_no=690" cate="?cate_no=690">
											원피스
										</a>
									</li>
								</ul>
							</li>
							
							<li id="cate47" class="xans-record- cate_li">
								<a href="/product/list.html?cate_no=874" cate="?cate_no=47">
									ACC
									
									<span></span>
								</a>
								
								<ul class="cate_sub cate47">
									<li class="cate_sub_li">
										<a href="/product/list.html?cate_no=874" cate="?cate_no=874">
											모두 보기
										</a>
									</li>
									
									<li class="cate_sub_li">
										<a href="/product/list.html?cate_no=28" cate="?cate_no=28">
											모자
										</a>
										
										<ul class="cate_sub_child">
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=61" cate="?cate_no=61">
													볼캡
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=62" cate="?cate_no=62">
													버킷햇
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=63" cate="?cate_no=63">
													비니
												</a>
											</li>
										</ul>
									</li>
									
									<li class="cate_sub_li">
										<a href="/product/list.html?cate_no=44" cate="?cate_no=44">
											가방
										</a>
									
										<ul class="cate_sub_child">
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=64" cate="?cate_no=64">
													백팩
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=65" cate="?cate_no=65">
													크로스백
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=66" cate="?cate_no=66">
													토트백
												</a>
											</li>
										</ul>
									</li>
									
									<li class="cate_sub_li">
										<a href="/product/list.html?cate_no=173" cate="?cate_no=173">
											신발
										</a>
										
										<ul class="cate_sub_child">
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=200" cate="?cate_no=200">
													스니커즈
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=201" cate="?cate_no=201">
													슬라이드
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=202" cate="?cate_no=202">
													기타
												</a>
											</li>
										</ul>
									</li>
									
									<li class="cate_sub_li">
										<a href="/product/list.html?cate_no=774" cate="?cate_no=774">
											용품
										</a>
										
										<ul class="cate_sub_child">
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=243" cate="?cate_no=243">
													악세서리
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=242" cate="?cate_no=242">
													라이프
												</a>
											</li>
											
											<li class="cate_sub_child_li">
												<a href="/product/list.html?cate_no=244" cate="?cate_no=244">
													양말
												</a>
											</li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
					
						<ul>
							<li class="cate_li">
								<a href="#none">
									NEWS
								</a>
								
								<ul class="cate_sub">
									<li>
										<a href="/board/gallery/list.html?board_no=13">
											EVENT
										</a>
									</li>
									
									<li>
										<a href="/product/editorial-list.html?cate_no=835">
											EDITORIAL
										</a>
									</li>
									
									<li>
										<a href="/product/styling.html?cate_no=834">
											STYLING
										</a>
									</li>
								</ul>
							</li>
							
							<li class="cate_li">
								<a href="#none">
									COMMUNITY
								</a>
								
								<ul class="cate_sub">
									<li>
										<a href="/board/free/list.html?board_no=2">
											자주 묻는 질문
										</a>
									</li>
									
									<li>
										<a href="#none" onclick="ChannelIO('show')">
											챗봇문의
										</a>
									</li>
									
									<li>
										<a href="/board/free/list.html?board_no=1">
											공지사항
										</a>
									</li>
									
									<li>
										<a href="/board/product/list.html?board_no=4">
											제품 후기
										</a>
									</li>
									
									<!-- <li>
										<a href="/shopinfo/attend.html">
											출석체크
										</a>
									</li> -->
								</ul>
							</li>
						</ul>
					</div>
					
					<!-- 로고 이미지 및 링크 -->
					<div class="logo">
						<a href="mall_index.ezenat">
							<img alt="Error" src="resources/final_project_logo_ezenat_2.svg">
						</a>
					</div>
					
					<div class="my-cate">
						<ul>
							<li>
								<a href="/shopinfo/offline-store.html">
									STORE
								</a>
							</li>
							
							<li class="xans-element- xans-layout xans-layout-statelogoff ">
								<a href="#none" class="menu-slide-cate" data-link="/member/login-side.html?noMemberOrder&amp;returnUrl=%2Findex.html">
									LOGIN / JOIN
								</a>
							</li>
							
							<li>
								<a href="#none" class="menu-slide-cate" data-link="/myshop/index-side.html">
									MY PAGE
								</a>
							</li>
						
							<li class="cate-down-x cart-count">
								<a href="#none" data-link="/order/basket-side.html" class="xans-element- xans-layout xans-layout-statelogoff icon menu-slide-cate-iframe ">
									CART
									
									<span class="count EC-Layout_Basket-count-display">
										(
										
										<span class="EC-Layout-Basket-count">
											0
										</span>
										)
									</span>
								</a>
							</li>
							
							<li>
								<a href="#none" class="search-cate">
									검색
									<i class="ti ti-search"></i>
								</a>
							</li>
						</ul>
					</div>
				</nav>
				
				<!-- 카테고리 이름에 hover 하면 창이 나오는 부분 -->
				<div class="header-menu-dropdown header-dropdown">
					<div class="hd-inside">
						<div class="hd-divide drop-cate-list active">
						<!-- hover 할 때마다 cate_sub 뒤에 cate코드 클래스가 추가됌, news / community 는 카테코드 없음-->
						<ul class="cate_sub cate???">
							
						</ul>
						</div>
					</div>
				</div>
				
				<!-- 검색 아이콘에 hover 하면 창이 내려오는 부분 -->
				<div class="header-search-dropdown header-dropdown">
					<div class="search-wrap">
						<form id="searchBarForm" name="" action="/product/search.html" method="get" target="_self" enctype="multipart/form-data">
							<input id="banner_action" name="banner_action" value="" type="hidden">
							<div class="xans-element- xans-layout xans-layout-searchheader ">
								<!--
								
								
								$product_page=/product/detail.html
								
								-->
								<div class="searchheader-wrap color">
									<!-- 검색 기능 -->
									<div class="search-input-wrap">
										<input id="keyword" name="keyword" fw-filter="" fw-label="검색어" fw-msg="" class="inputTypeText" placeholder="" onmousedown="SEARCH_BANNER.clickSearchForm(this)" value="" type="text">
										
										<!-- 검색 아이콘 및 이동 -->
										<a href="#" onclick="SEARCH_BANNER.submitSearchBanner(this); return false;" class="search-go">
											<i class="ti ti-search"></i>
										</a>
									</div>
									
									<div class="search-keyword">
										<div style="display:none;" class="xans-element- xans-product xans-product-searchdata xans-record-">
											<form class="searchField" id="ec-product-searchdata-searchkeyword_form" action="/product/search.html" method="get">
												<div class="xans-element- xans-product xans-product-hotkeyword keywordArea">
													<strong class="heading">
														추천검색어
													</strong>
													
													<ul class="list">
														<li class="xans-record-">
															<a href="/product/search.html?
																	keyword=%EC%8B%A0%EC%83%81%ED%92%88&amp;
																	sort_method=">
																신상품
															</a>
														</li>
														
														<li class="xans-record-">
															<a href="/product/search.html?
																	keyword=%EC%9A%B0%EB%A8%BC&amp;
																	sort_method=">
																우먼
															</a>
														</li>
														
														<li class="xans-record-">
															<a href="/product/search.html?
																	keyword=2-PACK&amp;
																	sort_method=">
																2-PACK
															</a>
														</li>
														
														<li class="xans-record-">
															<a href="/product/search.html?
																	keyword=%ED%95%AB%EC%8D%B8%EB%A8%B8&amp;
																	sort_method=">
																핫썸머
															</a>
														</li>
														
														<li class="xans-record-">
															<a href="/product/search.html?
																	keyword=%EB%B0%98%ED%8C%94%ED%8B%B0&amp;
																	sort_method=">
																반팔티
															</a>
														</li>
														
														<li class="xans-record-">
															<a href="/product/search.html?
																	keyword=%ED%95%98%ED%94%84%EB%8B%88%ED%8A%B8&amp;
																	sort_method=">
																하프니트
															</a>
														</li>
														
														<li class="xans-record-">
															<a href="/product/search.html?
																	keyword=%ED%95%98%ED%94%84%EC%85%94%EC%B8%A0&amp;
																	sort_method=">
																하프셔츠
															</a>
														</li>
														
														<li class="xans-record-">
															<a href="/product/search.html?
																	keyword=%EB%AA%A8%EC%9E%90&amp;
																	sort_method=">
																모자
															</a>
														</li>
													</ul>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				
				<div class="header-dropdown-bg"></div>
			</div>
			
			<!-- drop 메뉴 open -->
			<script type="text/javascript">
			
				/* 카테고리 메뉴 드롭 오픈 */
				document.querySelector(".cate_li").addEventListener("mouseenter", function(){

					document.getElementById("p-header").classList.add("menu-drop-open")
				})
				
				document.querySelector(".cate_li").addEventListener("mouseleave", function(){

					document.getElementById("p-header").classList.remove("menu-drop-open")
				})
				/* 매뉴 드롭 끝 */
				
				/* 검색 아이콘 드롭 오픈 */
				document.querySelector(".search-cate").addEventListener("mouseenter", function(){

					document.getElementById("p-header").classList.add("search-drop-open")
				})
				
				document.querySelector(".header-search-dropdown").addEventListener("mouseleave", function(){

					document.getElementById("p-header").classList.remove("search-drop-open")
				})
				/* 검색 아이콘 드롭 끝 */
			</script>
		</header>
		
		
		
		<main id = "layout-contents">
		