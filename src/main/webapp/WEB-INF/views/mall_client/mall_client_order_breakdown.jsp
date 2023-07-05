<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "mall_index_top.jsp" %>

<!-- mall_client_order_breakdown.jsp -->
<style>
button {
    -webkit-appearance: none;
    appearance: none;
    outline: 0;
    border: 0;
}
/* 




*/
.client_order_center {
    width: 100%;
    max-width: 1200px;
    padding: 0 var(--layout-row-gap);
    margin: 0 auto;
    margin-bottom : 40px;
    zoom: 1;
}

.title {
    text-align: center;
    padding: 3rem 0;
    text-transform: capitalize;
    color: var(--color) !important;
}

.order_breakdown_tab {
    line-height: 1.5;
}

.order_breakdown_tab ul {
    overflow: hidden;
    width: 100%;
    margin-bottom: 15px;
}

.order_breakdown_tab ul:after {
    content: "";
    display: block;
    clear: both;
}

.order_breakdown_tab li {
    float: left;
}

.order_breakdown_tab li.selected a {
    text-decoration: underline;
}

.order_breakdown_tab li a {
    display: block;
    text-decoration: none;
    text-align: center;
    padding: 0 20px 0 0;
    color: var(--color);
    font-weight: bold;
}

.order_breakdown_head fieldset {
    margin: 0 0 20px 0;
    padding: 15px;
    border: var(--border-width) solid var(--border-color);
}

.order_breakdown_head fieldset .select_state {
    margin-bottom: 15px;
}

.order_breakdown_head fieldset .order_status {
    width: 100% !important;
}

.client_order_wrap select {
    width: auto;
    height: var(--select-height);
    position: relative;
    border-radius: 0;
    display: inline-block;
    vertical-align: middle;
    margin: 0;
    border: var(--border-width) solid var(--select-border-color);
    overflow: hidden;
    z-index: 2;
    padding: 13px 35px 13px 10px;
    line-height: 1;
    cursor: pointer;
    outline: none;
    appearance: none;
    transition: border 300ms ease;
    background-image: url(/web/upload/131/image/chevron-down.svg);
    background-repeat: no-repeat;
    background-position-y: center;
    background-position-x: calc(100% - 10px);
    background-size: 14px 14px;
}

.client_order_wrap input, .client_order_wrap select, textarea, .agree, .btn, .s-btn {
    letter-spacing: 0;
    font-family: inherit;
    font-size: inherit;
    font-weight: normal;
    color: var(--color);
    background-color: transparent;
    border: var(--border-width) solid var(--border-color);
    vertical-align: middle;
    /* line-height: 1.42857; */
    border-radius: 0;
    outline: 0;
    -webkit-appearance: none;
    appearance: none;
    /* -webkit-transition: border 300ms ease;
    -moz-transition: border 300ms ease;
    -ms-transition: border 300ms ease;
    -o-transition: border 300ms ease;
    transition: border 300ms ease; */
}

.client_order_wrap input {
    padding: 13px 10px;
    height: var(--input-height);
    border: var(--border-width) solid var(--input-border-color);
    border-radius: var(--border-radius);
}

.order_breakdown_head fieldset .period {
    display: flex;
    margin: 0 -7.5px;
    padding-bottom: 15px;
    font-size: 100%;
}

.order_breakdown_head fieldset .period a {
    width: 20%;
    margin: 0 7.5px;
    margin-bottom: 0 !important;
    border: var(--border-width) solid var(--border-color);
}

.order_breakdown_head fieldset .date_wrap {
    display: flex;
    justify-content: space-between;
}

.order_breakdown_head .ec-base-help {
    padding: 0;
    background: none;
}

.order_breakdown_head fieldset .date_picker {
    margin: 0;
    width: 80%;
}

.order_breakdown_head fieldset .date_picker button {
    -webkit-transform: scale(0.5);
    transform: scale(0.5);
    display: inline-block;
    vertical-align: middle;
    color: var(--color);
    position: relative;
    top: -1px;
    width: 32px;
    height: 28px;
    border-width: 4px 2px 2px;
    border-style: solid;
    border-radius: 4px;
    margin: 5px 1px 1px;
    cursor: pointer;
}

.datepicker table tr td, .datepicker table tr th {
	vertical-align: middle;
}

.order_breakdown_head fieldset .fText {
    /* width: calc(50% - 51px); */
    width: calc(50% - 9px);
    margin: 0;
    border: var(--border-width) solid var(--border-color);
}

.order_breakdown_head #order_search_btn {
    display: none;
    /* width: 18%; */
    width: 19%;
    margin: 0 0 0 15px;
}

.order_breakdown_head p.cs_help {
    padding: 0;
    background: none;
    font-weight: bold;
}

/* span.ec-base-help, p.ec-base-help, ul.ec-base-help li { */
p.cs_help {
    margin: 2px 9px;
    padding: 1px 0 1px 20px;
    line-height: 1.4;
    background: url(//img.echosting.cafe24.com/skin/base/common/ico_info.gif) no-repeat 0 2px;
}

.order_breakdown_list .empty {
    text-align: center;
    padding: 30px 0 30px;
}

.order_list_displaynone {
    display: none;
}
.order_list_displaynone {
    display: none !important;
}

.order_breakdown_list .order {
    position: relative;
    padding: 10px;
    border: var(--border-width) solid var(--border-color);
    margin: 20px 0;
}

.order_breakdown_list .order h3 {
    overflow: hidden;
    margin: 0 0 20px 0;
    padding: 0 0 0;
    font-size: 12px;
    font-weight: normal;
    letter-spacing: 0;
    display: block !important;
}

.xans-myshop-orderhistorylistitem .order-icon {
    position: relative;
    margin-right: 2px;
}
.xans-myshop-orderhistorylistitem .order .date {
    font-weight: bold;
}
.xans-myshop-orderhistorylistitem .thumbnail {
    overflow: hidden;
    width: 73px;
    height: 73px;
    margin-right: 15px;
    border: var(--border-width) solid var(--border-color);
    box-sizing: border-box;
    display: inline-block;
    vertical-align: top;
}
.xans-myshop-orderhistorylistitem .description {
    display: inline-block;
    vertical-align: top;
}
.xans-myshop-orderhistorylistitem .description .prdName {
    display: block;
    margin: 0 0 10px;
    font-weight: normal;
}
.xans-myshop-orderhistorylistitem .description * {
    line-height: 1.5;
}
.ec-base-qty {
    position: relative;
    display: inline-block;
    width: 50px;
    margin: 0 1px 0 0;
    text-align: left;
}
.xans-myshop-orderhistorylistitem p.option {
    padding: 14px 0;
}
.xans-myshop-orderhistorylistitem .prdFoot {
    padding: 6px 0;
    font-weight: bold;
    line-height: 26px;
    text-align: center;
}
.xans-myshop-orderhistorylistitem .gLeft {
    text-align: left;
}
.xans-myshop-orderhistorylistitem .gRight {
    margin: 0 -3px;
    padding-top: 10px;
    text-align: left;
}
.xans-myshop-orderhistorylistitem .orderList .btn {
    width: auto;
    margin: 0 3px;
    padding: 10px;
}
.xans-myshop-orderhistorylistitem .prdFoot + .request {
    margin-top: 0;
}
.xans-myshop-orderhistorylistitem .request {
    position: relative;
    overflow: hidden;
    margin: 0 -3px;
    padding: 0;
    font-weight: bold;
    text-align: left;
}
.xans-myshop-orderhistorylistitem .order > .btnDetail {
    display: block !important;
    text-decoration: underline;
}
.xans-myshop-orderhistorylistitem a.btnDetail {
    position: absolute;
    top: 12px;
    right: 14px;
    padding: 0;
    font-size: 11px;
}

.paging {
    width: 100%;
    text-align: center;
    padding: 20px 0;
    display: flex;
    justify-content: center;
}
.paging p {
    font-size: 0;
}
.paging ol, .paging p, .paging ol li {
    display: inline-block;
}
.paging p a {
    color: var(--color);
}
.paging p i {
    font-size: var(--font-size);
}
.paging ol li a.this {
    color: var(--color);
}
.paging ol li a {
    color: #999;
    padding: 5px 8px;
    margin: 0;
    font-weight: bold;
}
/* .ti-angle-left:before {
    content: "\e64a";
}
.ti-angle-right:before {
    content: "\e649";
} */
</style>

<!-- 임시, 회원 / 비회원 분리용 -->
<div class = "client_order_wrap">
	<div class = "client_order_page">
		<div class = "client_order_center">
			<div class = "title">
				<h2>주문조회</h2>
			</div>
			
			<div class = "order_breakdown_tab">
				<ul>
					<!-- 회원 -->
					<!-- mode 로 구분 후 주문조회 페이지로 재이동 -->
					<c:if test="${ empty mode }">
					
						<c:if test="${ tab == 'orders' }">
							<li class = "tab_menu_order selected">
								<a href = "mall_client_order_breakdown.ezenat?tab=orders">
									주문내역 조회 (
									
									<!-- 주문내역 수 -->
									<span id = "client_total_orders">
										0
									</span>
									
									)
								</a>
							</li>
							
							<li class = "tab_menu_cs">
								<a href = "mall_client_order_breakdown.ezenat?tab=cs">
									취소/반품/교환 내역 (
									
									<!-- 취소, 반품, 교환 수 -->
									<span id="client_total_orders_cs">
										0
									</span>
									
									)
								</a>
							</li>
						</c:if>
						
						<c:if test="${ tab == 'cs' }">
							<li class = "tab_menu_order">
								<!-- mode 로 구분 후 주문조회 페이지로 재이동 -->
								<a href = "mall_client_order_breakdown.ezenat?tab=orders">
									주문내역 조회 (
									
									<!-- 주문내역 수 -->
									<span id = "client_total_orders">
										0
									</span>
									
									)
								</a>
							</li>
							
							<li class = "tab_menu_cs selected">
								<a href = "mall_client_order_breakdown.ezenat?tab=cs">
									취소/반품/교환 내역 (
									
									<!-- 취소, 반품, 교환 수 -->
									<span id = "client_total_orders_cs">
										0
									</span>
									
									)
								</a>
							</li>
						</c:if>
						
					</c:if>
					<!-- 회원 끝 -->
					
					<!-- 비회원 -->
					<c:if test="${ not empty mode }">
					
						<li class = "tab_menu_order selected">
							<!-- mode 로 구분 후 주문조회 페이지로 재이동 -->
							<a href = "mall_client_order_breakdown.ezenat?mode=${ mode }">
								주문내역 조회 (
								
								<!-- 주문내역 수 -->
								<span id = "client_total_orders">
									0
								</span>
								
								)
							</a>
						</li>
						
					</c:if>
					<!-- 비회원 끝 -->
				</ul>
			</div>
			
			<form id = "order_breakdown_form" name = "order_breakdown_form"
			action = "mall_client_order_breakdown.ezenat" method = "get">
				<div class = "order_breakdown_head">
					<fieldset>
						<legend>검색기간 설정</legend>
						
						<c:if test="${ tab == 'orders' }">
							<div class="select_state">
								<select id = "order_status" class = "order_status" name = "order_status">
									<option value = "all">전체 주문처리 상태</option>
									<option value = "shipping_before">입금전</option>
									<option value = "shipping_standby">배송 준비중</option>
									<option value = "shipping_start">배송중</option>
									<option value = "shipped_complate">배송 완료</option>
									<option value = "order_cancel">취소</option>
									<option value = "order_exchange">교환</option>
									<option value = "order_return">반품</option>
								</select>
							</div>
						</c:if>
						
						<span class = "period">
			                <!-- <a href = "#none" class = "btn" days = "00">오늘</a>
			                <a href = "#none" class = "btn" days = "07">1주일</a>
			                <a href = "#none" class = "btn" days = "30">1개월</a>
			                <a href = "#none" class = "btn" days = "90">3개월</a>
			                <a href = "#none" class = "btn" days = "180">6개월</a> -->

							<c:if test="${ empty mode }">
				                <a href = "mall_client_order_breakdown.ezenat?tab=${ tab }&prevDays=0" class = "btn">오늘</a>
				                <a href = "mall_client_order_breakdown.ezenat?tab=${ tab }&prevDays=7" class = "btn">1주일</a>
				                <a href = "mall_client_order_breakdown.ezenat?tab=${ tab }&prevDays=30" class = "btn">1개월</a>
				                <a href = "mall_client_order_breakdown.ezenat?tab=${ tab }&prevDays=90" class = "btn">3개월</a>
				                <a href = "mall_client_order_breakdown.ezenat?tab=${ tab }&prevDays=180" class = "btn">6개월</a>
			                </c:if>
			                
			                <c:if test="${ not empty mode }">
				                <a href = "mall_client_order_breakdown.ezenat?mode=${ mode }&prevDays=0" class = "btn">오늘</a>
				                <a href = "mall_client_order_breakdown.ezenat?mode=${ mode }&prevDays=7" class = "btn">1주일</a>
				                <a href = "mall_client_order_breakdown.ezenat?mode=${ mode }&prevDays=30" class = "btn">1개월</a>
				                <a href = "mall_client_order_breakdown.ezenat?mode=${ mode }&prevDays=90" class = "btn">3개월</a>
				                <a href = "mall_client_order_breakdown.ezenat?mode=${ mode }&prevDays=180" class = "btn">6개월</a>
			                </c:if>
			            </span>
						
						<div class = "date_wrap">
							<span class = "date_picker">
							
								<!-- 검색 날짜 시작일 = 현재 날짜 - 90 -->
								<input id = "breakdown_start_date" name = "breakdown_start_date"
										class = "fText hasDatepicker" readonly = "readonly"
										size = "10" value = "${ prevDate }" type = "text">
								
								<!-- <button type = "button" class = "ui_datepicker_trigger trigger_prev">
									<img src = "//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif"
											alt = "..." title = "...">
								</button> -->
								
								 ~ 
								
								<!-- 검색 날짜 마지막일 = 현재 날짜 -->
								<input id = "breakdown_end_date" name = "breakdown_end_date"
										class = "fText hasDatepicker" readonly = "readonly"
										size = "10" value = "${ todayDate }" type = "text">
								
								<!-- <button type = "button" class = "ui_datepicker_trigger trigger_next">
									<img src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/ico_cal.gif"
											alt="..." title="...">
								</button>  -->
								
								<!-- <input type = "image" id = "order_search_btn" alt = "조회" 
								src = "//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/btn_search.gif"> -->
							</span>
							
							<button id = "order_search_btn" class = "btn s-btn" type = "submit"
									style = "display : inline-block;">
								조회
							</button>
						</div>
					</fieldset>
					
					<c:if test="${ tab == 'orders' }">
						<p class = "cs_help">
							취소/교환/반품 신청은 배송완료일 기준 7일까지 가능합니다.
						</p>
					</c:if>
				</div>
				
				<c:if test="${ not empty mode }">
					<input type = "hidden" id = "mode" name = "mode" value = "${ mode }">
				</c:if>
				
				<input type = "hidden" id = "tab" name = "tab" value = "${ tab }">
				
				<%-- <input type = "hidden" id = "term" name = "term" value = "${ term }"> --%>
			</form>
			
			<div class = "order_breakdown_list">
			
				<!-- dto 있을 경우 -->
				<div class = "order_list_displaynone">
					<div class = "order">
						<h3 class = "displaynone">
							<span class = "order-icon"></span>
							<span class = "date" title = "주문일자"></span>
							<span class = "number" title = "주문번호">
								<a href="detail.html">
									 ()
								</a>
							</span>
						</h3>
						
						<div class = "ec-base-prdInfo">
							<div class = "product_box">
								<div class = "thumbnail">
									<a href = "/product/detail.html">
		                        		<img src = "//img.echosting.cafe24.com/thumb/img_product_small.gif"
		                        		onerror = "this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"
		                        		width = "71" height = "71" alt = "">
									</a>
								</div>
								
								<div class = "description">
									<strong class = "product_name" title = "상품명"></strong>
									
									<ul class = "info">
										<li>
											<span class = "price" title = "판매가">
												<strong></strong>
												
												<span class = "refer displaynone"></span>
											</span>
											
											<span class = "ec-base-qty" title = "수량">
												<strong></strong>
			                                    
												 개
											</span>
										</li>
										
										<li class = "displaynone">
											무이자할부 상품
										</li>
									</ul>
								</div>
							</div>
		                    
							<p class = "option displaynone"></p>
							
							<ul class = "xans-element- xans-myshop xans-myshop-optionset option">
								<li class = "">
									<div class = "name">
										<strong></strong>
										
											 (개)
									</div>
								</li>
							</ul>
								
							<div class = "prdFoot" title = "주문처리 상태">
								<div class = "gLeft">
									<span class = "store"></span>
									
									<span class = "addition displaynone">
										<strong class = "cancel">
											<a href = "order_detail_cs.html" target = "_blank">
												[상세정보]
											</a>
										</strong>
									</span>
								</div>
								
								<div class = "gRight">
									<span class = "displaynone">
										<a href = "#none" class = "btn" onclick = "">
											배송조회
										</a>
									</span>
									
									<a href = "/board/product/write.html" class = "btn displaynone">구매후기</a>
									<a href = "#none" class = "btn displaynone" onclick = "">취소 철회</a>
									<a href = "#none" class = "btn displaynone" onclick = "">교환 철회</a>
									<a href = "#none" class = "btn displaynone" onclick = "">반품 철회</a>
								</div>
							</div>
							
							<div class = "request displaynone">
								<a href = "#none" class = "displaynone btn" onclick = "">주문취소</a>
								<a href = "cancel.html" class = "displaynone btn">취소 신청</a>
								<a href = "exchange.html" class = "displaynone btn">교환 신청</a>
								<a href = "return.html" class = "displaynone btn">반품 신청</a>
							</div>
						</div>
						
						<a href = "detail.html" class = "btnDetail displaynone">상세보기</a>
					</div>
				</div>
				
				<!-- dto 없을 경우 -->
				<p class = "empty">
					주문 내역이 없습니다.
				</p>
			</div>
			
			<div class = "order_breakdown_paging paging">
				<p>
					<a href = "?page=1&amp;
								order_status=all&amp;
								history_start_date=2023-03-15&amp;
								history_end_date=2023-06-13&amp;
								past_year=2022">
						<i class = "ti-angle-left">◀</i>
						
						Prev
					</a>
				</p>
				
				<ol>
					<li class = "xans-record-">
						<a href = "?page=1&amp;
									order_status=all&amp;
									history_start_date=2023-03-15&amp;
									history_end_date=2023-06-13&amp;
									past_year=2022" class = "this">
							1
						</a>
					</li>
				</ol>
				
				<p>
					<a href = "?page=1&amp;order_status=all&amp;
								history_start_date=2023-03-15&amp;
								history_end_date=2023-06-13&amp;
								past_year=2022">
						Next
						
						<i class = "ti-angle-right">▶</i>
					</a>
				</p>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	/* 달력 날짜 선택 prev */
	$("#breakdown_start_date").datepicker({
		format: 'yyyy-mm-dd',							// 데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
		startDate: '-6m',								// 달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
		endDate: '+0d',									// 달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
		autoclose: true,								// 사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
		calendarWeeks: false,							// 캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
		clearBtn: false,								// 날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
		//datesDisabled: ['2019-06-24', '2019-06-26'],	// 선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
		//daysOfWeekDisabled: [0, 6],					// 선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
		//daysOfWeekHighlighted: [3],					// 강조 되어야 하는 요일 설정
		disableTouchKeyboard: false,					// 모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
		immediateUpdates: false,						// 사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false
		multidate: false,								// 여러 날짜 선택할 수 있게 하는 옵션 기본값 :false
		multidateSeparator: ',',						// 여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
		templates: {									// 다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징
			leftArrow: '&laquo;',
			rightArrow: '&raquo;',
		},
		showWeekDays: true,								// 위에 요일 보여주는 옵션 기본값 : true
		//title: '조회 날짜',								// 캘린더 상단에 보여주는 타이틀
		todayHighlight: true,							// 오늘 날짜에 하이라이팅 기능 기본값 :false
		toggleActive: true,								// 이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
		weekStart: 0,									// 달력 시작 요일 선택하는 것 기본값은 0인 일요일
		language: 'ko',									// 달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
	}).on("changeDate", function(e) {
		/* 이벤트의 종류 */
		// show : datePicker가 보이는 순간 호출
		// hide : datePicker가 숨겨지는 순간 호출
		// clearDate: clear 버튼 누르면 호출
		// changeDate : 사용자가 클릭해서 날짜가 변경되면 호출 (개인적으로 가장 많이 사용함)
		// changeMonth : 월이 변경되면 호출
		// changeYear : 년이 변경되는 호출
		// changeCentury : 한 세기가 변경되면 호출 ex) 20세기에서 21세기가 되는 순간
		
		$(".trigger_prev").datepicker().on("hide")
		
		// e.date를 찍어보면 Thu Jun 27 2019 00:00:00 GMT+0900 (한국 표준시) 위와 같은 형태로 보인다.
		console.log(e);
	})
	/* // 달력 날짜 선택 prev */
	
	/* 달력 날짜 선택 next */
	$("#breakdown_end_date").datepicker({
		format: 'yyyy-mm-dd',							// 데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
		startDate: '-6m',								// 달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
		endDate: '+0d',									// 달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
		autoclose: true,								// 사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
		calendarWeeks: false,							// 캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
		clearBtn: false,								// 날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
		//datesDisabled: ['2019-06-24', '2019-06-26'],	// 선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
		//daysOfWeekDisabled: [0, 6],					// 선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
		//daysOfWeekHighlighted: [3],					// 강조 되어야 하는 요일 설정
		disableTouchKeyboard: false,					// 모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
		immediateUpdates: false,						// 사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false
		multidate: false,								// 여러 날짜 선택할 수 있게 하는 옵션 기본값 :false
		multidateSeparator: ',',						// 여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
		templates: {									// 다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징
			leftArrow: '&laquo;',
			rightArrow: '&raquo;',
		},
		showWeekDays: true,								// 위에 요일 보여주는 옵션 기본값 : true
		//title: '조회 날짜',								// 캘린더 상단에 보여주는 타이틀
		todayHighlight: true,							// 오늘 날짜에 하이라이팅 기능 기본값 :false
		toggleActive: true,								// 이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
		weekStart: 0,									// 달력 시작 요일 선택하는 것 기본값은 0인 일요일
		language: 'ko',									// 달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
	}).on("changeDate", function(e) {
		/* 이벤트의 종류 */
		// show : datePicker가 보이는 순간 호출
		// hide : datePicker가 숨겨지는 순간 호출
		// clearDate: clear 버튼 누르면 호출
		// changeDate : 사용자가 클릭해서 날짜가 변경되면 호출 (개인적으로 가장 많이 사용함)
		// changeMonth : 월이 변경되면 호출
		// changeYear : 년이 변경되는 호출
		// changeCentury : 한 세기가 변경되면 호출 ex) 20세기에서 21세기가 되는 순간
		
		$(".trigger_prev").datepicker().on("hide")
		
		// e.date를 찍어보면 Thu Jun 27 2019 00:00:00 GMT+0900 (한국 표준시) 위와 같은 형태로 보인다.
		console.log(e);
	})
	/* // 달력 날짜 선택 next */
</script>

<%@ include file = "mall_index_bottom.jsp" %>
