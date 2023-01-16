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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/jquery-ui.css">
<title>예약뷰페이지</title>

<style>
.checked {
  color: orange;
}
</style>
<script>
jQuery(function($){
    $.datepicker.regional["ko"] = {
        closeText: "CLOSE",
        prevText: "이전달",
        nextText: "다음달",
        currentText: "TODAY",
        monthNames: ["1월(JAN)","2월(FEB)","3월(MAR)","4월(APR)","5월(MAY)","6월(JUN)", "7월(JUL)","8월(AUG)","9월(SEP)","10월(OCT)","11월(NOV)","12월(DEC)"],
        monthNamesShort: ["1월","2월","3월","4월","5월","6월", "7월","8월","9월","10월","11월","12월"],
        dayNames: ["SUN","MON","TUE","WED","THU","FRI","SAT"],
        dayNamesShort: ["SUN","MON","TUE","WED","THU","FRI","SAT"],
        dayNamesMin: ["SUN","MON","TUE","WED","THU","FRI","SAT"],
        weekHeader: "Wk",
        dateFormat: "yy-mm-dd",
        firstDay: 0,
        isRTL: false,
        showMonthAfterYear: true,
        yearSuffix: ""
    };
	$.datepicker.setDefaults($.datepicker.regional["ko"]);
	

	
	// Today 버튼 코드 추가
	$.datepicker._gotoToday = function(id) { 
		$(id).datepicker('setDate', new Date());
		$(".ui-datepicker").hide().blur();
	};
	
});
</script>
</head>

<body>

<%@ include file="../inc/header.jsp" %>

	<div id="wrapper" class="boardWrap">
	<div class="container my-3">
	   		<div style="text-align: center">
				<h2>공연등록하기</h2>
			</div>
	   		<form action="writeOk" method="post" enctype="multipart/form-data">
	   			<input type="hidden" name="_csrf" value="66d7889b-8c0c-48ad-9f7f-54ba1d2d71e8">
	   	
		   		<div class="mb-3">
					  <label for="exampleFormControlInput1" class="form-label">공연제목</label>
					  <input type="text" class="form-control" name="stitle"  placeholder="제목을 입력해주세요" value="">
				</div>
				<div class="mb-3">
					  <label for="exampleFormControlTextarea1" class="form-label">공연장소</label>
					  <input type="text" class="form-control" name="slocation"  placeholder="장소를 입력해주세요" value="">
				</div>
			    <div class="mb-3">
					  <label for="exampleFormControlTextarea1" class="form-label">공연날짜</label>
					  <input type="text" class="form-control" name="sdday"  placeholder="장소를 입력해주세요" value="">
				</div>
				<div class="mb-3">
					  <label for="exampleFormControlTextarea1" class="form-label">공연시간</label>
					  <input type="text" class="form-control" name="stime"  placeholder="시간을 입력해주세요" value="">
				</div>
				<div class="mb-3">
					  <label for="exampleFormControlTextarea1" class="form-label">관람연령</label>
					  <input type="text" class="form-control" name="sage"  placeholder="관람연령을 입력해주세요" value="">
				</div>
				<div class="mb-3">
					  <label for="exampleFormControlTextarea1" class="form-label">가격</label>
					  <input type="text" class="form-control" name="sprice"  placeholder="가격을 입력해주세요" value="">
				</div>
				<div class="mb-3">
					  <label for="exampleFormControlTextarea1" class="form-label">공연이미지등록</label>
					  <input type="file" name="files" class="form-control"  placeholder="포스터 이미지를 등록해주세요" value="">
				</div>
				<input type="submit" value="등록하기"  class="btn btn-dark">
				<input type="text" value="취소" class="btn btn-secondary" onclick="window.open('index')" style="width:90px">
	
	   		</form>
	   </div>
		<div class="board_title" style="display:none">
		 	<h4>뮤지컬 〈물랑루즈!〉 아시아 초연 (Moulin Rouge! The Musical)</h4>
		 	<div class="star">
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star checked"></span>
				<span class="fa fa-star"></span>
				<span class="fa fa-star"></span>
				<span>9.1</span>
			</div>
		</div>
		<div class="show_detail">	
			 <div class="show_poster">
			 	<p><img id="login_title" src="${pageContext.request.contextPath}/resources/image/22014586_p.gif"></p>
				<ul class="likes">
					<li><i class="material-icons">favorite</i></li>
					<li>50</li>
					<li>좋아요</li>
				</ul>
			</div>
			<div class="pright-area">
				 <ul class="show_text">
				 	<li>장소 :장소블루스퀘어 신한카드홀</li>
				 	<li>공연기간 : 2022.12.16 ~ 2023.03.05</li>
				 	<li>공연시간 : 170분(인터미션 20분 포함)</li>
				 	<li>관람연령 : 14세 이상 관람가</li>
				 	<li>가격 : VIP석 180,000원 </li>
				 </ul>
				 <!-- 달력 -->
				<select class="form-select" aria-label="Default select example">
				  <option selected>구매할 표의 장수를 선택해주세요</option>
				  <option value="1">1</option>
				  <option value="2">2</option>
				  <option value="3">3</option>
				  <option value="4">4</option>
				  <option value="5">5</option>
				  <option value="6">6</option>
				  <option value="7">7</option>
				  <option value="8">8</option>
				  <option value="9">9</option>
				  <option value="10">10</option>
				</select>
				<i>support_agent</i>
				
				<div class="input-group mb-3">
				  <span class="input-group-text" id="basic-addon1">@</span>
				  <input type="text" class="form-control"  data-toggle="datepicker" placeholder="날짜를 선택해주세요" aria-label="Username" aria-describedby="basic-addon1">
					<script>
					$('[data-toggle="datepicker"]').datepicker();
					</script>
				</div>
					
				 
			
				 <button type="submit" class="btn btn-outline-dark" style="padding:8px 24px;font-size:20px;board:2px solid">예약하기</button>
				 <div id="datepicker"></div>
				 
			 </div>
		 </div>

	<!-- tab컨텐츠 -->
	<nav class="showview_tab clear mgt50">
	  <div class="nav nav-tabs" id="nav-tab" role="tablist">
	    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">관람후기</button>
	    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">캐스팅정보</button>
	    <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">판매정보</button>
	    <button class="nav-link" id="nav-disabled-tab" data-bs-toggle="tab" data-bs-target="#nav-disabled" type="button" role="tab" aria-controls="nav-disabled" aria-selected="false">공연정보</button>
	  </div>
	</nav>
	<div class="tab-content" id="nav-tabContent">
	  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">
		관람후기
	 </div>
	  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" tabindex="0">캐스팅정보</div>
	  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab" tabindex="0">판매정보</div>
	  <div class="tab-pane fade" id="nav-disabled" role="tabpanel" aria-labelledby="nav-disabled-tab" tabindex="0">공연정보</div>
	</div>
	</div>
	<!-- tab컨텐츠 -->
	

<%@ include file="../inc/footer.jsp" %>
</body>
</html>