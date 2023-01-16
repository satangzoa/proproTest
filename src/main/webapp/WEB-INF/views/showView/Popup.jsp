<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/board.css" rel="stylesheet" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://unpkg.com/bootstrap-datepicker@1.9.0/dist/js/bootstrap-datepicker.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css" integrity="sha512-rxThY3LYIfYsVCWPCW9dB0k+e3RZB39f23ylUYTEuZMDrN/vRqLdaCBo/FbvVT6uC2r0ObfPzotsfKF9Qc5W5g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/datepicker.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
  <link rel="stylesheet" href="resources/css/ind.css">
<title>예약뷰페이지</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/datepicker.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/jquery-ui.css">

</head>

<body>

<%@ include file="../inc/header.jsp" %>
<form action ="ticketingOk?snum=${param.snum}" method="post">  
   <input type="hidden" value="${showView.snum }" name="snum">
   <table width="75%" border="0" cellspacing="0" cellpadding="20">
      <tr>
         <td class="titlebox">
		
				 	
            <span class="title01">예매 페이지 원본복사</span>
         </td>
      </tr>
      <tr>
         <td>
            <center>
            <table width="80%" border="0" cellspacing="0" cellpadding="10">
               <tr class="contentbox">
                  <td class="content">
                     <center>
                     
					  <input  type="button" style="width: 100px; height: 40px;"
               class="btn btn-outline-danger"   name="liker"  font size="10px" value="♥좋아요"  >
					
                     	 
							   	  <a type="button" href="reviewlikeStar?snum=${showView.snum}"  class="btn btn-primary my-2">
			   			♥좋아요${showView.liker}<span class="badge text-bg-secondary"   name="liker" ></span>
			   			</a>  
			   			
                           
                     <table border="0" cellspacing="0" cellpadding="10">
                        <form action="reservationOk" method="post" name="reservation_frm">
                           
                           <tr>
                              <td><span class="content_text01">공연제목:</span></td>
                              <td><input class="input_type01" type="text" name="stitle" value="${showView.stitle}"></td>
                           </tr>
                           <tr>
                              <td><span class="content_text01">공연위치장소:</span></td>
                              <td><input class="input_type01" type="text" name="slocation" value="${showView.slocation}"></td>
                           </tr>
                           <tr>
                              <td><span class="content_text01">공연날짜:</span></td>
                              <td><input class="input_type01" type="text" name="sdday" value="${showView.sdday}"></td>
                           </tr>
                           <tr>
                              <td><span class="content_text01">공연시간:</span></td>
                              <td><input class="input_type01" type="text" name="stime" value="${showView.stime}"></td>
                           </tr>
                           <tr>
                              <td><span class="content_text01">관람나이:</span></td>
                              <td><input class="input_type01" type="text" name="sage" value="${showView.sage}"></td>
                           </tr>
                           <tr>
                              <td><span class="content_text01">아이디:</span></td>
                              <td><input class="input_type01" type="text" name="userid" value="${memberId}"></td>
                           </tr>
                            
                              <td><span class="content_text01">공연가격:</span></td>
                              <td><input class="input_type01" type="text" name="sprice" value="${showView.sprice}">
                         <select name="count">
                                       <!-- <option value="">${i}</option>-->
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                </select>장 &nbsp&nbsp
									 </td>
								
			 	<!-- 포스터이미지 -->
			      <c:if test="${fileDto.fileextension =='jpg' or fileDto.fileextension =='png' or fileDto.fileextension =='bmp' or fileDto.fileextension =='gif'}">
		        	<img width="300" src="${pageContext.request.contextPath}/resources/uploadfiles/${fileDto.filename}">
		         </c:if>
		         <!--// 포스터이미지 -->
				
				 
			 </div>
			 <!-- 달력 및 예약하기-->
			<div class="floatR">
				<div id="pickDate" class="mgb20"></div>
				<!--  <button onclick="window.open('ticketMain')" type="submit" class="btn btn-warning" style="width: 100%;padding:8px 24px;font-size:20px">예약하기</button>-->
			<!-- 	<button onclick="window.open('ticketMain', '_blank', 'width=500px,height=400px,toolbars=no,scrollbars=no'); return false;" type="submit" class="btn btn-warning" style="width: 100%;padding:8px 24px;font-size:20px">예약하기</button>-->
			 <input class="btn btn-warning" type="submit" value="예매하기"  > 
			</div>
 	</form>
		
  


<%@ include file="../inc/footer.jsp" %>

</body>
</html>