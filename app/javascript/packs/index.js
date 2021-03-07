document.addEventListener('turbolinks:load', function() {
    if (document.getElementById('show') === null) {
        setTimeout(function () {
            document.getElementById('main').classList.remove('hide');
            removeFadeOut(document.getElementById('element'), 500)
        }, 2000)
    } else {
        document.getElementById('main').classList.remove('hide');
        document.getElementById('element').classList.add('hide');
    }
});


function removeFadeOut( el, speed) {
    var seconds = speed/1000;
    el.style.transition = "opacity "+seconds+"s ease";

    el.style.opacity = 0;
    setTimeout(function() {
        el.parentNode.removeChild(el);
    }, speed);
}