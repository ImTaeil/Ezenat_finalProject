<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name ="google-signin-client_id"
				content="169912139577-bmjf68a07rbn0si5pghnngmqvu9itbuc.apps.googleusercontent.com">	
		
		<link rel = "stylesheet" type = "text/css" href = "https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
		<link rel = "stylesheet" href = "https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
		<link rel = "stylesheet" type = "text/css" href = "resources/css/mall_client_general.css"/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/css/bootstrap-datepicker3.min.css">
		
		<script src = "https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
		<script src = "https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>	<!-- swal.fire 쓰려고 -->
		<script src = "http://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/js/bootstrap-datepicker.min.js"></script> <!-- jquery 가 선 로딩되어야 함 -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/locales/bootstrap-datepicker.ko.min.js"></script> <!-- 한국어 버전 추가 로드 -->
		
		<title>Ezenat</title>
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
			 #p-header .my-cate .my-cate-ul {
			    display: flex;
			    justify-content: flex-end;
			    align-items: center;
			}
			
			@media only screen and (max-width: 1680px) {
				#p-header .my-cate .my-cate-ul > li {
				    margin-left: 1rem;
				}
			}
			
			#p-header .my-cate .my-cate-ul > li {
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

			/* .ti-search:before {
			    content: "\e610";
			} */

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
			
			#login-join_offcanvas, #mypage_offcanvas {
			    width: 500px;
			}
			
			/* #login-join_offcanvas input, select, textarea, .agree, .btn, .s-btn { */
			#login-join_offcanvas input {
				letter-spacing: 0;
			    font-family: inherit;
			    font-size: inherit;
			    font-weight: normal;
			    color: var(--color);
			    background-color: transparent;
			    border: var(--border-width) solid var(--border-color);
			    vertical-align: middle;
			    line-height: 1.42857;
			    border-radius: 0;
			    outline: 0;
			    -webkit-appearance: none;
			    appearance: none;
			    -webkit-transition: border 300ms ease;
			    -moz-transition: border 300ms ease;
			    -ms-transition: border 300ms ease;
			    -o-transition: border 300ms ease;
			    transition: border 300ms ease;
			}
			
			#login-join_offcanvas input {
			    padding: 13px 10px;
			    height: var(--input-height);
			    border: var(--border-width) solid var(--input-border-color);
			    border-radius: var(--border-radius);
			}
			
			.offcanvas-header {
				padding : 25px;
			}
			
			#login-join_offcanvas .offcanvas-header .tabs-menu {
			    margin: 0;
			    /* padding: 25px; */
			    display: flex;
			}
			
			#login-join_offcanvas .offcanvas-header .tabs-menu > li {
			    margin-right: 1rem;
			}
			
			#login-join_offcanvas .offcanvas-header .tabs-menu > li.selected a {
			    color: var(--color);
			}
			
			#login-join_offcanvas .offcanvas-header .tabs-menu > li > a {
			    font-size: calc(var(--font-size) + 4px);
			    color: var(--sub-color);
			    font-weight: bold;
			}
			
			.offcanvas-body {
				padding : 0 25px;
			}
			
			#login-join_offcanvas_label {
			    font-size: calc(var(--font-size) + 4px);
			    color: var(--color);
			    font-weight: bold;
			}
			
			.login-section {
			    width: 100%;
			    max-width : 500px;
			    text-align: center;
			    margin: 0 auto;
			    padding: 0 0 50px 0;
			    overflow: hidden;
			}
			
			.login-section form {
			    display: inline;
			}
			
			.tab-contents.show {
			    display: block !important;
			}
			
			.tab-contents {
			    display: none;
			    line-height: 1.8;
			    font-size: inherit;
			    color: inherit;
			    word-break: keep-all;
			}

			.login-wrap {
			    display: inline-block;
			    float: left;
			    text-align: left;
			    width: 100%;
			    margin-right: 0;
			    padding: 0;
			    box-sizing: border-box;
			    vertical-align: top;
			}
			
			.login-wrap label {
			    display: block;
			    margin: 0 0 10px 0;
			}
			
			.login-wrap input {
			    width: 100%;
			}
			
			.login-wrap .login .login-find-section {
			    display: flex;
			    justify-content: space-between;
			    margin-bottom: 10px;
			}
			
			.login-wrap .login ul.findInfo {
			    text-align: right;
			}
			
			.login-wrap .login ul.findInfo li {
			    display: inline-block;
			    margin: 0;
			}
			
			.login-wrap .login ul.findInfo li a {
			    font-size: var(--font-size);
			    color: var(--color);
			}
			
			.login-wrap .login .btnArea {
			    display: flex;
			    margin: 0 -4px;
			    margin-bottom: 30px;
			}
			
			.login-wrap .login .btnArea .btn {
			    margin: 0 4px;
			    width: 50%;
			}
			
			.login-wrap .snsArea {
			    width: 100%;
			    float: left;
			    margin: 0 auto;
			}
			
			.login-wrap .snsArea-inner {
			    margin: 0;
			}
			
			.login-wrap .snsArea-inner a {
			    font-weight: bold;
			}
			
			.login-wrap .snsArea-inner .btnNaver {
			    color: #ffffff !important;
				background-color: #00ca30 !important;
			}
			.login-wrap .snsArea-inner .btnNaver {
			    color: #ffffff !important;
				background-color: #00ca30 !important;
			}
			
			.login-wrap .snsArea-inner .btnNaver img {
				filter: invert(100%) sepia(0%) saturate(0%)
						hue-rotate(192deg) brightness(102%) contrast(105%);
			}
			
			.login-wrap .snsArea-inner .btnKakao {
				background-color: #FEE500 !important;
			}
			
			.login-wrap .snsArea-inner .btnGoogle {
			    color: #ffffff !important;
				background-color: #F13F31 !important;
			}
			
			.login-wrap .snsArea-inner .btnGoogle img {
				filter: invert(100%) sepia(0%) saturate(0%)
						hue-rotate(192deg) brightness(102%) contrast(105%);
			}
			
			.login-wrap .snsArea li {
			    float: left;
			    display: block;
			    width: 100%;
			    padding: 0;
			}
			
			.login-wrap .snsArea li a.btn {
			    justify-content: center;
			    align-items: center;
			    padding: 0 1rem;
			    line-height: 44px;
			    letter-spacing: 0;
			    width: 100%;
			    text-align: center;
			    margin-bottom: 10px;
			    margin-right: 0;
			    margin-left: 0;
			    color: #000;
			    background-color: #fff;
			    border-color: var(--sub-border-color);
			}
			
			.login-wrap .snsArea li img {
			    /* height: 16px;
			    position: absolute;
			    top: 16px;
			    left: 35%; */
			    
			    height: 21px;
			    position: absolute;
			    top: 14px;
			    left: 4%;
			    padding-right: 15px;
			    border-right: var(--border-width) solid var(--border-color);
			    border-: 10px;
			}
			
			[class^='btn'] img {
			    margin: -2px 1px 0;
			    vertical-align: middle;
			}
			
			#login-join_offcanvas .nonmember-section {
			    float: left;
			    width: 100%;
			}
			
			.nonmember-section {
			    display: inline-block;
			    text-align: left;
			    line-height: 1.5;
			    width: 100%;
			    padding: 0;
			    box-sizing: border-box;
			    vertical-align: top;
			}
			
			.nonmember-login-warp {
			    overflow: hidden;
			    position: relative;
			    width: 100%;
			    float: left;
			}
			
			#login-join_offcanvas .nonmember-login-warp .nonmember {
			    margin-top: 0;
			}
			
			.nonmember-login-warp .nonmember h3 {
				font-weight: revert;
			}
			
			.nonmember-login-warp .nonmember p {
				font-weight: bold;
			}
			
			.nonmember-login-warp .nonmember input {
			    width: 100%;
			    margin: 10px 0;
			}
			
			.nonmember-login-warp .nonmember li span {
			    display: block;
			}
			
			.nonmember-login-warp .nonmember .number input {
			    width: 100% !important;
			}
			
			.nonmember-section .s-btn {
			    margin-top: 7px;
			    width: 100%;
			}
			
			.nonmember-login-warp .nonmember .impact {
			    text-align: left;
			    margin: 10px 0 0;
			    width: 100%;
			    float: left;
			}
			
			.mypage-contents {
			    width: 100%;
			    max-width: 1200px;
			    margin: 0 auto;
			    zoom: 1;
			}
			/* 최적화 ...편집 안하고 그냥 씀 */
			.xans-myshop-orderstate {
			    margin: 0 0 10px 0;
			    border: var(--border-width) solid var(--border-color);
			    position: relative;
			}
			
			.xans-myshop-orderstate .orderstate-cover {
			    position: absolute;
			    top: 0;
			    left: 0;
			    width: 100%;
			    height: 100%;
			}
			
			.xans-myshop-orderstate .orderstate-cover > div {
			    display: table;
			    width: 100%;
			    height: 100%;
			    text-align: center;
			}
			
			.xans-myshop-orderstate .orderstate-cover > div > p {
			    display: table-cell;
			    vertical-align: middle;
			    font-size: 12px;
			    position: relative;
			    z-index: 1;
			}
			
			.xans-myshop-orderstate .orderstate-cover::after {
			    content: "";
			    position: absolute;
			    top: 0;
			    left: 0;
			    right: 0;
			    bottom: 0;
			    background-color: var(--background-color);
			    opacity: 0.9;
			    z-index: 0;
			}
			
			.xans-myshop-orderstate .title {
			    padding: 10px;
			    margin: 0;
			    border-bottom: var(--border-width) solid var(--border-color);
			}
			
			.xans-myshop-orderstate .title h3 {
			    padding: 0;
			    font-size: 12px;
			}
			
			.xans-myshop-orderstate .desc {
			    padding: 0 0 0 4px;
			    font-weight: normal;
			    font-size: var(--font-size);
			    color: var(--color);
			}
			
			.xans-myshop-orderstate .desc em {
			    color: var(--color);
			    font-style: normal;
			}
			
			.xans-myshop-orderstate .state {
			    overflow: hidden;
			}
			
			.xans-myshop-orderstate .order {
			    overflow: hidden;
			    padding: 0;
			}
			
			.xans-myshop-orderstate .order li:first-child {
			    border-left: 0;
			}
			
			.xans-myshop-orderstate .order li {
			    float: left;
			    width: 25%;
			    padding: 10px 0;
			    margin: 0 0 0 -1px;
			    border-left: var(--border-width) solid var(--border-color);
			    text-align: center;
			}
			
			.xans-myshop-orderstate .order li a {
			    display: block;
			}
			
			.xans-myshop-orderstate .order li strong {
			    display: block;
			    margin: 1px 0 13px;
			    font-weight: normal;
			    font-size: 12px;
			}
			
			.xans-myshop-orderstate .order .count {
			    font-weight: bold;
			    font-size: 15px;
			    color: var(--color);
			}
			
			.xans-myshop-orderstate .cs {
			    overflow: hidden;
			    border-top: var(--border-width) solid var(--border-color);
			}
			
			.xans-myshop-orderstate .cs li {
			    overflow: hidden;
			    float: left;
			    width: 33.3%;
			    margin: 0 0 0 -1px;
			    border-left: var(--border-width) solid var(--border-color);
			    font-size: 12px;
			}
			
			.xans-myshop-orderstate .cs li a {
			    display: block;
			    padding: 10px 0;
			}
			
			.xans-myshop-orderstate .cs .icoDot {
			    display: inline-block;
			    width: 2px;
			    height: 2px;
			    margin: 6px 0 0 12px;
			    vertical-align: top;
			}
			
			.xans-myshop-orderstate .cs strong {
			    font-weight: normal;
			}
			
			.xans-myshop-orderstate .cs .count {
			    float: right;
			    margin: 0 15px 0 0;
			    font-weight: bold;
			    color: var(--color);
			}
			
			#shopMain {
			    line-height: 1.8em;
			    padding-bottom: 50px;
			    overflow: hidden;
			    margin: 0 -1.5%;
			}
			
			#shopMain a {
			    margin: 0;
			    padding: 1.5%;
			    position: relative;
			    text-align: center;
			    float: left;
			    width: 50%;
			    font-size: 10px;
			}
			
			#shopMain .shopMain {
			    height: auto;
			    padding: 10px 0;
			    border: var(--border-width) solid var(--border-color);
			    transition: var(--btn-transition);
			}
			
			#shopMain .shopMain div {
			    padding: 0 0 5px;
			    font-size: 12px;
			}
			
			#shopMain .shopMain div strong {
			    display: none;
			    margin: 0;
			    font-weight: normal;
			}
			
			#shopMain .shopMain div span {
			    display: block;
			}
			
			#shopMain .shopMain p {
			    display: none;
			}
			
			#shopMain .shopMain img {
			    display: block;
			    margin: 0 auto;
			    width: 22px;
			    mix-blend-mode: multiply;
			}
			/* // 최적화 ...편집 안하고 그냥 씀 */
			/* 
			
			
			
			
			 */
			/* mobile */
			.mobile-content-hide {
			    display: block !important;
			}
			/* end top.jsp */
			/* 
			
			
			
			
			 */
			/* start main.jsp */
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
/* 			    padding-bottom: 355.344px; */
			}
			
			
			/* end main.jsp */
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
			
			.displaynone {
				display: none;
			}
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
								<a href="mall_product_list.ezenat?cate_no=874" cate="?cate_no=47">
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
							<img alt="Error" src="resources/images/final_project_logo_ezenat_2.svg">
						</a>
					</div>
					
					<div class="my-cate">
						<ul class = "my-cate-ul">
							<li>
								<a href="/shopinfo/offline-store.html">
									STORE
								</a>
							</li>
							
							<li class="xans-element- xans-layout xans-layout-statelogoff ">
								<c:if test="${ empty memInfo }">
									<!-- <a href="mall_member_join.ezenat" class="menu-slide-cate" data-link="/member/login-side.html?noMemberOrder&amp;returnUrl=%2Findex.html">
										LOGIN / JOIN
									</a> -->
									
									<!-- LOGIN / LOGOUT 오프 캔버스 -->
									<a class="btn-primary" id = "login-join-btn" data-bs-toggle="offcanvas"
										href="#login-join_offcanvas" aria-controls="login-join_offcanvas">
											LOGIN / JOIN
									</a>
									
									<div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="login-join_offcanvas" aria-labelledby="login-join_offcanvas_label">
										<div class="offcanvas-header">
											<!-- <span class="offcanvas-title" id="login-join_offcanvas_label">로그인</span> -->
											
											<ul class="tabs-menu">
												<li class="tab-login selected">
													<a href="#none">로그인</a>
												</li>
												
												<li class = "tab-nonmember">
													<a href="#none">비회원 주문조회</a>
												</li>
											</ul>
											
											<button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
										</div>
										
										<!-- canvas body -->
										<div class="offcanvas-body">
											<div class = "tab-contents tab-contents-login show">
											
												<!-- login-section, 회원 로그인 -->
												<div class = "login-section">
													<form id="client_login_form" name="client_login_form" action="mall_client_login.ezenat" method="post" target="_self" enctype="multipart/form-data">
														<!-- hidden input -->
														<input id="returnUrl" name="returnUrl" value="/" type="hidden">
														<input id="forbidIpUrl" name="forbidIpUrl" value="/" type="hidden">
														<input id="certificationUrl" name="certificationUrl" value="/intro/adult_certification.html?returnUrl=%2Findex.html" type="hidden">
														<input id="sIsSnsCheckid" name="sIsSnsCheckid" value="" type="hidden">
														<input id="sProvider" name="sProvider" value="" type="hidden">
														<!-- // hidden input -->
														
														<div class="xans-element- xans-member xans-member-login login-wrap ">
															<div class="login">
																<!--<h3>Sign in</h3>--> 
																<fieldset>
																	<label class="id">
																		<input id="member_id" name="member_id" fw-filter="isFill" fw-label="아이디" fw-msg=""
																				class="inputTypeText" placeholder="ID" value="" type="text">
																	</label>
																	
																	<label class="password">
																		<input id="member_password" name="member_password"
																				fw-filter="isFill&amp;isMin[4]&amp;isMax[16]" fw-label="패스워드" fw-msg=""
																				autocomplete="off" value="" type="password" placeholder="PW">
																	</label>
																	
																	<div class="login-find-section">
																		<p class="security"></p>
																		
																		<ul class="findInfo">
																			<li><a href="find_id.do">아이디 찾기</a> / </li>
																			<li><a href="find_pw.do">비밀번호 찾기</a></li>
																		</ul>
																	</div>    
																</fieldset>
																
																<div class="btnArea">
																	<a class="btn s-btn " href="#none" 
																		onclick = "javascript:loginCheck()">
																		<!-- onclick="MemberAction.login('member_form_3598761593'); return false;"> -->
																			<span>로그인</span>
																	</a>
																	
																	<a class="btn" href = "mall_member_join.ezenat">
																		<span>회원가입</span>
																	</a>
																</div>    
																
																<div class="snsArea">
																	<div class="snsArea-inner">
																		<ul>
																			<li>
																				<a href="#none" class="btn btnNaver " onclick="MemberAction.snsLogin('naver', '%2Findex.html')">
																					<img src="resources/images/naver_icon.svg"> 네이버 계정으로 로그인
																				</a>
																			</li>
																			
																			<li>
																				<!-- <a href="#none" class="btn btnKakao " onclick="MemberAction.kakaosyncLogin('1e942db70ee728223e6d3117ce9e1d0a')"> -->
																				<a href="https://kauth.kakao.com/oauth/authorize?client_id=f25838346653fc8e34caa142400e5c89&redirect_uri=http://localhost:8081/ezenat/kakaoLogin&response_type=code"
																					class="btn btnKakao ">
																					<img src="resources/images/kakao_icon.svg"> 카카오 계정으로 로그인
																				</a>
																			</li>
																				
																			<li class = "displaynone">
																				<a href="#none" class="btn btnLine displaynone" onclick="">
																					<img src=""> 라인 로그인
																				</a>
																			</li>
																			               
																			<li class = "displaynone">
																				<a href="#none" class="btn btnFacebook displaynone" onclick="">
																					<img src=""> 페이스북 로그인
																				</a>
																			</li>
																				
																			<li>
																				<!-- <a href="#none" class="btn btnGoogle " onclick="MemberAction.snsLogin('googleplus', '%2Findex.html')"> -->
																				<a href="#none" class="btn btnGoogle" id = "btnGoogle">
																					<!-- <img src="resources/images/google_icon2.svg"> -->
																					<img src="resources/images/google_icon.svg"> 구글 계정으로 로그인
																				</a>
																			</li>
																				
																			<li class = "displaynone">
																				<a href="#none" class="btn btnApple displaynone" onclick="">
																					<img src=""> 애플 로그인
																				</a>
																			</li>     
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</form>
												</div>
												<!-- // login-section, 회원 로그인 -->
											</div>
											
											<div class = "tab-contents tab-contents-nonmember">
											
												<!-- nonmember-section, 비회원 주문 조회 -->
												<div class = "nonmember-section">
													<form id="nonmember_login_form" name="" action=""
															method="POST" target="_self" enctype="multipart/form-data">
														<input id="order_detail_url" name="order_detail_url" value="/myshop/order/detail.html" type="hidden">	
														
														<div class="nonmember-login-warp ">
															<div class="nonmember">  
																<h3>비회원 주문조회</h3>
																<!-- $orderDetailUrl = /myshop/order/detail.html -->
																<ul>
																	<li>
																		<input id="nonmember_order_name" name="nonmember_order_name"
																				class="inputTypeText" placeholder="주문자명" value="" type="text">
																	</li>
																	
																	<li class="number">
																		<span class="dash-fix">
																			<input id="nonmember_order_code" name="nonmember_order_code" maxlength="18"
																					value="" type="text" placeholder="주문번호" title="주문번호">
																		</span>
																	</li>
																	
																	<li>
																		<input id="nonmember_order_password" name="nonmember_order_password"
																				value="" type="password" placeholder="비회원주문 비밀번호">
																	</li>
																</ul>
																
																<button type="submit" value="주문조회" class="btn s-btn role-button role-button-2">
																	<span>주문조회</span>
																</button>
																
																<p class = "impact">
																	*비회원의 경우, 주문 시의 주문번호로 주문조회가 가능합니다.
																</p>
															</div>
														</div>
													</form>
												</div>
												<!-- // nonmember-section, 비회원 주문 조회 -->
											</div>
										</div>
										<!-- // canvas body -->
									</div>
									<!-- // LOGIN / LOGOUT 오프 캔버스 -->
								</c:if>
								
								<c:if test="${ not empty memInfo }">
									<a href="mall_client_logout.ezenat" class="menu-slide-cate" data-link="/member/login-side.html?noMemberOrder&amp;returnUrl=%2Findex.html">
										LOGOUT
									</a>
								</c:if>
							</li>
							
							<li>
								<!-- <a href="#none" class="menu-slide-cate" data-link="/myshop/index-side.html">
									MY PAGE
								</a> -->
								
								<!-- MY PAGE 오프 캔버스 -->
								<a class="btn-primary" data-bs-toggle="offcanvas"
									href="#mypage_offcanvas" aria-controls="mypage_offcanvas">
										MY PAGE
								</a>
								
								<div class="offcanvas offcanvas-end" data-bs-scroll="true" tabindex="-1" id="mypage_offcanvas" aria-labelledby="mypage_offcanvas_label">
									<div class="offcanvas-header">
										<h2><span class="offcanvas-title" id="mypage_offcanvas_label">MY PAGE</span></h2>	
										
										<button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
									</div>
									
									<!-- canvas body -->
									<div class="offcanvas-body">
										<div class = "mypage-contents">
											<div class = "mypage-section">
												<div class="mypage-wrap">
												
													<!--logon-->      
													<!--logoff-->
													<div class="xans-element- xans-layout xans-layout-statelogoff ">
														<div class="xans-element- xans-myshop xans-myshop-orderstate">
															<c:if test="${ empty memInfo }">
																<a href="mall_client_login.ezenat">	
																	<div class="orderstate-cover">
																		<div>
																			<p>
																				회원 로그인 시 주문처리 현황을 확인하실 수 있습니다.
																				<br>
																				<small>(클릭 시 비회원 주문조회가 가능합니다.)</small>  
																			</p>
																		</div>
																	</div>
																</a>
															</c:if>
															
															<div class="title">
																<h3>나의 주문처리 현황 
																	<span class="desc">
																		(최근 <em>3개월</em> 기준)
																	</span>
																</h3>
															</div>
															
															<div class="state">
																<ul class="order">
																	<li>
																		<a href="#none">
																			<strong>입금전</strong>
																			
																			<span class="count">0</span>
																		</a>
																	</li>
																	
																	<li>
																		<a href="#none">
																			<strong>배송준비중</strong>
																			
																			<span class="count">0</span>
																		</a>
																	</li>
																	
																	<li>
																		<a href="#none">
																			<strong>배송중</strong>
																			
																			<span class="count">0</span>
																		</a>
																	</li>
																	
																	<li>
																		<a href="#none">
																			<strong>배송완료</strong>
																			
																			<span class="count">0</span>
																		</a>
																	</li>
																</ul>
																
																<ul class="cs">
																	<li>
																		<a href="#none">
																			<span class="icoDot"></span>
																			
																			<strong>취소 : </strong>
																			
																			<span class="count">0</span>
																		</a>
																	</li>
																	
																	<li>
																		<a href="#none">
																			<span class="icoDot"></span>
																			
																			<strong>교환 : </strong>
																			
																			<span class="count">0</span>
																		</a>
																	</li>
																	
																	<li>
																		<a href="#none">
																			<span class="icoDot"></span>
																			
																			<strong>반품 : </strong>
																			
																			<span class="count">0</span>
																		</a>
																	</li>
																</ul>
															</div>
														</div>
													</div>
													
													<div id="shopMain">
														<a href="/myshop/order/list.html">
															<div class="shopMain order">
																<div>
																	<strong>Order</strong>
																	<span>주문조회</span>
																</div>
																
																<span><img src="resources/images/my_page_order_breakdown_icon.svg"></span>
															</div>
														</a>
														
														<a href="/member/modify.html">
															<div class="shopMain profile">
																<div>
																	<strong>Profile</strong>
																	<span>회원정보</span>
																</div>
																
																<span><img src="resources/images/my_page_information_icon.svg"></span>
															</div>
														</a>
														
														<a href="/myshop/mileage/historyList.html">
															<div class="shopMain mileage">
																<div>
																	<strong>Mileage</strong>
																	<span>적립금</span>
																</div>
																
																<span><img src="resources/images/my_page_saved_money_icon.svg"></span>
															</div>
														</a>
														
														<a href="/myshop/coupon/coupon.html">
															<div class="shopMain coupon">
																<div>
																	<strong>Coupon</strong>
																	<span>쿠폰</span>
																</div>
																
																<span><img src="resources/images/my_page_coupon_icon.svg"></span>
															</div>
														</a>
														
														<a href="/myshop/board_list.html">
															<div class="shopMain board">
																<div>
																	<strong>Board</strong>
																	<span>내게시물</span>
																</div>
																
																<span><img src="resources/images/my_page_notice_icon.svg"></span>
															</div>
														</a>
														
														<a href="/myshop/addr/list.html">
															<div class="shopMain address">
																<div>
																	<strong>Address</strong>
																	<span>배송주소록</span>
																</div>
																
																<span><img src="resources/images/my_page_delivery_address_directory_icon.svg"></span>
															</div>
														</a>
														
														<a href="/shopinfo/membership.html">
															<div class="shopMain address">
																<div>
																	<strong>Membership</strong>
																	<span>멤버십</span>
																</div>
																
																<span><img src="resources/images/my_page_membership_icon.svg"></span>
															</div>
														</a>
														
														<a href="/shopinfo/attend.html">
															<div class="shopMain wishlist">
																<div>
																	<strong>출석체크</strong>
																	<span>출석체크</span>
																</div>
																
																<span><img src="resources/images/my_page_check_attendance_icon.svg"></span>
															</div>
														</a>
													</div>
													
												</div>
											</div>
										</div>
									</div>
									<!-- // canvas body -->
								</div>
								<!-- // MY PAGE 오프 캔버스 -->
							</li>
						
							<li class="cate-down-x cart-count">
								<a href="mall_client_cart.ezenat" data-link="/order/basket-side.html" class="xans-element- xans-layout xans-layout-statelogoff icon menu-slide-cate-iframe ">
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
									<svg xmlns="http://www.w3.org/2000/svg" width = "16" height = "16"
										fill = "currentColor" class = "bi bi-search" viewBox = "0 0 16 16">
										<path d = "M11.742 10.344a6.5 6.5 
													0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 
													3.85a1 1 0 0 
													0 1.415-1.414l-3.85-3.85a1.007 1.007 0 
													0 0-.115-.1zM12 6.5a5.5 5.5 
													0 1 1-11 0 
													5.5 5.5 0 0 
													1 11 0z" />
									</svg>
									
									<i class="ti ti-search">
									</i>
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
								<li>sdfsd</li>
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
											<svg xmlns="http://www.w3.org/2000/svg" width = "16" height = "16"
												fill = "currentColor" class = "bi bi-search" viewBox = "0 0 16 16">
												<path d = "M11.742 10.344a6.5 6.5 
															0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 
															3.85a1 1 0 0 
															0 1.415-1.414l-3.85-3.85a1.007 1.007 0 
															0 0-.115-.1zM12 6.5a5.5 5.5 
															0 1 1-11 0 
															5.5 5.5 0 0 
															1 11 0z" />
											</svg>
											
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
				var header = document.getElementById("p-header")
				var cate_li = document.getElementsByClassName("cate_li")
				
				for (var i = 0; i < cate_li.length; ++i) {
					cate_li[i].addEventListener("mouseenter", function() {

						header.classList.add("menu-drop-open")
					})
				}
				
				document.querySelector(".header-menu-dropdown").addEventListener("mouseleave", function() {

					header.classList.remove("menu-drop-open")
				})
				/* // 매뉴 드롭 오픈 */
				
				/* 검색 아이콘 드롭 오픈 */
				document.querySelector(".search-cate").addEventListener("mouseenter", function() {

					header.classList.add("search-drop-open")
				})
				
				document.querySelector(".header-search-dropdown").addEventListener("mouseleave", function() {

					header.classList.remove("search-drop-open")
				})
				/* // 검색 아이콘 드롭 오픈 */
				
				/* 로그인 유효성 검사 */
				function loginCheck() {
					if (document.client_login_form.member_id.value == "") {
						alert("아이디를 입력하세요.")
						document.client_login_form.member_id.focus()
						
						return
					}

					if (document.client_login_form.member_password.value == "") {
						alert("비밀번호를 입력하세요.")
						document.client_login_form.member_password.focus()
						
						return
					}
					
					document.client_login_form.submit()
				}
				/* // 로그인 유효성 검사 */
				
				/* 로그인 tabs 선택 */
				var tab_login = document.querySelector("#login-join_offcanvas .offcanvas-header .tabs-menu > li.tab-login")
				var tab_nonmember = document.querySelector("#login-join_offcanvas .offcanvas-header .tabs-menu > li.tab-nonmember")
				var contents_login = document.querySelector("#login-join_offcanvas .offcanvas-body > .tab-contents.tab-contents-login")
				var contents_nonmember = document.querySelector("#login-join_offcanvas .offcanvas-body > .tab-contents.tab-contents-nonmember")
				
				var tabs_menu = document.getElementsByClassName("tabs-menu")
				
				for (var i = 0; i < tabs_menu.length; ++i) {
					var tabs_menu_li = tabs_menu[i].children
					
					for (var j = 0; j < tabs_menu_li.length; ++j) {
						tabs_menu_li[j].querySelector("a").addEventListener("click", function() {	// 여기까진 작동 확인
							if (this.parentElement.className == "tab-login") {
								tab_nonmember.classList.remove("selected")
								contents_nonmember.classList.remove("show")
								
								tab_login.classList.add("selected")
								contents_login.classList.add("show")
								
							} else if (this.parentElement.className == "tab-nonmember") {
								tab_login.classList.remove("selected")
								contents_login.classList.remove("show")
								
								tab_nonmember.classList.add("selected")
								contents_nonmember.classList.add("show")
								
							}
						})
					}
				}
				/* // 로그인 tabs 선택 */
			</script>
			
			<!-- 구글 api 사용을 위한 스크립트 -->
			<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
			<script>
			
				//처음 실행하는 함수
				function init() {
					gapi.load('auth2', function() {
						gapi.auth2.init();
						
						options = new gapi.auth2.SigninOptionsBuilder();
						options.setPrompt('select_account');
						
						// 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
						options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
						
						// 인스턴스의 함수 호출 - element에 로그인 기능 추가
						// GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
						gapi.auth2.getAuthInstance().attachClickHandler('btnGoogle', options, onSignIn, onSignInFailure);
					})
				}
				
				function onSignIn(googleUser) {
					var access_token = googleUser.getAuthResponse().access_token
					
					$.ajax({
						method : 'GET',
						
						// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
						url : 'https://people.googleapis.com/v1/people/me',
						
						// key에 자신의 API 키를 넣습니다.
						data : {
							personFields:'birthdays',
							
							key:'AIzaSyCwGf7sPTogxzjK57LZW_v7zrQRBPMZ0lQ',
							
							'access_token': access_token
						}
					})
					
					.done(function(e){
						//프로필을 가져온다.
						var profile = googleUser.getBasicProfile();
						
						console.log(profile)
					})
					
					.fail(function(e){
						console.log(e);
					})
				}
				
				function onSignInFailure(t){
					console.log(t);
				}
			</script>
		</header>
		
		
		
		<main id = "layout-contents" class = "layout-contents">
		