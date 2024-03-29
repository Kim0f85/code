//scroll.js

//1. <div id="bar"></div>
//2. CSS 적용
//3. 이벤트 추가 

$('<div id="scroll-bar-indicator"></div>')
    .css({
        width: 0,
        height: '7px',
        backgroundColor: 'cornflowerblue',
        position : 'fixed',
        left: 0 ,
        top: 0,
        border : 0,
        padding : 0,
        margin : 0

    }).prependTo('body');

    $(document).scroll(function(){
        // document.title = $(document).scrollTop;
        //문서의 세로길이(스크롤바의 최대 위치) : 100%
        // = 스크롤바 위치 : X 

        let x = $(document).scrollTop()*100/($(document).outerHeight() - $(window).outerHeight());
        console.log(x);

        $('#scroll-bar-indicator').css('width', x + '%');

    });