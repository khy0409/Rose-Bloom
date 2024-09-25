function submitForm(url, name, value) {
    var form = document.createElement('form');
    form.method = 'POST'; //POST 설정
    form.action = url;

    // 값을 담을 hidden input 요소 생성
    var input = document.createElement('input');
    input.type = 'hidden';
    input.name = name; //QueryString name 설정
    input.value = value; //QeuryString value 설정

    form.appendChild(input);

    //DOM에 추가 후 submit
    document.body.appendChild(form);
    form.submit();
}