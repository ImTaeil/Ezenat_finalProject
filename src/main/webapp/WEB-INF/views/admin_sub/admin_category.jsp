<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- admin_category_management -->
<%@include file="admin_top.jsp" %>
		<div class="container">
			<div class="row">
				<div class="col-12 main-content">
					<table class="table" border="1" style="table-layout: fixed">
						<thead>
							<tr>
								<th scope="col">대분류</th>
								<th scope="col">중분류</th>
								<th scope="col">소분류</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" id="inputField" class="text-cateinput" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
									  <button onclick="addSearchText()" type="submit" class="btn btn-primary mb-3 btn-sm" style="align-items: center;">+</button>
									  <ul id="searchList" style="list-style: none; padding: 0;">
									    <%-- 기존에 추가된 버튼이 있다면 여기에 추가될 수 있도록 JSP 코드로 생성 --%>
									 
									      <li style="display: block; margin-bottom: 5px;">
									        <button class="btn btn-secondary" type="button" style="display:none;"></button>
									        <button class="btn btn-danger" onclick="deleteButton(this)" type="button" style="display:none;">삭제</button>
									        <button class="btn btn-warning" onclick="editButton(this)" type="button" style="display:none;">수정</button>
									      </li>
									 
									  </ul>
								</td>
								<td>
								
								</td>
							</tr>
						</tbody>
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
			 
	  </script>
	</body>
</html>