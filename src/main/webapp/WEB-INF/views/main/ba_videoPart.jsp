<%@page import="com.dto.calDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 
<div class="login" style=" position: absolute; left: 15%; background-color:red; width: 70%; height: 5%; "> test</div>
<div class="video" style=" position: absolute; top: 5%; left: 15%; background-color:blue; width: 35%; height: 35%; "> test</div>
<div class="explain" style=" position: absolute; top: 5%; left: 50%; background-color:yellow; width: 35%; height: 35%; "> test</div>
<div class="totalGraph" style=" position: absolute; top:40%; left: 15%; background-color:purple; width: 70%; height: 35%; "> test</div>
<div class="eachGraph" style=" position: absolute; top: 75%; left: 15%; background-color:green; width: 70%; height: 35%; "> test</div>
<div class="information" style=" position: absolute; top: 110%; left: 15%; background-color:orange; width: 70%; height: 35%; "> test</div> 
-->
<style>
#StartButton:hover{
opacity: 0.8;
}
</style>
<div class="allPart" style=" position: absolute; top: 16%; left: 15%; background-color:pink; width: 70%; height: 102%; box-shadow: 0px 0px 20px gray;">
	<div style=" position: absolute; top:0; width: 100%; height: 50%;">
		<div style="position: absolute; left:6%; top: 5%;">
			<p style="font-size: 40px; font-weight: bold; margin-bottom: 25px;">Epidemic Guard</p>
			<p style="font-size: 20px; margin:10px; margin-bottom: 0;">Gain the data which includes the proportion of people
			<p style="font-size: 20px; margin:10px; margin-bottom: 0;">who use a MASK correctly, incorrectly or not used.</p><br>
			<p style="font-size: 20px; margin:10px; margin-bottom: 0;">Save the people who enter in your place</p>
		</div>
		<video muted autoplay loop style="position: absolute; top: 16%; left: 65%; width: 350px; heigth:350px; box-shadow: 0px 0px 20px gray;">
  	   	 	<source src="video/mainVideo11.mp4" type="video/mp4">
  		</video>
	</div>
	<div style=" position: absolute; top:50%; width: 100%; height: 50%;"> 
		<div style="position: absolute; left:6%; top: 10%;">
			<p style="font-size: 40px; font-weight: bold; margin-bottom: 25px;">What is Epidemic Guard?</p>
			<p style="font-size: 20px; margin:10px; margin-bottom: 0;">Epidemic Guard is a web-site tool that gains data which includes</p>
			<p style="font-size: 20px; margin:10px; margin-bottom: 0;">the proportion of people who used a MASK correctly, incorrectly or not used.</p>
			<p style="font-size: 20px; margin:10px; margin-bottom: 0;">Also, it shows data through the graphs and tables in real-time.</p>
		</div>
		<video muted autoplay loop style="position: absolute; top: 16%; left: 65%; width: 350px; height: 288px; box-shadow: 0px 0px 20px gray;">
  	   	 	<source src="video/mainVideo22.mp4" type="video/mp4">
  		</video>
	</div>
	<!-- <button type="button" onclick="init()" style=' position:absolute; left:30%; top: 30%; height:40%; width:40%; background-color:blue;'>Start</button> -->
	
	<c:if test="${empty login}">
		<div style="position:absolute; left:7%; top: 29%; height:60px; width:180px; box-shadow: 0px 0px 10px gray; border-radius: 10px;">
			<input type="button" id="StartButton" onclick="document.getElementById('id01').style.display='block'" value="Get started" 
				   style="position: absolute; background-color:skyblue; height:100%; width:100%; border: none; color:white; z-index: 1; font-size: 18px; border-radius: 10px;">
		</div>	
		<div style="position:absolute; left:7%; top: 79%; height:60px; width:180px; box-shadow: 0px 0px 10px gray; border-radius: 10px;">
			<input type="button" id="StartButton" onclick="document.getElementById('id01').style.display='block'" value="Get started" 
				   style="position: absolute; background-color:skyblue; height:100%; width:100%; border: none; color:white; z-index: 1; font-size: 18px; border-radius: 10px;">
		</div>	
																		 
	</c:if>
	<c:if test="${!empty login}">
		<div style="position:absolute; left:7%; top: 29%; height:60px; width:180px; box-shadow: 0px 0px 10px gray; border-radius: 10px;">
			<input type="button" id="StartButton" onclick="init()" value="Get started" 
				   style="position: absolute; background-color:skyblue; height:100%; width:100%; border: none; color:white; z-index: 2; font-size: 18px; border-radius: 10px; !important">
		</div>	
		<div style="position:absolute; left:7%; top: 79%; height:60px; width:180px; box-shadow: 0px 0px 10px gray; border-radius: 10px;">
			<input type="button" id="StartButton" onclick="init()" value="Get started" 
				   style="position: absolute; background-color:skyblue; height:100%; width:100%; border: none; color:white; z-index: 2; font-size: 18px; border-radius: 10px;">
		</div>	
		
		<!-- <button type="button" onclick="init()">Start</button> -->
		<!-- <button type="button" onclick="location.reload()">Terminate</button> -->
		
	</c:if>
	<div id="webcam-container" style="position: absolute; height: 1%; width:1%; left:18%; top:11%; z-index: 3"></div>
	<div id="label-container" style="position: absolute; height: 1%; width:1%; left:5%; top:5%; z-index: 2"></div>
	<div id="xxx" style="position:absolute;left:30%; top:98%;">
		COPYRIGHT © 2020 Epidemic Guard. ALL RIGHTS RESERVED.
	</div>
</div>
	

<script src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@teachablemachine/image@0.8/dist/teachablemachine-image.min.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	
	// More API functions here:
	// https://github.com/googlecreativelab/teachablemachine-community/tree/master/libraries/image

	// the link to your model provided by Teachable Machine export panel
	const URL = "https://teachablemachine.withgoogle.com/models/2uT3m8E8P/";

	let model, webcam, labelContainer, maxPredictions;

	// Load the image model and setup the webcam
	async function init() {

		const modelURL = URL + "model.json";
		const metadataURL = URL + "metadata.json";

		// load the model and metadata
		// Refer to tmImage.loadFromFiles() in the API to support files from a file picker
		// or files from your local hard drive
		// Note: the pose library adds "tmImage" object to your window (window.tmImage)
		model = await
		tmImage.load(modelURL, metadataURL);
		maxPredictions = model.getTotalClasses();

		// Convenience function to setup a webcam
		const flip = true; // whether to flip the webcam
		webcam = new tmImage.Webcam(800, 800, flip); // width, height, flip
		await
		webcam.setup(); // request access to the webcam
		await
		webcam.play();
		window.requestAnimationFrame(loop);

		// append elements to the DOM
		document.getElementById("webcam-container").appendChild(webcam.canvas);
		labelContainer = document.getElementById("label-container");
		for (let i = 0; i < maxPredictions; i++) { // and class labels
			labelContainer.appendChild(document.createElement("div"));
		}
		//setTimeout(function(){location.reload()},10000);
	}

	async function loop() {
		webcam.update(); // update the webcam frame
		await
		predict();
		window.requestAnimationFrame(loop);
		/* drawChartTotal();
		drawTableTotal();
		drawChart();
		drawTable(); */
	}

	var maN = 0;
	var msN = 0;
	var noN = 0;

	 function plus() {
		var totalNumber = 1;
		var maskNumber = 0;
		var missmaskNumber = 0;
		var nomaskNumber = 0;
		
		if(maN >= 100){
			maskNumber += 1;
		} else if(noN >= 100){
			nomaskNumber += 1;
		} else if(msN >= 100){
			missmaskNumber += 1;
		}
		
	    console.log("totalNumber = " + totalNumber);
		console.log("maskNumber = " + maskNumber);
		console.log("missmaskNumber = " + missmaskNumber);
		console.log("nomaskNumber = " + nomaskNumber);
		console.log("=================== ");
		
	    return $.ajax({
			url : 'plus',
			type : 'get',
			dataType : 'text',
			data : {
				totalNumber : totalNumber,
				maskNumber : maskNumber,
				missmaskNumber : missmaskNumber,
				nomaskNumber : nomaskNumber
			},
			success : function(data, status, xhr) {
				totalNumber = totalNumber;
				console.log(totalNumber);
				maskNumber = maskNumber;
				missmaskNumber = missmaskNumber;
				nomaskNumber = nomaskNumber;
			},
			error : function(xhr, status, error) {
				
			}
	    });

		
	}

	// run the webcam image through the image model
	async function predict() {
		// predict can take in an image, video or canvas html element
		const prediction = await
		model.predict(webcam.canvas);
		for (let i = 0; i < maxPredictions; i++) {		//green
			if (i < 9 && 0.95 < prediction[i].probability.toFixed(2)) {
				labelContainer.childNodes[0].innerHTML ="<div style='position:absolute; height: 930px; width:1130px; left:15%; top:7%; background-color:pink;'><div style='position:absolute; height: 880px; width:885px; left:117px; top:20px; background-color:green; box-shadow: 0px 0px 20px gray;'><div/>";
				//document.getElementById("td1").childNodes[1].innerHTML
				maN = maN + 1;
				console.log(maN);
				msN = 0;
				noN = 0;
				if (maN >= 100) {
					//DB에  값증가하는 function 들어갈 자리
					plus();
					maN = 0;
				}
				
			} else if (9 <= i && i < 12 && 0.95 < prediction[i].probability.toFixed(2)) {	//red
				labelContainer.childNodes[0].innerHTML = "<div style='position:absolute; height: 930px; width:1130px; left:15%; top:7%; background-color:pink;'><div style='position:absolute; height: 880px; width:885px; left:117px; top:20px; background-color:red; box-shadow: 0px 0px 20px gray;'><div/>";
				noN = noN + 1;
				maN = 0;
				msN = 0;
				if (noN >= 100) {
					playVoice3();
					//DB에  값증가하는 function 들어갈 자리
					plus();
					
					noN = 0;
				}

			} else if (12 <= i && i < 15 && 0.95 < prediction[i].probability.toFixed(2)) {		//yellow
				labelContainer.childNodes[0].innerHTML = "<div style='position:absolute; height: 930px; width:1130px; left:15%; top:7%; background-color:pink;'><div style='position:absolute; height: 880px; width:885px; left:117px; top:20px; background-color:yellow; box-shadow: 0px 0px 20px gray;'><div/>";
				msN = msN + 1;
				noN = 0;
				maN = 0;
				if (msN >= 100) {
					playVoice4();
					plus();
					msN = 0;
					//DB에  값증가하는 function 들어갈 자리

				}
			} else if (i >= 15 && 0.95 < prediction[i].probability.toFixed(2)) {		//white
				labelContainer.childNodes[0].innerHTML = "<div style='position:absolute; height: 930px; width:1130px; left:15%; top:7%; background-color:pink;'><div style='position:absolute; height: 880px; width:885px; left:117px; top:20px; background-color:white; box-shadow: 0px 0px 20px gray;'><div/>";
				maN = 0;
				noN = 0;
				msN = 0;
			}
		}
	}
</script>