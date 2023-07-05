<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko">
  <head>
    <meta charset="utf-8">
     <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet"> -->
    <title>관리자 페이지</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- <link rel="stylesheet" href="resources/css/admin.css?after"> -->
    <style>
    .hidden {
      display: none;
    }
  </style>
  </head>
<body>

	<nav class="navbar navbar-expand-lg">
		<div class="container-fluid">
			<a class="navbar-brand" href="admin_main.do">EZENAT</a>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="#">서브관리자계정입니다</a></li>
					<li class="nav-item"><a class="nav-link" href="#">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="row bgcolor=black;">
		<div class="col-1 side-menu">
			<div class="btn-group dropend">
				<button type="button" class="btn btn-secondary btn-lg dropdown-toggle dropdown-button" data-bs-toggle="dropdown" aria-expanded="false">상품관리</button>
				<ul class="dropdown-menu">
					<li><a class="dopdown-item" href="admin_category.do">- 카테고리관리</a></li>
					<li><a class="dopdown-item" href="admin_product_list.do">- 상품목록</a></li>
					<li><a class="dopdown-item" href="admin_product_insert.do">- 상품등록</a></li>
					<li><a class="dopdown-item" href="admin_product_pqty_management.do">- 상품재고관리</a></li>
					<li><a class="dopdown-item" href="admin_product_list.do?mode=Y">- 상품삭제목록</a></li>
				</ul>
			</div>
			<div class="btn-group dropend">
				<button type="button" class="btn btn-secondary btn-lg dropdown-toggle dropdown-button" data-bs-toggle="dropdown" aria-expanded="false">회원관리</button>
				<ul class="dropdown-menu">
					<li><a class="dopdown-item" href="admin_member_list.do">- 회원목록</a></li>
					<li><a class="dopdown-item" href="admin_member_rating_management.do">- 회원등급별관리</a></li>
					<li><a class="dopdown-item" href="admin_member_benefit_management.do">- 회원혜택관리</a></li>
					<li><a class="dopdown-item" href="admin_member_list.do?mode=Y">- 불량회원목록</a></li>
				</ul>
			</div>
			<div class="btn-group dropend">
				<button type="button" class="btn btn-secondary btn-lg dropdown-toggle dropdown-button" data-bs-toggle="dropdown" aria-expanded="false">주문관리</button>
				<ul class="dropdown-menu">
					<li><a class="dopdown-item" href="admin_order_list.do">- 주문목록관리</a></li>
					<li><a class="dopdown-item" href="admin_order_cancel_management.do">- 주문취소관리</a></li>
					<li><a class="dopdown-item" href="admin_order_exchange_management.do">- 주문교환관리</a></li>
					<li><a class="dopdown-item" href="admin_order_cash_management.do">- 현금거래관리</a></li>
					<li><a class="dopdown-item" href="admin_order_return_management.do">- 주문반품관리</a></li>
					<li><a class="dopdown-item" href="admin_order_refund_management.do">- 주문환불관리</a></li>
					<li><a class="dopdown-item" href="admin_order_card_management.do">- 카드취소관리</a></li>
					<li><a class="dopdown-item" href="admin_order_cashReceipt_management.do">- 현금영수증관리</a></li>
				</ul>
			</div>
			<div class="btn-group dropend">
				<button type="button" class="btn btn-secondary btn-lg dropdown-toggle dropdown-button" data-bs-toggle="dropdown" aria-expanded="false">통계</button>
				<ul class="dropdown-menu">
					<li><a class="dopdown-item" href="admin_stat.do">- 매출분석</a></li>
					<li><a class="dopdown-item" href="admin_stat_product.do">- 상품분석</a></li>
				</ul>
			</div>
		</div>
		<div class="col-10 main-view">
