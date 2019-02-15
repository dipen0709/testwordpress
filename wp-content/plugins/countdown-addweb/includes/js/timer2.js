var status = 0;
var time = 0;
timer();

function timer() {
    setTimeout(function () {
        time++;
        var hr = Math.floor(time / 100 / 60 / 60);
        var min = Math.floor(time / 100 / 60);
        var sec = Math.floor(time / 100);
        var mSec = time % 100;
        if (hr < 10) {
            hr = "0" + hr;
        }
        if (min < 10) {
            min = "0" + min;
        }
        if (sec >= 60) {
            sec = sec % 60;
        }
        if (sec < 10) {
            sec = "0" + sec;
        }
        document.getElementById("timerLabel").innerHTML = hr + ":" + min + ":" + sec + ":" + mSec;
        timer();
    }, 10);
}