//[고객센터] 클릭 시 하위 메뉴 표시&숨김
document.addEventListener('DOMContentLoaded', function() {
    var customerService = document.querySelector('.has-submenu > a'); //has-submenu의 a 태그
    var submenu = document.querySelector('.has-submenu .submenu');
	
    customerService.addEventListener('click', function(event) {
        event.preventDefault(); //a 태그 기본 링크 동작 방지
        
        //menu가 block이라면 none으로, none이라면 block으로
        submenu.style.display = submenu.style.display === 'block' ? 'none' : 'block';
    });
});

//search method
document.addEventListener('DOMContentLoaded', function() {
	var searchIcon = document.getElementById('searchIcon');
	var searchBox = document.getElementById('searchBox');
	var searchInput = document.getElementById('searchInput');

	if (searchIcon && searchBox && searchInput) {
		toggleSearchBox();
	
		handleSearchSubmit();
	}
});

//검색창 표시&숨김
function toggleSearchBox() {
	searchIcon.addEventListener('click', function(event) {
		event.preventDefault(); //a 태그 기본 링크 동작 방지
	
		//검색창이 hidden이라면 visible로
		if (searchBox.classList.contains('hidden')) {
			searchBox.classList.remove('hidden');
			searchBox.classList.add('visible');
			searchInput.focus();
		} else { //visible이라면 hidden으로
			searchBox.classList.remove('visible');
			searchBox.classList.add('hidden');
		}
	});
}

//enter 키 입력 시 form 제출
function handleSearchSubmit() {
	searchInput.addEventListener('keypress', function(event) {
		//enter 키 입력 시
		if (event.key === 'Enter') {
			event.preventDefault(); //form 태그 기본 동작 방지
			
			var query = searchInput.value.trim(); //공백 제거
			
			if (query.length > 0) { //공백이 아닌 글자일 경우 form 제출
				document.getElementById('searchForm').submit();
			}
		}
	});
}