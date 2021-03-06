<!DOCTYPE html>
<?php
$a = get_option('wedevs_basics');
if ($a['position'] == 'tleft' || $a['position'] == 'bleft') {
    $floattype = 'left';
} else {
    $floattype = 'right';
}
?>
<style>
    .timeraddweb{
        color: #FFFFFF;
        text-height: 10px;
        width: 100px;
        display: flex;
        flex-wrap: nowrap;
        background-color: <?php echo $a['color']; ?>;
        float: <?php echo $floattype; ?>;
        padding: 5px;
        margin: 5px;
        text-align:center;
    }

</style>
<!--    <div class="editor-writing-flow" id="timer"> 
        <h1 class="timeraddweb" id="timeraddwebT"></h1>
    </div>-->
<input type="hidden" id='countdown_timer_hidden' name='countdown_timer_hidden' value=''>


<script>
    var status = 0;
    var time = 0;
    var position = '<?php echo $a['position']; ?>';
    timer();
    
    $("#hcf-1").addClass("hidden");
    
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
            if (min >= 60) {
                min = min % 60;
            }
            if (sec >= 60) {
                sec = sec % 60;
            }
            if (sec < 10) {
                sec = "0" + sec;
            }

            $(".timeraddweb").remove();
            var Time = hr + ":" + min + ":" + sec + ":" + mSec;
            var htmlT = "<div class='timeraddweb'>" + Time + "</div>";
            $("#countdown_timer_hidden").val(Time);
            //$.cookie("countdown_timer_hidden", Time);
            if (position == 'tleft' || position == 'tright') {
                $(htmlT).insertBefore(".editor-writing-flow");
            } else {
                $(htmlT).insertAfter(".editor-writing-flow");
            }

            timer();
        }, 10);
        
    }
</script>