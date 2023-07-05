<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "mall_index_top.jsp" %>

<!-- mall_member_join_complete.jsp -->
<style>
.client_join_complete_wrap {
	padding-bottom : 100px;
}

.client_join_complete_center {
    width: 100%;
    max-width: 1200px;
    padding: 0 var(--layout-row-gap);
    margin: 0 auto;
    zoom: 1;
}

.title {
    text-align: center;
    padding: 3rem 0;
    text-transform: capitalize;
}

.title > * {
    margin: 0;
    padding: 0;
    text-transform: capitalize;
    color: var(--color) !important;
    font-weight: bold;
}

.join_complete {
    width: 100%;
    max-width: 500px;
    margin: 0 auto;
}
.complete_text {
	padding-bottom: 50px;
}

.complete_text > h2 {
	font-size: revert;
	font-weight: bold;
	padding-bottom: 20px;
}

.complete_text .client_name {
	font-weight : bold;
	font-size : 13;
}

.join_complete > input[type="button"] {
	width: 100%;
}
</style>

<div class = "client_join_complete_wrap">
	<div class = "client_cart_center">
		<div class = "title">
		  	<h2 class="subtitle">회원가입 결과</h2>
		</div>
	</div>
		
	<div class = "client_join_complete_center">
		<div class = "join_complete">
			<div class = "complete_text">
				<h2>회원가입이 완료되었습니다.</h2>
				
				<p>쇼핑몰을 이용해주셔서 감사합니다.</p>
				
				<p>								<!-- 회원 이름 -->
					<span class = "client_name">${ client_name }</span> 님은 [일반 회원]이십니다.
				</p>
			</div>
	
			<input type = "button" value = "메인으로" class = "btn s-btn"
					onclick = "location.href = 'mall_index.ezenat'">
		</div>
	</div>
</div>

<%@ include file = "mall_index_bottom.jsp" %>
