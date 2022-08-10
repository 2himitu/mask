<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jQuery  시작 -->    
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
    	 $("#userid").on("keyup",function(){
    		 /////입력 데이터를 서버에 전송해서 중복인지 체크하고 결과 받는다.///////
    		 // http://localhost:8090/aaa/idCheck?id=깂 형식과 비슷한기능
			 $.ajax({
				 url:'idCheck',
				 type:'get',
				 data:{
					 id:$("#userid").val(),
					 pw:'1234'
				 },
				 dataType:'text',  // responseData의 데이터 타입
				 success:function(responseData,status, xhr){
					 console.log("응답:",responseData);
					 $("#result").text(responseData);
				 },
				 error:function(xhr,status,error){}
			 });	    		 
    		 
    		 ///////////
    	 });
    });
</script>
<!-- jQuery  끝 -->  

    
<form action="memberAdd" method="get">
*user id:<input type="text" name="userid" id="userid">
<span id="result"></span>
<br> 
*password:<input type="text" name="passwd" id="passwd"><br> 
password:<input type="text" name="passwd2" id="passwd2">
<span id="result2"></span>
<br> 
user name:<input type="text" name="username"><br> 
location:<input type="text" name="place"><br> 
<input type="submit" value="confirm">
<input type="button" onClick="location.href='./'" value="cancel">
</form>
