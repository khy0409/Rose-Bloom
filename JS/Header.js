document.addEventListener('DOMContentLoaded', function() {
	    var customerService = document.querySelector('.has-submenu > a');
	    var submenu = document.querySelector('.has-submenu .submenu');
	
	    customerService.addEventListener('click', function(event) {
	        event.preventDefault(); // 기본 링크 동작을 방지
	        submenu.style.display = submenu.style.display === 'block' ? 'none' : 'block';
	    });
	});
	
	window.onload = function() {
	    var searchIcon = document.getElementById('searchIcon');
	    var searchBox = document.getElementById('searchBox');
	    var searchInput = document.getElementById('searchInput');

	    if (searchIcon && searchBox && searchInput) {
	        searchIcon.addEventListener('click', function(event) {
	            event.preventDefault(); // 기본 링크 동작 방지
	            if (searchBox.classList.contains('hidden')) {
	                searchBox.classList.remove('hidden');
	                searchBox.classList.add('visible');
	                searchInput.focus(); // 검색 입력 상자에 포커스 설정
	            } else {
	                searchBox.classList.remove('visible');
	                searchBox.classList.add('hidden');
	            }
	        });

	        searchInput.addEventListener('keypress', function(event) {
	            if (event.key === 'Enter') {
	                event.preventDefault(); // 폼의 기본 동작 방지
	                var query = searchInput.value.trim();
	                if (query.length > 0) {
	                    document.getElementById('searchForm').submit();
	                }
	            }
	        });
	    }
	};