<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" type="text/css" href="stopwatch.css">
        <link rel="stylesheet" type="text/css" href="">
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1 class="title">Stopwatch</h1>
            <h1 id="timerLabel">00:00:00</h1>
            <input type="button" value="START" class="myButton" onclick="start()" id="startBtn">
            <input type="button" value="STOP" class="myButton" onclick="stop()">
            <input type="button" value="RESET" class="myButton" onclick="reset()">
        </div>
        <script>
            var status = 0;
            var time = 0;
            timer();

            function timer() {

                setTimeout(function () {
                    time++;
                    var hr = Math.floor(time / 100 / 60);
                    var min = Math.floor(time / 100 / 60);
                    var sec = Math.floor(time / 100);
                    var mSec = time % 100;

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
        </script>
    </body>
</html>