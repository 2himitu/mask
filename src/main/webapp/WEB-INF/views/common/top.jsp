<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-bar-block .w3-bar-item {padding:20px}
</style>
<body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- Top menu -->
<c:if test="${empty login}">
<!-- Sidebar (hidden by default) -->
<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:40%;min-width:300px" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-bar-item w3-button">Close Menu</a>
  <a href="gamesList?tCategory=ps4" onclick="w3_close()" class="w3-bar-item w3-button">PS4</a>
  <a href="gamesList?tCategory=switch" onclick="w3_close()" class="w3-bar-item w3-button">Switch</a>
  <a href="loginUI" onclick="w3_close()" class="w3-bar-item w3-button">Login</a>
</nav>

<div class="w3-top">
  <div class="w3-white w3-xlarge" style="max-width:1200px;margin:auto">
    <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()">☰</div>
    <div class="w3-center w3-padding-16"><a class="a_black" href="gamesList">Game Mall</a></div>
  </div>
</div>
</c:if>
<c:if test="${ ! empty login}">
<!-- Sidebar (hidden by default) -->
<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:40%;min-width:300px" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-bar-item w3-button">Close Menu</a>
  <a href="gamesList?tCategory=ps4" onclick="w3_close()" class="w3-bar-item w3-button">PS4</a>
  <a href="gamesList?tCategory=switch" onclick="w3_close()" class="w3-bar-item w3-button">Switch</a>
  <a href="logout" onclick="w3_close()" class="w3-bar-item w3-button">Logout</a>
  <a href="mypage" onclick="w3_close()" class="w3-bar-item w3-button">Mypage</a>
  <a href="cartList" onclick="w3_close()" class="w3-bar-item w3-button">CartList</a>
</nav>

<div class="w3-top">
  <div class="w3-white w3-xlarge" style="max-width:1200px;margin:auto">
    <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()">☰</div>
    <div class="w3-right w3-padding-16">${login.username}님</a></div>
    <div class="w3-center w3-padding-16"><a class="a_black" href="gamesList">Game Mall</a></div>
  </div>
</div>
</c:if>
<!-- End page content -->
</div>
  

<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}
</script>

</body>
</html>
