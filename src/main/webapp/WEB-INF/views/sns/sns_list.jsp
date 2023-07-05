<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "mall_index_top.jsp" %>
<!-- list_sns.jsp -->
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Bootstrap Example</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="resources/css/sns.css?after">
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
				location.href = 'click_hashTag.do?hashTag_name='+encodeURI(hashTag_name)		
			}
		</script>
     <h3><a href="list_sns.do">STYLE</a></h3>
    <nav class="navbar navbar-expand-lg bg-light">
      <div class="container-fluid">
        <a class="navbar-brand">ezenat</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mb-2 mb-lg-0">
            <li class="nav-item">
            </li>
            <li class="nav-item">
            </li>
      	 	<form class="d-flex" name="findSnsBoard" action="search_sns.do" method="post" role="search">
           	<li class="nav-item dropdown">
 					 <label for="dropdown-select" class="visually-hidden">종류 선택</label>
  					<select id="dropdown-select"  name="search" class="form-select" onchange="handleDropdownChange(this)">
    				<option value="content" >글내용</option>
    				<option value="hashTag_name">해시태그</option>
 			 		</select>
					</li>
            <li class="nav-item">
                <input class="form-control me-2" type="text" name = "searchString" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">검색</button>
           </form>
            </li>
          </ul>
          <a href="insert_sns.do" class="dailyUpload">데일리 업로드</a>
        </div>
      </div>
    </nav>
    <div class="container">
				<c:forEach var="content" items="${contentList}">	
							<c:forEach var="hashTagDTO" items="${hashTagList}">				
								<c:if test="${content == '#' += hashTagDTO.hashTag_name}">									
								<c:if test="${getSnsBoard.sns_board_num == hashTagDTO.style_num }"> 															
									</c:if> 
								      </c:if>
     						 </c:forEach>
				</c:forEach>		
      <a href="javascript:searchHashTag('${hashTagDTO.hashTag_name += '페스티벌챌린지'}')">#페스티벌챌린지</a>
      <a href="javascript:searchHashTag('${hashTagDTO.hashTag_name += '스타일랭킹'}')">#스타일랭킹</a>
      <a href="javascript:searchHashTag('${hashTagDTO.hashTag_name += 'FocusOnMe'}')">#FocusOnMe</a>
      <a href="javascript:searchHashTag('${hashTagDTO.hashTag_name += '오늘의신발'}')">#오늘의신발</a>
      <a href="javascript:searchHashTag('${hashTagDTO.hashTag_name += '오뭐입'}')">#오뭐입</a>
      <a href="javascript:searchHashTag('${hashTagDTO.hashTag_name += '반팔코디'}')">#반팔코디</a>
      <a href="javascript:searchHashTag('${hashTagDTO.hashTag_name += 'keen'}')">#keen</a>
      <a href="javascript:searchHashTag('${hashTagDTO.hashTag_name += '선글라스'}')">#선글라스</a>
      <a href="javascript:searchHashTag('${hashTagDTO.hashTag_name += '휴먼메이드'}')">#휴먼메이드</a>	 
      <a href="" class="bypopularity">인기순</a> / <a href="">최신순</a>		
    </div>

    <!-- Example Code -->
    <div class="container">
      <div class="row">
        <c:set var="count" value="0" />
        <c:forEach var="dto" items="${listSnsBoard}">
          <div class="card" style="width: 18rem">
            <a href="content_sns.do?sns_board_num=${dto.sns_board_num}">
              <img src="resources/images/${dto.main_image}" class="card-img" alt="..."  width="288px" height="312px">
            </a>
            <div class="card-body">
              <nav class="navbar navbar-expand-lg bg-white" style="padding:0">
                <div class="container-fluid" style="padding:0">
                  <img src="" class="img-circle">
                  <span class="card-text">${id}</span>
                  <div class="navbar-nav me-auto mb-2 mb-lg-0"></div>
                  <div class="row">
	                 <div class="col">
		                 <span>
			                 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"  stroke="black" fill="currentColor" class="bi-heart clickable" viewBox="0 0 16 16">
			 					 <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
							</svg>
						</span>
	               </div>
             		<div class="col">
		                 <span>
		      
						</span>
					</div>
				</div>
		        </div>
              </nav>
              <p class="card-text">${dto.content}</p>
            </div>
            <div class="card-body">
              <a href="a" class="hash-tag"></a>
              <a href="a" class="hash-tag"></a>
            </div>
          </div>
          <c:set var="count" value="${count + 1}" />
          <c:if test="${count % 4 == 0}">
          </c:if>
        </c:forEach>
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
	
			


				

            
			  						
