<%@page import="com.dto.calDTO"%>
<%@page import="com.dto.dataDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<div class="information" style=" position: absolute; top: 145%; left: 15%; background-color:#D3F3ED; width: 70%; height: 35%; "> 

	<div style="position:absolute;left:30%; top:24%; text-align: center;">
		<h1>Be the first to know.</h1> 
		<h4>We'll inform you about new apps and deals, but no spam, we promise.</h4> 
		<form action="emailAdd" method="get">
			<input type="text" placeholder="your e-mail" name="email" id="email">
			<input type="submit" value="Subscribe" style="background-color: skyblue;">
		</form>
	</div>
	<div id="xxx" style="position:absolute;left:34%; top:93%;">
		COPYRIGHT © 2020 Epidemic Guard. ALL RIGHTS RESERVED.
		
	</div>

</div>
<script type="text/javascript">

$(document).ready(function(){
	   
		$("form").on("submit",function(event){		
			var email = $("#email").val();
				if(email.length==0){
			    	alert("email 필수")
			    	$("#email").focus();
			    	event.preventDefault();
			    }
		});
		
});
</script>

