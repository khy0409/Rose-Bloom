//QueryString을 Post로 보내는 메서드(QueryString이 한 개 일 때)
function submitForm(url, name, value) {
    var form = document.createElement('form');
    form.method = 'POST'; //POST 설정
    form.action = url; //URL 설정

    //hidden input 생성
    var input = document.createElement('input');
    input.type = 'hidden';
    input.name = name; //QueryString name 설정
    input.value = value; //QueryString value 설정

    form.appendChild(input);

    //DOM에 추가 후 submit
    document.body.appendChild(form);
    form.submit();
}

//QueryString을 Post로 보내는 메서드(QueryString이 여러 개일 때)
function submitForms(url, names, values) {
    var form = document.createElement('form');
    form.method = 'POST'; //POST 설정
    form.action = url; //URL 설정

    //names와 values가 배열인지 확인
    if (Array.isArray(names) && Array.isArray(values) && names.length === values.length) {
        for (var i = 0; i < names.length; i++) {
            //hidden input 생성
            var input = document.createElement('input');
            input.type = 'hidden';
            input.name = names[i]; // QueryString name 설정
            input.value = values[i]; // QueryString value 설정

            form.appendChild(input);
        }
    } else { //names와 values가 배열이 아니거나 길이가 다를 경우
        console.error("names와 values의 배열 길이가 다름");
        return;
    }

    //DOM에 추가 후 submit
    document.body.appendChild(form);
    form.submit();
}

//별점에 따라 scope의 width 설정
function scope() {
	var product_scope = document.getElementsByClassName('product-scope');
	
	for (var i = 0; i < product_scope.length; i++) {
		//data-rating으로 가져온 정보를 float로 변환(소수점 가능하도록)
		var starRating = parseFloat(product_scope[i].getAttribute('data-rating')); 
       	
		//width 설정
		product_scope[i].style.width = (starRating * 7.5) + '%'; 
   	}
};