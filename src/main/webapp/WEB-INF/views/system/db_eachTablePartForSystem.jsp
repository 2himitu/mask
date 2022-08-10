<%@page import="com.dto.calDTO"%>
<%@page import="com.dto.dataDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<div class="eachTable" style=" position: absolute; top: 118%; left: 15%; width: 70%; height: 34%; ">
	<div class="part1" style=" position: absolute; left: 0%; width: 33%; height: 100%; text-align: center !important;; ">
		 <div id="table_div1" style="position: absolute; top: 5%; left: 5%; width: 90%; height: 90%;" ></div>
	</div>
	<div class="part2" style=" position: absolute; left: 33%; width: 34%; height: 100%; text-align: center !important; ">
		  <div id="table_div2" style="position: absolute; top: 5%; left: 5%; width: 90%; height: 90%;" ></div>
	</div>
	<div class="part3" style=" position: absolute; left: 67%; width: 33%; height: 100%; text-align: center !important;">
		  <div id="table_div3" style="position: absolute; top: 5%; left: 5%; width: 90%; height: 90%;" ></div>
	</div>
	<div id="xxx" style="position:absolute;left:30%; top:95%;">
		COPYRIGHT © 2020 Epidemic Guard. ALL RIGHTS RESERVED.
	</div>
</div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">

	google.charts.load('current', {'packages':['table']});
  	google.charts.setOnLoadCallback(drawTable);
  	
  	function drawTable() {
		
//  		system 계정 그래프
		var SystemTotalNumber;
		var SystemMaskNumber;
		var SystemMissmaskNumber;
		var SystemNomaskNumber;
		
		$.ajax({
			url : 'systemTotalNumber',
			type : 'get',
			dataType : 'text',
			async:false,
			data : {
				SystemTotalNumber : SystemTotalNumber
			},
			success : function(responseData, status, xhr) {
				SystemTotalNumber = responseData;

			},
			error : function(xhr, status, error) {

			}
	    });
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
		
		var SubwayTotalNumber;
		var SubwayMaskNumber;
		var SubwayMissmaskNumber;
		var SubwayNomaskNumber;
		
		$.ajax({
			url : 'subwayTotalNumber',
			type : 'get',
			dataType : 'text',
			async:false,
			data : {
				SubwayTotalNumber : SubwayTotalNumber
			},
			success : function(responseData, status, xhr) {
				SubwayTotalNumber = responseData;

			},
			error : function(xhr, status, error) {

			}
	    });
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
		
		var CompanyTotalNumber;
		var CompanyMaskNumber;
		var CompanyMissmaskNumber;
		var CompanyNomaskNumber;
		
		$.ajax({
			url : 'companyTotalNumber',
			type : 'get',
			dataType : 'text',
			async:false,
			data : {
				CompanyTotalNumber : CompanyTotalNumber
			},
			success : function(responseData, status, xhr) {
				CompanyTotalNumber = responseData;

			},
			error : function(xhr, status, error) {

			}
	    });
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
      
        var data1 = new google.visualization.DataTable();
        data1.addColumn('string', "Today's the System");
        data1.addColumn('number', 'Number');
        
        data1.addRows([
          ['Total Number', parseInt(SystemTotalNumber)],
          ['Mask Number', parseInt(SystemMaskNumber)],  
          ['NoMask Number', parseInt(SystemNomaskNumber)],
          ['MissMask Number', parseInt(SystemMissmaskNumber)]
        ]);
        var data2 = new google.visualization.DataTable();
        data2.addColumn('string', "Today's the Subway");
        data2.addColumn('number', 'Number');
        
        data2.addRows([
          ['Total Number', parseInt(SubwayTotalNumber)],
          ['Mask Number', parseInt(SubwayMaskNumber)],  
          ['NoMask Number', parseInt(SubwayNomaskNumber)],
          ['MissMask Number', parseInt(SubwayMissmaskNumber)]
        ]);
        var data3 = new google.visualization.DataTable();
        data3.addColumn('string', "Today's the Company");
        data3.addColumn('number', 'Number');
        
        data3.addRows([
          ['Total Number', parseInt(CompanyTotalNumber)],
          ['Mask Number', parseInt(CompanyMaskNumber)],  
          ['NoMask Number', parseInt(CompanyNomaskNumber)],
          ['MissMask Number', parseInt(CompanyMissmaskNumber)]
        ]);

        var table1 = new google.visualization.Table(document.getElementById('table_div1'));
        //dataTable.setCell(22, 2, 15, 'Fifteen', {style: 'font-style:bold; font-size:22px;'});
        table1.draw(data1, {allowHtml: true, showRowNumber: false, width: '100%', height: '100%'});
        
        var table2 = new google.visualization.Table(document.getElementById('table_div2'));
        //dataTable.setCell(22, 2, 15, 'Fifteen', {style: 'font-style:bold; font-size:22px;'});
        table2.draw(data2, {allowHtml: true, showRowNumber: false, width: '100%', height: '100%'});
        
        var table3 = new google.visualization.Table(document.getElementById('table_div3'));
        //dataTable.setCell(22, 2, 15, 'Fifteen', {style: 'font-style:bold; font-size:22px;'});
        table3.draw(data3, {allowHtml: true, showRowNumber: false, width: '100%', height: '100%'});
      }
    </script>

