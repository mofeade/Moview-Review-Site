//Video Variables
var theVideo = document.querySelector("video");
var theControls = document.querySelector(".vidControls");
var currentSource = theVideo.currentSrc;//"video/Space.mp4");
var theExt = currentSource.substr(currentSource.lastIndexOf("."));
console.log(theExt);

var buttonGroup = document.querySelectorAll(".vidLoader"); 
var volUp = document.querySelector(".volUp");
var volDown = document.querySelector(".volDown");
var muteVideo = document.querySelector(".volMute");
var pPlay = document.querySelector(".pPause");


theVideo.controls = false;


//Video Functions


function playPause() {
if(theVideo.paused){
	console.log("Play");
theVideo.play();
pPlay.value = "pause";
document.querySelector("#playButton").style.background = "url('images/pause.jpg')";

}
else{
theVideo.pause();
pPlay.value - "play";
console.log("Paused");
document.querySelector("#playButton").style.background = "url('images/play.jpg')";
}
}

function videoVolUp() {
	if(theVideo.volume <= 1) {
		theVideo.volume += .2; // Volume ranges from 0 to 1
	}
}

function videoVolDown() {
		if(theVideo.volume >= 0) {
		theVideo.volume -= .2; // Volume ranges from 0 to 1
	}
}

function muteSound() {

if (theVideo.muted==true)
{theVideo.muted=false;

document.querySelector("#muteButton").style.background = "url('images/unmute.jpg')";
}
else
{theVideo.muted=true;

document.querySelector("#muteButton").style.background = "url('images/mute.jpg')";
}
}

//Video Listeners
volUp.addEventListener("click", videoVolUp, false);
volDown.addEventListener("click", videoVolDown, false);
muteVideo.addEventListener("click", muteSound, false);
pPlay.addEventListener("click", playPause, false);

