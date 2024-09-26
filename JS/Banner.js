const button1 = document.querySelector('#btn1');
const button2 = document.querySelector('#btn2');
const button3 = document.querySelector('#btn3');
const button4 = document.querySelector('#btn4');

//기본 button style
button1.style.backgroundColor = 'gray';

let autoSlideInterval; //타이머 ID
const slideIntervalDuration = 3000; //슬라이드 전환 간격 (3초)
let currentIndex = 0; //현재 슬라이드 인덱스
const slides = document.querySelectorAll('.slide');
const totalSlides = slides.length; //현재 슬라이드 갯수

document.addEventListener('DOMContentLoaded', function() {
    //각 버튼 클릭 이벤트
    button1.addEventListener('click', () => handleButtonClick(0, button1));
    button2.addEventListener('click', () => handleButtonClick(1, button2));
    button3.addEventListener('click', () => handleButtonClick(2, button3));
    button4.addEventListener('click', () => handleButtonClick(3, button4));

    startAutoSlide(); //슬라이드 자동 전환 시작
});

//버튼 클릭 시 슬라이드 업데이트 및 색상 변경
function handleButtonClick(index, button) {
    currentIndex = index; //현재 인덱스
    updateSlide();
    changeButtonColor(button);
    resetAutoSlide(); //타이머 재설정
}

//슬라이드 자동 전환 함수
function startAutoSlide() {
    autoSlideInterval = setInterval(() => {
        currentIndex = (currentIndex + 1);
        
        //슬라이드 인덱스가 총 슬라이드 수를 초과하면 초기화
        if (currentIndex === totalSlides) {
            currentIndex = 0;
        }
        
        updateSlide();
        changeButtonColor(document.querySelector(`#btn${currentIndex + 1}`)); //버튼 색상 변경
        
    }, slideIntervalDuration);
}

//타이머 재설정(버튼 클릭 시)
function resetAutoSlide() {
    clearInterval(autoSlideInterval); //기존 타이머 클리어
    startAutoSlide();
}

//슬라이드 업데이트
function updateSlide() {
    const bannerContainer = document.querySelector('.slides-container');
    
    bannerContainer.style.transform = `translateX(-${currentIndex * 100}vw)`; //슬라이드 위치 이동
}

//버튼 색상 변경
function changeButtonColor(button) {
	//모든 버튼 색상 초기화
    [button1, button2, button3, button4].forEach(btn => {
        btn.style.backgroundColor = 'white';
    });

    button.style.backgroundColor = 'gray'; //선택된 버튼 색상 변경
}