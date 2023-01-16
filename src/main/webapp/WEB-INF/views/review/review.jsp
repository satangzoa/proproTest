<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/board.js"></script>
<link rel="stylesheet" href="resources/css/ind.css">
<!--포스터  호버효과 -->
<style type="text/css">
.banner_img, .banner_bg{display:inline-block;position: relative;}
.banner_img:hover:after,
.banner_img:hover > .hover_text,
.banner_bg:hover:after,
.banner_bg:hover > .hover_text{display:block;}

.banner_bg:hover > .hover_text .ht_location{}
.banner_bg:hover > .hover_text .ht_price{}
.banner_img:after,.banner_bg:after,.hover_text{display:none;}
.banner_img:after,.banner_bg:after{
  content:'';position: absolute;top: 0;right: 0;bottom: 0;left: 0;background: rgba(0, 0, 0, 0.3);z-index: 10;}
.banner_img {overflow: hidden;}
.banner_img img{height: 340px;}
.banner_img:hover img{transform: scale(1.2);transition: 1s;}
.hover_text {position: absolute;top: 140px;left: 25px;color: #fff;z-index: 20;font-weight: 600;font-size: 20px;}
.ht_title{font-size:30px;margin-top: -80px;}
</style>
<title>리뷰다</title>
</head>
<body>
	<%@ include file="../inc/header.jsp" %>
		<center>
				<div class="exhiPoster">
			      <div class="banner_img">
			        	<img width="280"  height="360" src = 'resources/images/s1.png' > 
			         <div class="hover_text">
			         	<ul>
			         		<li class="ht_title">장씨는 내친구</li>
			         		<li class="ht_location">우리집으로 오시오</li>
			         		<li class="ht_price">공짜공짜공짜</li>
			         	</ul>
			         </div>
		          </a>
		        </div>
		       
		<table border="0" cellspacing="0" cellpadding="10">
                        <form action="reviewOk" method="post" >
                       <input type="hidden" value="${ticket.tnum }" name="tnum">
                       
           <!--             <input style="width: 124px; height: 58px;"
					class="btn btn-outline-danger" id=""  name=""  font size="10px" value="♥"  >
					
                        <a href=""  class="btn btn-primary my-2">
			   			♥<span class="badge text-bg-secondary"  text="" id="liker">4</span>
			   			</a>  -->
			   			
						
                           <tr>
                              <td><span class="content_text01">아이디:</span></td>
                              <td><input class="input_type01" type="text" name="rid" value="${memberId}"></td>
                           </tr>
                           <div name="myform" id="myform" method="post"  >
							   <fieldset>
							        <legend>별점</legend>
							        <input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
							        <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
							        <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
							        <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
							        <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
							    </div>
                              <tr>
                              <td><span class="content_text01">리뷰:</span></td>
                              <td><input class="input_type01" type="text" name="rcontent" value="${rcontent}"></td>
                           </tr>
									 
                              <td colspan="2" align="center">

                                 <input class="button_type01" type="submit" value="리뷰쓰기"  >&nbsp;&nbsp; 
                                 <input class="button_type01" type="button" value="리뷰취소" onclick="script:window.location='index'">
                              </td>
                           </tr>
                        </form>
                     </table>
	</center>
	<%@ include file="../inc/footer.jsp" %>
</body>
</html>