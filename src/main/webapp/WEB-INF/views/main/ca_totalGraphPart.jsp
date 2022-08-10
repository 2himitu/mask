<%@page import="com.dto.calDTO"%>
<%@page import="com.dto.dataDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<div class="allPart" style=" position: absolute; top: 16%; left: 15%; background-color:pink; width: 70%; height: 102%; box-shadow: 0px 0px 20px gray; z-index: -1;"></div>
<!--Divs that will hold the charts-->
<!-- <div class="totalGraph" style=" position: absolute; top:40%; left: 15%; background-color:#A9E2C5; width: 70%; height: 35%; ">
		<div style="position: absolute; z-index: 50; width:100%; top:6%;">
			<p style="text-align: center; width:100%;">Today's Total number</p>
		</div>
	<div id="drawChart_div4" style=" position: absolute; left: 2%; top: 5%; width: 96%;  height: 90%;"></div>
</div> -->
<div class="totalGraph" style=" position: absolute; top:16%; left: 15%; width: 47%; height: 34%; ">
		<div style="position: absolute; z-index: 50; width:100%; top:6%;">
			<p style="text-align: center; width:100%; font-size: 15; font: bold;">Today's Total number</p>
		</div>
	<div id="drawChart_div4" style=" position: absolute; left: 2%; top: 5%; width: 95%;  height: 90%;"></div>
</div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">

	    google.charts.load('current', {'packages':['corechart']});
	      google.charts.setOnLoadCallback(drawChartTotal);
	      function drawChartTotal() {
	    	  
	      var TotalNumber_1st;
			var MaskNumber_1st;
			var MissMaskNumber_1st;
			var NoMaskNumber_1st;
			
			var TotalNumber_2nd;
			var MaskNumber_2nd;
			var MissMaskNumber_2nd;
			var NoMaskNumber_2nd;
			
			var TotalNumber_3rd;
			var MaskNumber_3rd;
			var MissMaskNumber_3rd;
			var NoMaskNumber_3rd;
			
			var TotalNumber_4th;
			var MaskNumber_4th;
			var MissMaskNumber_4th;
			var NoMaskNumber_4th;
			
//			1st Total Number
			$.ajax({
				url : 'TotalNumber_1st',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					TotalNumber_1st : TotalNumber_1st
				},
				success : function(responseData, status, xhr) {
					TotalNumber_1st = responseData;
				},
				error : function(xhr, status, error) {
				}
		    });
			
			$.ajax({
				url : 'MaskNumber_1st',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					MaskNumber_1st : MaskNumber_1st
				},
				success : function(responseData, status, xhr) {
					MaskNumber_1st = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			$.ajax({
				url : 'MissMaskNumber_1st',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					MissMaskNumber_1st : MissMaskNumber_1st
				},
				success : function(responseData, status, xhr) {
					MissMaskNumber_1st = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			$.ajax({
				url : 'NoMaskNumber_1st',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					NoMaskNumber_1st : NoMaskNumber_1st
				},
				success : function(responseData, status, xhr) {
					NoMaskNumber_1st = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			
//			2nd Total Number

			$.ajax({
				url : 'TotalNumber_2nd',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					TotalNumber_2nd : TotalNumber_2nd
				},
				success : function(responseData, status, xhr) {
					TotalNumber_2nd = responseData;
				},
				error : function(xhr, status, error) {
				}
		    });
			
			$.ajax({
				url : 'MaskNumber_2nd',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					MaskNumber_2nd : MaskNumber_2nd
				},
				success : function(responseData, status, xhr) {
					MaskNumber_2nd = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			$.ajax({
				url : 'MissMaskNumber_2nd',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					MissMaskNumber_2nd : MissMaskNumber_2nd
				},
				success : function(responseData, status, xhr) {
					MissMaskNumber_2nd = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			$.ajax({
				url : 'NoMaskNumber_2nd',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					NoMaskNumber_2nd : NoMaskNumber_2nd
				},
				success : function(responseData, status, xhr) {
					NoMaskNumber_2nd = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			
//			3rd Total Number

			$.ajax({
				url : 'TotalNumber_3rd',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					TotalNumber_3rd : TotalNumber_3rd
				},
				success : function(responseData, status, xhr) {
					TotalNumber_3rd = responseData;
				},
				error : function(xhr, status, error) {
				}
		    });
			
			$.ajax({
				url : 'MaskNumber_3rd',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					MaskNumber_3rd : MaskNumber_3rd
				},
				success : function(responseData, status, xhr) {
					MaskNumber_3rd = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			$.ajax({
				url : 'MissMaskNumber_3rd',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					MissMaskNumber_3rd : MissMaskNumber_3rd
				},
				success : function(responseData, status, xhr) {
					MissMaskNumber_3rd = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			$.ajax({
				url : 'NoMaskNumber_3rd',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					NoMaskNumber_3rd : NoMaskNumber_3rd
				},
				success : function(responseData, status, xhr) {
					NoMaskNumber_3rd = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			
//			4th Total Number

			$.ajax({
				url : 'TotalNumber_4th',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					TotalNumber_4th : TotalNumber_4th
				},
				success : function(responseData, status, xhr) {
					TotalNumber_4th = responseData;
				},
				error : function(xhr, status, error) {
				}
		    });
			
			$.ajax({
				url : 'MaskNumber_4th',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					MaskNumber_4th : MaskNumber_4th
				},
				success : function(responseData, status, xhr) {
					MaskNumber_4th = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			$.ajax({
				url : 'MissMaskNumber_4th',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					MissMaskNumber_4th : MissMaskNumber_4th
				},
				success : function(responseData, status, xhr) {
					MissMaskNumber_4th = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			$.ajax({
				url : 'NoMaskNumber_4th',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					NoMaskNumber_4th : NoMaskNumber_4th
				},
				success : function(responseData, status, xhr) {
					NoMaskNumber_4th = responseData;
					
				},
				error : function(xhr, status, error) {

				}
		    });
			
	      
	    	
	        var data = google.visualization.arrayToDataTable([
	          	['text', 'TotalMask','Mask', 'NoMask','MissMask'],
	          	[ '08:00~11:00', parseInt(TotalNumber_1st), parseInt(MaskNumber_1st), parseInt(NoMaskNumber_1st), parseInt(MissMaskNumber_1st) ],
				[ '11:00~14:00', parseInt(TotalNumber_2nd), parseInt(MaskNumber_2nd), parseInt(NoMaskNumber_2nd), parseInt(MissMaskNumber_2nd) ],
				[ '14:00~17:00', parseInt(TotalNumber_3rd), parseInt(MaskNumber_3rd), parseInt(NoMaskNumber_3rd), parseInt(MissMaskNumber_3rd) ],
				[ '17:00~20:00', parseInt(TotalNumber_4th), parseInt(MaskNumber_4th), parseInt(NoMaskNumber_4th), parseInt(MissMaskNumber_4th) ]

	        ]);

	        var options = {
	      		//curveType: 'function',
	      		colors: ['blue','green', 'red', 'orange'],
	      	    legend: { position: 'bottom' },
	        fontSize: 15
	        };

	        var chart = new google.visualization.LineChart(document.getElementById('drawChart_div4'));

	       	 chart.draw(data, options);
	     	}
	      
</script>

