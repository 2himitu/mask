<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
	$(document).ready(function() {

		$("#user_login").click(function() {
			var userid = $("#userid").val();
			var passwd = $("#passwd").val();
			if (userid.length == 0) {
				alert("Please check userid")
				$("#userid").focus();
				event.preventDefault();
			} else if (passwd.length == 0) {
				alert("Please check passwd")
				$("#passwd").focus();
				event.preventDefault();
			}
		});
		$("form").on("button", function(event) {

		});
		$("#user_signup").click(function() {
			var userid = $(".userid").val();
			var passwd = $(".passwd").val();
			var passwd2 = $(".passwd2").val();
			var username = $(".username").val();
			var place = $(".place").val();
			
			if (userid.length == 0) {
				alert("Please check userid")
				$(".userid").focus();
				event.preventDefault();
			} else if (passwd.length == 0) {
				alert("Please check passwd")
				$(".passwd").focus();
				event.preventDefault();
			} else if (passwd2.length == 0) {
				alert("Please check passwd")
				$(".passwd2").focus();
				event.preventDefault();
			} else if (username.length == 0) {
				alert("Please check username")
				$(".username").focus();
				event.preventDefault();
			} else if (place.length == 0) {
				alert("Please check location")
				$(".place").focus();
				event.preventDefault();
			}
			$("form").on("button", function(event) {

			});
		});
	});
	
	
	// Get the modal
	var modal = document.getElementById('id01');

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}

	// Get the modal
	var modal = document.getElementById('id02');

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}

	//checkbox
	function goReplace(str) {
		location.replace(str);
	}
</script>


<c:if test="${! empty mesg}">
	<script type="text/javascript">
		alert("${mesg}")
	</script>
</c:if>

<script type="text/javascript">
	function abc() {
		var url = "mainForSystemWithVideoPart";
		window.open(url, "")

	};
</script>

<!-- window.close(); -->

<!-- Top menu -->
	<div >
		<div style="position: absolute; height:12%;width:100%; top:0; left:0; background-color: white; box-shadow: 0px 0px 20px gray;">
			<!-- <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()">☰</div> -->
			<c:if test="${empty login}">
				
				<a href="./" style="position:absolute; left:43%; height:100%; width:14%; background-color: red;z-index: 1;opacity:0;  "></a>
				<img src="./images/logoMain2.png" style="position:absolute; height: 100%; left:44%; ">
				
				<a href="#id02"
					onclick="document.getElementById('id02').style.display='block'"
					style="width: auto; position:absolute; top:80%; left:94%;"> &nbsp;Sign up</a>

				<a href="#id01"
					onclick="document.getElementById('id01').style.display='block'"
					style="width: auto; position:absolute; top:80%; left:90%;" >Sign in</a>

			</c:if>

			<c:if test="${ ! empty login}">
				
				<a href="./" style="position:absolute; left:43%; height:100%; width:14%; background-color: red;z-index: 1;opacity:0;  "></a>
				<img src="./images/logoMain2.png" style="position:absolute; height: 100%; left:44%;">
				
				<a href="#" onclick="abc()"> <i class="fa fa-user " style=" float : right"></i></a>
				
				<!--onclick="location.href='mainForSystemWithVideoPart'"-->
				<a href="logout" style="position:absolute; top:80%; left:94%;">logout</a>
				
			</c:if>

			<!--  	<div style="width: auto;" class="w3-center w3-padding-16">Epidemic
				Guard</div>-->

		</div>
	</div>

	<div id="id01" class="modal" style="z-index: 50;">

		<form class="modal-content animate" action="login" method="get">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id01').style.display='none'"
					class="close" title="Close Modal">&times;</span>
			</div>

			<div class="container">
				<br>
				<input type="text" name="userid" id="userid" class="form-control"
					placeholder="Id" required> 
				<input type="text" name="passwd"
					id="passwd" class="form-control" placeholder="Password" required>
				<br>

				<button id="user_login" name="user_login" value="login">Login</button>

			</div>

		</form>
	</div>

	<div id="id02" class="modal" style="z-index: 50;">
		<form class="modal-content animate" action="memberAdd" method="get">
			<div class="imgcontainer">
				<span onclick="document.getElementById('id02').style.display='none'"
					class="close" title="Close Modal">&times;</span>
				<!--  <img src="img_avatar2.png" alt="Avatar" class="avatar"> -->
			</div>

			<div class="container">
				*user id:<input type="text" name="userid" class="userid"> 
				<span id="result"></span> <br> 
				*password:<input type="text" name="passwd" class="passwd"><br> 
				password:<input type="text" name="passwd2" class="passwd2"> 
				<span id="result2"></span><br> 
				user name:<input type="text" name="username" class="username"><br>
				location:<input type="text" name="place" class="place"><br>
				<!-- <input type="submit" value="confirm"> -->
				<button type="submit" value="confirm" id="user_signup" >confirm</button>
				<!-- <button id="user_login" value="cancel">cancel</button> -->
			</div>

			<!-- <div class="container" style="background-color: #f1f1f1">


				<button id="user_login" value="cancel">cancel</button>
				      <span class="psw">Forgot <a href="#">password?</a></span>
			</div>
 -->
		</form>
	</div>
	

<style type="text/css">
 a:link { color: black; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: skyblue; text-decoration: none;}
body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
#user_login{
	background-color: skyblue;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}
#user_signup{
	background-color: skyblue;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: skyblue;
}

/* Center the image and position the close button */
.imgcontainer {
	text-align: center;
	margin: 10px 0 12px 0;
	position: relative;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 40px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 40%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}

</style>