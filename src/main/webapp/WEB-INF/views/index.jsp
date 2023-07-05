<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- index.jsp -->
<html>
<head>
	<title>EZENAT</title>
</head>
<body>
	<h1 align="center">EZENAT 홈페이지</h1>
		<ul>
		<!-- sns -->	
		<li><a href="list_sns.do">sns페이지로 이동</a></li>
		<!-- 어드민페이지 -->
		<li><a href="admin_main.do">어드민페이지로 이동</a></li>
		
		<li><a href = "mall_index.ezenat">이제낫 홈페이지</a></li>
	
		<!-- 로그인 하면 회원가입 x -->
		<li><a href = "mall_member_join.ezenat">회원 가입 (기입 후 회원가입 누르면 완료 페이지로 이동)</a></li>
		<li><a href = "mall_member_join_complete.ezenat">			=> 회원 가입  완료 페이지</a></li>
		
		<li><a href = "mall_client_cart.ezenat">장바구니</a></li>
		<li><a href = "mall_product_list.ezenat">상품 리스트</a></li>
		<li><a href = "mall_product_content.ezenat">상품 상세보기</a></li>
		
		<!-- 로그인 여부로 나누기 -->
		<li><a href = "mall_client_order_breakdown.ezenat">회원 주문조회</a></li>
		<li><a href = "mall_client_order_breakdown.ezenat?mode=nonmember">비회원 주문조회</a></li>
	</ul>
	<ul>
			<li><a href="review.do">전체 리뷰 보기</a></li>
		<li><a href="list_review.do">전체 리뷰 보기</a></li>
		<li><a href="product_review.do">상품별 리뷰 보기</a></li>
		
		<li><a href="write_review.do">리뷰쓰기</a></li>
		
		<li><a href="list_fanda.do">자주묻는질문</a></li>
		<li><a href="notice.do">공지사항게시판</a></li>
		<li><a href="view_board.do">공지사항 보기</a></li>
		<li><a href="write_board.do">게시판쓰기</a></li>
		<li><a href="location_store.do">지점보기</a></li>
		<li><a href="find_id.do">ID찾기</a></li>
		<li><a href="address.do">배송지 관리</a></li>
		<li><a href="insert_address.do">배송지 등록, 수정</a></li>
		<li><a href="order_member.do">회원 주문서</a></li>
		<li><a href="order_non_member.do">비회원 주문서</a></li>
		<li><a href="location_store_map.do">지점 지도 목록</a></li>
		
		<li><a href="login.do">login페이지</a></li>
		
		<li><a href="issue_coupon.do">쿠폰 다운로드 페이지</a></li>
		<li><a href="member_coupon.do">멤버 쿠폰 페이지</a></li>
		
		<li><a href="mypage_edit.do">개인정보변경</a></li>
	
	</ul>
</body>
</html>