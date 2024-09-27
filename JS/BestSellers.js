//Outer를 초깃값으로 설정
document.addEventListener('DOMContentLoaded', function() {
	var color = document.getElementById('Outer');
	
	if (color) {
		color.style.backgroundColor = "#f4f4f4";
		color.style.color = "#4b3621";
	}
   
	scope(); //별점 load
});
	

   
   
function loadBestSeller(selected) {  
	var resets = document.getElementsByClassName('menu-option');
    
	//menu-bar의 모든 요소 초기화
	for (var i = 0; i < resets.length; i++) {
		resets[i].style.backgroundColor = "white";
		resets[i].style.color = "#b0afa2";
    }

	//best-seller 업데이트
	loadBestItem(selected);
}

function loadBestItem(selected) {
	var QueryString = "?selected=" + selected;
	$.ajax({
		url: location.href + QueryString,
		success: function(response) {
			//.best-sellers 영역의 html 업데이트
			var newContent = $(response).find('.best-sellers').html();
			$('.best-sellers').html(newContent);
	
			scope(); //별점 load
	
			//선택된 menu 스타일 변경
			var selectedMenu = document.getElementById(selected);
			if (selectedMenu) {
				selectedMenu.style.backgroundColor = "#f4f4f4";
				selectedMenu.style.color = "#4b3621";
			}
		},
		error: function() {
			console.log('BestSellers.js : Failed to load content.'); //Error 메시지 출력
        }
    });
}