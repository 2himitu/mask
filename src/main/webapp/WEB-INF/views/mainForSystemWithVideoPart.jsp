<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Epidemic Guard</title>
<link href="https://fonts.googleapis.com/css2?family=Nunito&display=swap" rel="stylesheet">
</head>
<style>
body{
	background-color: #B9FFFF;
	/* background: RGBA(100,100,100,0.5) url('./images/backgroundNew.jpeg'); */
	/* background-color: RGBA(100,100,100,0.5); */
 	/* background-image: url('./images/backgroundNew.jpeg'); */
 	z-index: -50;
}
div{
	font-family: "Times New Roman", Times, serif;
}
</style>
<body>
<div>
	<jsp:include page="main/aa_loginPart.jsp" flush="true" />
	<jsp:include page="main/bb_voicePart.jsp" flush="true" />
	<jsp:include page="system/ba_videoPartForSystem.jsp" flush="true" />
	<jsp:include page="system/ca_totalGraphPartForSystem.jsp" flush="true" />
	<jsp:include page="system/cb_totalTablePartForSystem.jsp" flush="true" />
	<jsp:include page="system/da_eachpieChartPartForSystem.jsp" flush="true" />
	<jsp:include page="system/db_eachTablePartForSystem.jsp" flush="true" />
	
</div>
</body>
</html>