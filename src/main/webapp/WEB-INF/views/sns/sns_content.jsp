<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "mall_index_top.jsp" %>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Bootstrap Example</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" type="text/css" href="resources/css/sns_view.css?after">
	 <style>
    .clickable {
      cursor: pointer;
    }
    
   .clicked {
    fill: red !important;
    }
    
    .bi-heart {
	 fill: white;
	}
    </style>
</head>
	<body>
		<script type="text/javascript">
			function searchHashTag(hashTag_name){
				location.href = 'click_hashTag.do?hashTag_name='+encodeURI(hashTag_name)		//해시태그를 한글로 등록시에 에러가 날수있으므로 encodeURI 설정
			}
		</script>
		
		<div class="container" >
			<div class="row" style="padding-bottom:10px;">
			
				<div class="col-md-4" width="300px">
					<a href="sns_user_view.do" class="profil-content"><img src="resources/images/aaa.png" width="50" height="50"/>jinsung_</a>
				</div>
				<div class="col-md-4 offset-md-4">
					<button type="button" class="followbt">팔로우</button>
				</div>
			</div>
			<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
		  <div class="carousel-inner">
			    <div class="carousel-item active">
				      <img src="resources/images/${getSnsBoard.main_image}" class="d-block w-100" alt="...">
				</div>
				    <div class="carousel-item">
				      <img src="resources/images/${getSnsBoard.sub_image1}" class="d-block w-100" alt="...">
				    </div>
				<div class="carousel-item">
				      <img src="resources/images/${getSnsBoard.sub_image2}" class="d-block w-100" alt="...">
				    </div>
				<div class="carousel-item">
				      <img src="resources/images/${getSnsBoard.sub_image3}" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
				      <img src="resources/images/${getSnsBoard.sub_image4}" class="d-block w-100" alt="...">
				</div>
		</div>
				  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
			  </button>
		</div>
			
			<div class="row" style="padding-top:10px;">
				<div class="prod-tag-su-col">
					<p>상품태그n개</p>
				</div>
			</div>
			<div class="row">
				<div class="prod-tag-info-col">
					<p>태그이미지(해당상품페이지로 이동)/상품정보/가격</p>
				</div>
			</div>
			 <div class="row">
	                 <div class="col">
		                 <span>
			                 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"  stroke="black" fill="currentColor" class="bi-heart clickable" viewBox="0 0 16 16">
			 					 <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
							</svg>
						</span>
						<span>
		      				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi-chat" viewBox="0 0 16 16">
  								<path d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z"/>
							</svg>
						</span>
	               </div>
             		<div class="col">
		                 
					</div>
				</div>
			<div class="row">
				<div class="content-col" style="padding-top:10px;">
				<c:forEach var="content" items="${contentList}">	
							<c:forEach var="hashTagDTO" items="${hashTagList}">				
								<c:if test="${content == '#' += hashTagDTO.hashTag_name}">												<!-- hashTage_name 앞에 '#'이 붙어있으면 -->
								<c:if test="${getSnsBoard.sns_board_num == hashTagDTO.style_num }"> 							<!-- sns_board_num과 style_num이 일치하면 -->
									<a href="javascript:searchHashTag('${hashTagDTO.hashTag_name}')"> 								<!-- hashTag_name 값을 불러올수있게-->
									</c:if>
								</c:if>
							</c:forEach>
							${content}</a>		
				</c:forEach>
				</div>
			</div>
			<div class="row">
				<div class="col-comment-count" style="padding-top:10px;">
					<p>댓글n개</p>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<p>댓글목록</p>
				</div>
			</div>
		</div>
		<script>
		const svgElements = document.querySelectorAll('.clickable');
		
		svgElements.forEach(function(svgElement) {
		  svgElement.addEventListener('click', function() {
		    if (svgElement.classList.contains('clicked')) {
		      svgElement.classList.remove('clicked');
		      console.log('SVG 색상 원래대로 돌아옴!');
		    } else {
		      svgElement.classList.add('clicked');
		      console.log('SVG 클릭됨!');
		    }
		  });
		});
		</script>
	</body>
</html>
