<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>hover 연습</title>
</head>
<body>
		<!-- 포스터이미지 -->
		<center>
				<div class="exhiPoster">
			      <div class="banner_img">
			        	<img width="280"  height="360" src = 'resources/image/s4.png' > 
			         <div class="hover_text">
			         	<ul>
			         		<li class="ht_title">제목제목</li>
			         		<li class="ht_location">우리집우리집</li>
			         		<li class="ht_price">만원만원만원</li>
			         	</ul>
			         </div>
		          </a>
		        </div>
		        </center> 
		         <!-- 포스터이미지 -->
</body>
</html>