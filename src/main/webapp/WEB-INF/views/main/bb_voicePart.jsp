<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<audio id="voice1">
	<source src="./voice/JpFaceWarning.m4a" type="audio/mpeg">
</audio>
<audio id="voice2">
	<source src="./voice/JpMissMaskWarning.m4a" type="audio/mpeg">
</audio>
<audio id="voice3">
	<source src="./voice/KorFaceWarning.m4a" type="audio/mpeg">
</audio>
<audio id="voice4">
	<source src="./voice/KorMissMaskWarning.m4a" type="audio/mpeg">
</audio>

<script type="text/javascript">
var voice1 = document.getElementById("voice1");
var voice2 = document.getElementById("voice2");
var voice3 = document.getElementById("voice3");
var voice4 = document.getElementById("voice4");
function playVoice1() {
   voice1.play();
}
function playVoice2() {
   voice2.play();
}
function playVoice3() {
   
   voice3.play();
   
}
function playVoice4() {
   voice4.play();
}

</script>