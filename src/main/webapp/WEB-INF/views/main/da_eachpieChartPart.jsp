<%@page import="com.dto.calDTO"%>
<%@page import="com.dto.dataDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 


<!--Divs that will hold the charts-->
<div class="eachGraph" style=" position: absolute; top: 50%; left: 15%; width: 70%; height: 34%;">
	<div class="1stGraph" style=" position: absolute; left: 0%; background-color:pink; width: 33%; height: 100%; ">
		<div style="position: absolute; z-index: 50; width:100%; top:5%;">
			<p style="text-align: center; width:100%;">Today's Total number of the System</p>
		</div>
		<div id="drawChart_div" style="position: absolute; top: 5%; left: 5%; width: 90%; height: 90%;" ></div>
	</div>
	<div class="2ndGraph" style=" position: absolute; left: 33%; width: 34%; height: 100%; ">
		<div style="position: absolute; z-index: 50; width:100%; top:5%;">
			<p style="text-align: center; width:100%;">Today's Total number of the Subway</p>
		</div>
		<div id="drawChart_div2" style="position: absolute; top: 5%; left: 5%; width: 90%; height: 90%;"></div>
	</div>
	<div class="3rdGraph" style=" position: absolute; left: 67%; width: 33%; height: 100%; ">
		<div style="position: absolute; z-index: 50; width:100%; top:5%;">
			<p style="text-align: center; width:100%;">Today's Total number of the Company</p>
		</div>
		<div id="drawChart_div3" style="position: absolute; top: 5%; left: 5%; width: 90%; height: 90%;"></div>
	</div>
	
</div>

<%-- 
<c:if test="${! empty mesg}">
	<script type="text/javascript">
	  alert("${mesg}")
	</script>
</c:if> --%>

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">


		//Load the Visualization API and the piechart package.
		google.load('visualization', '1.0', {
			'packages' : [ 'corechart' ]
		});
		google.charts.load('current', {
			'packages' : [ 'bar' ]
		});
		
		// Set a callback to run when the Google Visualization API is loaded.
		google.setOnLoadCallback(drawChart);
	
		// Callback that creates and populates a data table,
		// instantiates the pie chart, passes in the data and
		// draws it.

		function drawChart() {
			
			//	system 계정 그래프
			
			var SystemMaskNumber;
			var SystemMissmaskNumber;
			var SystemNomaskNumber;
			
			$.ajax({
				url : 'systemMaskNumber',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					SystemMaskNumber : SystemMaskNumber
				},
				success : function(responseData, status, xhr) {
					//countTotanlNumber = document.getElementById('countTotanlNumber').value;
					SystemMaskNumber = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			
			$.ajax({
				url : 'systemMissmaskNumber',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					SystemMissmaskNumber : SystemMissmaskNumber
				},
				success : function(responseData, status, xhr) {
					//countTotanlNumber = document.getElementById('countTotanlNumber').value;
					SystemMissmaskNumber = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			$.ajax({
				url : 'systemNomaskNumber',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					SystemNomaskNumber : SystemNomaskNumber
				},
				success : function(responseData, status, xhr) {
					//countTotanlNumber = document.getElementById('countTotanlNumber').value;
					SystemNomaskNumber = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			//	subway 계정 그래프
			
			var SubwayMaskNumber;
			var SubwayMissmaskNumber;
			var SubwayNomaskNumber;
			
			$.ajax({
				url : 'subwayMaskNumber',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					SubwayMaskNumber : SubwayMaskNumber
				},
				success : function(responseData, status, xhr) {
					SubwayMaskNumber = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			
			$.ajax({
				url : 'subwayMissmaskNumber',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					SubwayMissmaskNumber : SubwayMissmaskNumber
				},
				success : function(responseData, status, xhr) {
					SubwayMissmaskNumber = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			$.ajax({
				url : 'subwayNomaskNumber',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					SubwayNomaskNumber : SubwayNomaskNumber
				},
				success : function(responseData, status, xhr) {
					SubwayNomaskNumber = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			//	company 계정 그래프
			
			var CompanyMaskNumber;
			var CompanyMissmaskNumber;
			var CompanyNomaskNumber;
			
			$.ajax({
				url : 'companyMaskNumber',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					CompanyMaskNumber : CompanyMaskNumber
				},
				success : function(responseData, status, xhr) {
					CompanyMaskNumber = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			
			$.ajax({
				url : 'companyMissmaskNumber',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					CompanyMissmaskNumber : CompanyMissmaskNumber
				},
				success : function(responseData, status, xhr) {
					CompanyMissmaskNumber = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			$.ajax({
				url : 'companyNomaskNumber',
				type : 'get',
				dataType : 'text',
				async:false,
				data : {
					CompanyNomaskNumber : CompanyNomaskNumber
				},
				success : function(responseData, status, xhr) {
					CompanyNomaskNumber = responseData;

				},
				error : function(xhr, status, error) {

				}
		    });
			var countSystemMaskNumber = SystemMaskNumber;
			var countSystemMissmaskNumber = SystemMissmaskNumber;			
			var countSystemNomaskNumber = SystemNomaskNumber;

			var countSubwayMaskNumber = SubwayMaskNumber;
			var countSubwayMissmaskNumber = SubwayMissmaskNumber;			
			var countSubwayNomaskNumber = SubwayNomaskNumber;
			
			var countCompanyMaskNumber = CompanyMaskNumber;
			var countCompanyMissmaskNumber = CompanyMissmaskNumber;			
			var countCompanyNomaskNumber = CompanyNomaskNumber;
			
			var data = new google.visualization.DataTable();
			data.addColumn('string', 'Topping');
			data.addColumn('number', 'Slices');
			data.addRows([ [ 'mask', parseInt(countSystemMaskNumber) ], 
						   [ 'no mask', parseInt(countSystemNomaskNumber) ], 
						   [ 'miss mask', parseInt(countSystemMissmaskNumber) ]]);
	
			var data2 = new google.visualization.DataTable();
			data2.addColumn('string', 'Topping');
			data2.addColumn('number', 'Slices');
			data2.addRows([ [ 'mask', parseInt(countSubwayMaskNumber) ], 
				   	 		[ 'no mask', parseInt(countSubwayNomaskNumber) ], 
				   	 		[ 'miss mask', parseInt(countSubwayMissmaskNumber) ]]); 
	
			var data3 = new google.visualization.DataTable();
			data3.addColumn('string', 'Topping');
			data3.addColumn('number', 'Slices');
			data3.addRows([ [ 'mask', parseInt(countCompanyMaskNumber) ], 
							[ 'no mask', parseInt(countCompanyNomaskNumber) ], 
							[ 'miss mask', parseInt(countCompanyMissmaskNumber) ]]); 
	
			var options = {
				
				legend: 'none',
				
		        colors: ['green', 'red', 'orange'],
				is3D: true,
				chartArea: {left:'5%',top:'10%',width:'90%',height:'90%'},
				fontSize: 15
				
			
			};
	
			var options2 = {
				
				legend: 'none',
		        colors: ['green', 'red', 'orange'],
				is3D: true,
				chartArea: {left:'5%',top:'10%',width:'90%',height:'90%'},
				fontSize: 15
			};
	
			var options3 = {
				legend: 'none',
		        colors: ['green', 'red', 'orange'],
				is3D: true,
				chartArea: {left:'5%',top:'10%',width:'90%',height:'90%'},
				fontSize: 15
			};
			
			var chart = new google.visualization.PieChart(document.getElementById('drawChart_div'));
			chart.draw(data, options);
			var chart2 = new google.visualization.PieChart(document.getElementById('drawChart_div2'));
			chart2.draw(data2, options2);
			var chart3 = new google.visualization.PieChart(document.getElementById('drawChart_div3'));
			chart3.draw(data3, options3);
			
		}
		
</script>

