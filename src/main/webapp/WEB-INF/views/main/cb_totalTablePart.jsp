<%@page import="com.dto.calDTO"%>
<%@page import="com.dto.dataDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<div class="totalTable" style=" position: absolute; top:16%; left: 62%; width: 23%; height: 34%;">
	<div id="table_div" style=" position: absolute; left: 5%; top: 5%; width: 90%;  height: 90%; text-align: center !important;"></div>
</div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">

	google.charts.load('current', {'packages':['table']});
  	google.charts.setOnLoadCallback(drawTableTotal);
  	
  	function drawTableTotal() {
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
      	
		var todayTotalNumber = parseInt(TotalNumber_1st) + parseInt(TotalNumber_2nd) + parseInt(TotalNumber_3rd) + parseInt(TotalNumber_4th);
		var todayMaskNumber =  parseInt(MaskNumber_1st) + parseInt(MaskNumber_2nd) + parseInt(MaskNumber_3rd) + parseInt(MaskNumber_4th);
		var todayNoMasklNumber = parseInt(NoMaskNumber_1st) + parseInt(NoMaskNumber_2nd) + parseInt(NoMaskNumber_3rd) + parseInt(NoMaskNumber_4th);
		var todayMissMaskNumber = parseInt(MissMaskNumber_1st) + parseInt(MissMaskNumber_2nd) + parseInt(MissMaskNumber_3rd) + parseInt(MissMaskNumber_4th);
		
      
        var data = new google.visualization.DataTable();
        data.addColumn('string', "Today's Total");
        data.addColumn('number', 'Number');
        
        data.addRows([
          ['Total Number', parseInt(todayTotalNumber)],
          ['Mask Number', parseInt(todayMaskNumber)],  
          ['NoMask Number', parseInt(todayNoMasklNumber)],
          ['MissMask Number', parseInt(todayMissMaskNumber)]
        ]);
		
        var table = new google.visualization.Table(document.getElementById('table_div'));
        //dataTable.setCell(22, 2, 15, 'Fifteen', {style: 'font-style:bold; font-size:22px;'});
        table.draw(data, {allowHtml: true, showRowNumber: false, width: '100%', height: '100%'});
      }
    </script>

