// Timer code
// Set minutes
var mins = 5;
var secs = mins * 60;

var snd = new Audio("media/bells.wav");
var msc = new Audio("media/meditationsound.wav");


function countdown() {
    setTimeout('Decrement()',1000);
}
    
function Decrement() {
    if (document.getElementById) {
            minutes = document.getElementById("minutes");
            seconds = document.getElementById("seconds");

        // if less than a minute remaining
        if(secs < 10) {
            seconds.value = "0" + secs;
        }
        else if (secs < 59) {
            seconds.value = secs;
        } else {
            minutes.value = getminutes();
            if(getseconds() < 10) {
                seconds.value = "0" + getseconds()
            } else {
                seconds.value = getseconds();
            }
        }

        if(secs === 0 && mins === 0) {
            snd.play();
            msc.pause();
            return;
        }

        secs--;


        setTimeout('Decrement()',1000);
    }
}

function getminutes() {
    // minutes is seconds divided by 60, rounded down
    mins = Math.floor(secs / 60);
    return mins;
}
function getseconds() {
    // take mins remaining (as seconds) away from total seconds remaining
    return secs-Math.round(mins *60);
}

// Start Button code that starts the timer
var button = document.getElementById('start_button');
button.addEventListener('click',hidestart,false);

function hidestart() {
    document.getElementById('timer').style.display = 'block';
    countdown();
    msc.play();
    this.style.display = 'none';
}   


