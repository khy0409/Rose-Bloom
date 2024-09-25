const button1 = document.querySelector('#btn1');
const button2 = document.querySelector('#btn2');
const button3 = document.querySelector('#btn3');
const button4 = document.querySelector('#btn4');

button1.style.backgroundColor = 'gray';

let autoSlideInterval; // 타이머 ID
const slideIntervalDuration = 3000; // 슬라이드 전환 간격 (3초)
let currentIndex = 0; // 현재 슬라이드 인덱스
const slides = document.querySelectorAll('.slide'); // 모든 슬라이드
const totalSlides = slides.length;

document.addEventListener('DOMContentLoaded', function() {
    console.log("DOM이 로드되었습니다."); // 확인 메시지

    // 각 버튼에 클릭 이벤트를 추가합니다.
    button1.addEventListener('click', () => {
        currentIndex = 0;
        updateSlide();
        buttonColor(button1);
        resetAutoSlide(); // 타이머 재설정
    });
    button2.addEventListener('click', () => {
        currentIndex = 1;
        updateSlide();
        buttonColor(button2);
        resetAutoSlide(); // 타이머 재설정
    });
    button3.addEventListener('click', () => {
        currentIndex = 2;
        updateSlide();
        buttonColor(button3);
        resetAutoSlide(); // 타이머 재설정
    });
    button4.addEventListener('click', () => {
        currentIndex = 3;
        updateSlide();
        buttonColor(button4);
        resetAutoSlide(); // 타이머 재설정
    });

    // 슬라이드 자동 전환 시작
    startAutoSlide();
});

// 슬라이드 자동 전환 기능
function startAutoSlide() {
    autoSlideInterval = setInterval(() => {
		
		currentIndex = (currentIndex + 1);
        if(currentIndex == totalSlides) {
			currentIndex = 0;
		}
		
        updateSlide();
        buttonColor(document.querySelector(`#btn${currentIndex + 1}`));
    }, slideIntervalDuration);
}

// 타이머 재설정
function resetAutoSlide() {
    clearInterval(autoSlideInterval); // 기존 타이머 클리어
    startAutoSlide(); // 새로운 타이머 시작
}

function updateSlide() {
    const bannerContainer = document.querySelector('.slides-container');
    bannerContainer.style.transform = `translateX(-${currentIndex * 100}vw)`;
}

function buttonColor(buttonNum) {
    [button1, button2, button3, button4].forEach(button => {
        button.style.backgroundColor = 'white';
    });

    buttonNum.style.backgroundColor = 'gray';
}
