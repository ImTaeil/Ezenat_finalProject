<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- admin_category_management -->
<%@include file="admin_top.jsp" %>
<link rel="stylesheet" href="resources/css/admin_category.css?after">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>	
		<div class="container">
			<div class="row">
				<div class="col-12 main-content">
					<table class="table" border="1" style="table-layout: fixed">
						<thead>
						
						<form role="form" method="post" autocomplete="off">
							<tr>
							
							<div class = "cate_wrap">
								<th scope="col">대분류
								<select class="category1">
								<option value="">전체</option>
																						
								</select>	
								</th>		
								</form>						
							</div>
							
							<div class = "cate_wrap">	
								<th scope="col">중분류
									<select class="category2">
									<option  value="">전체</option>
								</select>
								</th>
							</div>
							
							<div class = "cate_wrap">	
								<th scope="col">소분류
								<select class="category3" >
									<option value="">전체</option>
								</select>
								</th>
							</div>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
			<script>
			var buttons = document.querySelectorAll("#searchList button");

			  function addSearchText() {
			    var input = document.getElementById("inputField");
			    var text = input.value.trim();

			    if (text !== "") {
			      var searchList = document.getElementById("searchList");
			      var listItem = document.createElement("li");

			      var button = document.createElement("button");
			      button.textContent = text;
			      button.classList.add("btn", "btn-secondary");
			      listItem.appendChild(button);

			      var deleteButton = document.createElement("button");
			      deleteButton.textContent = "삭제";
			      deleteButton.classList.add("btn", "btn-danger");
			      deleteButton.onclick = function() {
			        deleteButton.parentNode.remove();
			      };
			      listItem.appendChild(deleteButton);

			      var editButton = document.createElement("button");
			      editButton.textContent = "수정";
			      editButton.classList.add("btn", "btn-warning");
			      editButton.onclick = function() {
			        var newText = prompt("수정할 텍스트를 입력하세요");
			        if (newText !== null && newText.trim() !== "") {
			          button.textContent = newText.trim();
			        }
			      };
			      listItem.appendChild(editButton);

			      searchList.appendChild(listItem);
			      buttons.push(button);
			    }

			    input.value = "";
			  }

			  function toggleButtonVisibility() {
			    buttons.forEach(function(button) {
			      button.style.display = button.style.display === "none" ? "inline-block" : "none";
			    });
			  }
			  
/*			카테고리			*/
	// 컨트롤러에서 데이터 받기
	var jsonData = JSON.parse('${listCate}');
	console.log(jsonData);

	var cate1Arr = new Array();
	var cate1Obj = new Object();

	// 1차 분류 셀렉트 박스에 삽입할 데이터 준비
	for(var i = 0; i < jsonData.length; i++) {
	 
	 if(jsonData[i].category_level == "1") {
	  cate1Obj = new Object();  //초기화
	  cate1Obj.category_code = jsonData[i].category_code;
	  cate1Obj.category_name = jsonData[i].category_name;
	  cate1Arr.push(cate1Obj);
	 	}
	}

	// 1차 분류 셀렉트 박스에 데이터 삽입
	var cate1Select = $("select.category1")

	for(var i = 0; i < cate1Arr.length; i++) {
	 cate1Select.append("<option value='" + cate1Arr[i].category_code + "'>"
	      + cate1Arr[i].category_name + "</option>"); 
	}
	
	$(document).on("change", "select.category1", function(){

		 var cate2Arr = new Array();
		 var cate2Obj = new Object();
		 
		 // 2차 분류 셀렉트 박스에 삽입할 데이터 준비
		 for(var i = 0; i < jsonData.length; i++) {
		  
		  if(jsonData[i].category_level == "2") {
		   cate2Obj = new Object();  //초기화
		   cate2Obj.category_code = jsonData[i].category_code;
		   cate2Obj.category_name = jsonData[i].category_name;
		   cate2Obj.category_parent = jsonData[i].category_parent;
		   
		   cate2Arr.push(cate2Obj);
		  }
		 }
		 
		 var cate2Select = $("select.category2");
		 cate2Select.children().remove(); 
		 $("option:selected", this).each(function(){
		  
		  var selectVal = $(this).val();  
		  cate2Select.append("<option value=''>전체</option>");
		  
		  for(var i = 0; i < cate2Arr.length; i++) {
		   if(selectVal == cate2Arr[i].category_parent) {
		    cate2Select.append("<option value='" + cate2Arr[i].category_code + "'>"
		         + cate2Arr[i].category_name + "</option>");
		   }
		  }
		  
		 });
		 
	});

		  
			$(document).on("change", "select.category2", function(){

				 var cate3Arr = new Array();
				 var cate3Obj = new Object();
		  
				 // 3차 분류 셀렉트 박스에 삽입할 데이터 준비
				 for(var i = 0; i < jsonData.length; i++) {
				  
				  if(jsonData[i].category_level == "3") {
				   cate3Obj = new Object();  //초기화
				   cate3Obj.category_code = jsonData[i].category_code;
				   cate3Obj.category_name = jsonData[i].category_name;
				   cate3Obj.category_parent = jsonData[i].category_parent;
				   
				   cate3Arr.push(cate3Obj);
				  }
				 }
	
				 
				 var cate3Select = $("select.category3");

					 cate3Select.children().remove(); 

					 $("option:selected", this).each(function(){
					  
					  var selectVal = $(this).val();  
					  cate3Select.append("<option value=''>전체</option>");
					  
					  for(var i = 0; i < cate3Arr.length; i++) {
					   if(selectVal == cate3Arr[i].category_parent) {
					    cate3Select.append("<option value='" + cate3Arr[i].category_code + "'>"
					         + cate3Arr[i].category_name + "</option>");
					   }
					  } 				 
		 });
				 
		});
	
	  </script>
	</body>
</html>