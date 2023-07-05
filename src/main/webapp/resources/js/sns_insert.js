
    	attachFile = {
    			
         add : function(asd) { // 파일필드 추가
            var idx = asd;        
            var div = document.createElement('div');
            div.style.marginTop = '3px';
            div.id = 'file' + (idx+1);
            
            var check = document.getElementById('file'+idx).childElementCount;
            
            if(idx == 0){
               if(check == 2){
                  document.getElementById('img0').src = document.getElementById('file_img0').value;
                  return
               }else{
                  var img = document.createElement('img');
              
                  img.setAttribute("id",'img'+idx);
                  img.setAttribute("src", document.getElementById('file_img'+idx).value);
                  img.setAttribute("width", "50");
                  img.setAttribute("height", "50");   
                  document.getElementById('file'+idx).appendChild(img);
                  // alert(document.getElementById('file_img'+idx).value)
					// //이미지 주소
               }   
            }
            // alert("check값:"+check)
            if(idx != 0){
               if(check == 2){
                  var img = document.createElement('img');         
                  img.setAttribute("id",'img'+idx);
                  img.setAttribute("src", document.getElementById('file_img'+idx).value);
                  img.setAttribute("width", "50");
                  img.setAttribute("height", "50");   
                  document.getElementById('file'+idx).appendChild(img);
                  //alert(document.getElementById('file_img'+idx).value) // 이미지
																
               }else if(check == 3){
                  document.getElementById('img'+idx).src = document.getElementById('file_img'+idx).value;
                  return
               }   
            }
            var file = document.all ? document
                  .createElement('<input name="files">') : document
                  .createElement('input');
            file.type = 'file';
            file.name = 'file_img'+(idx+1);
            file.size = '20';
            file.id = 'file_img' + (idx+1);
            file.onchange = function(){
               attachFile.add((idx+1));
            }
            file.multiple = 'multiple';
            
            var btn = document.createElement('input');
            btn.type = 'button';
            btn.value = '삭제';
            btn.onclick = function() {
               var isDel = confirm('삭제 하시겠습니까?')
               if(isDel && document.getElementById('file_img'+(idx+1)).value != ''){
                  attachFile.del((idx+1));
               }
            }
            btn.style.marginLeft = '5px';
            var fileCount = document.getElementById('attachFileDiv').childElementCount;
            if(fileCount >= 5){
               alert("파일은 총 5개만 등록 가능합니다.")
               return
            }
            document.getElementById('attachFileDiv').appendChild(div);   
            
            
            div.appendChild(file);
            div.appendChild(btn);
         },
         del : function(idx) { // 파일필드 삭제

            var fileCount = document.getElementById('attachFileDiv').childElementCount;
            if(fileCount == 5 && document.getElementById('file_img4').value != ''){
               document.getElementById('attachFileDiv').removeChild(document.getElementById('file' + idx));
               attachFile.delAdd(idx); 
               alert("해치웠나?")
               return
            }
            document.getElementById('attachFileDiv').removeChild(document.getElementById('file' + idx));
            //alert("삭제후 파일 갯수"+document.getElementById('attachFileDiv').childElementCount)
         },
         
         delAdd : function(idx){
            var div = document.createElement('div');
            div.style.marginTop = '3px';
            div.id = 'file' + idx;
            var file = document.all ? document
                  .createElement('<input name="files">') : document
                  .createElement('input');
            file.type = 'file';
            file.name = 'file_img'+idx;
            file.size = '20';
            file.id = 'file_img' + idx;
            file.onchange = function(){
               attachFile.add(idx);
            }
            
            
            var btn = document.createElement('input');
            btn.type = 'button';
            btn.value = '삭제';
            btn.onclick = function() {
               var isDel = confirm('삭제 하시겠습니까?')
               if(isDel && document.getElementById('file_img'+idx).value != ''){
                  attachFile.del(idx);
               }
            }
            btn.style.marginLeft = '5px';
            var fileCount = document.getElementById('attachFileDiv').childElementCount;
            if(fileCount >= 5){
               alert("파일은 총 5개만 등록 가능합니다.")
               return
            }
            document.getElementById('attachFileDiv').appendChild(div);             
            div.appendChild(file);
            div.appendChild(btn);
         }
         
         
      }