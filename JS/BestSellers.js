    //페이지 전체 load 시(reload 포함), Outer menu를 초깃값으로 설정
    document.addEventListener('DOMContentLoaded', function() {
    	var color = document.getElementById('Outer');
    	if (color) {
    	    color.style.backgroundColor = "#f4f4f4";
    	    color.style.color = "#4b3621";
    	}
    
    	scope();
	});
	
	//#scope maxWidth setting
	function scope() {
		var stars = document.getElementsByClassName('product-scope');
		
    	for (var i = 0; i < stars.length; i++) {
        	var starRating = parseFloat(stars[i].getAttribute('data-rating'));
        	//width 설정
        	stars[i].style.width = (starRating * 7.5) + '%'; 
    	}
	}
    
    
    function ChangeColor(selected) {  
    	//Menubar의 모든 요소 스타일 초기화
	    var resets = document.getElementsByClassName('BestSellers');
	    for (var i = 0; i < resets.length; i++) {
	        resets[i].style.backgroundColor = "white"; // 배경색을 흰색으로 변경
	        resets[i].style.color = "#b0afa2"; // 글자색을 변경
	    }

	    //#bestSellers load
	    var QueryString = "?selected=" + selected;
	    $.ajax({
	        url: location.href + QueryString,
	        success: function(response) {
				console.log("good");
	            //#bestSellers 영역의 html 업데이트
	            var newContent = $(response).find('#bestSellers').html();
	            $('#bestSellers').html(newContent);
	
	            scope();
	
	            //선택된 Menu 속성값 변경
	            var Selected = document.getElementById(selected);
	            if (Selected) {
	                Selected.style.backgroundColor = "#f4f4f4";
	                Selected.style.color = "#4b3621";
	            }
	        },
	        error: function() {
	            console.log('Failed to load content.');
	        }
	    });
	}